; Term Utilities
;
; Copyright (C) 2016 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)
; Contributor: Matt Kaufmann (kaufmann@cs.utexas.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; This file contains utilities for ACL2 terms.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "kestrel/system/world-queries" :dir :system)
(include-book "std/util/defines" :dir :system)

(local (set-default-parents term-utilities))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc term-utilities
  :parents (kestrel-utilities system-utilities)
  :short "Utilities related to @(see term)s.")

(define pseudo-lambda-expr-p (x)
  :returns (yes/no booleanp)
  :short
  "True iff @('x') satisfies the conditions of lambda expressions
  in <see topic='@(url pseudo-termp)'>pseudo-terms</see>."
  :long
  "<p>
  Check whether @('x') is
  a @('nil')-terminated list of exactly three elements,
  whose first element is the symbol @('lambda'),
  whose second element is a list of symbols, and
  whose third element is a pseudo-term.
  </p>"
  (and (true-listp x)
       (eql (len x) 3)
       (eq (first x) 'lambda)
       (symbol-listp (second x))
       (pseudo-termp (third x))))

(define lambda-expr-closedp ((lambd pseudo-lambda-expr-p))
  :returns (yes/no booleanp)
  :verify-guards nil
  :short
  "True iff the lambda expression is closed, i.e. it has no free variables."
  (subsetp-eq (all-vars (lambda-body lambd))
              (lambda-formals lambd)))

(define pseudo-functionp (x)
  :returns (yes/no booleanp)
  :short
  "True iff @('x') satisfies the conditions of functions
  in <see topic='@(url pseudo-termp)'>pseudo-terms</see>."
  :long
  "<p>
  Check whether @('x') is a symbol or a
  <see topic='@(url pseudo-lambda-expr-p)'>pseudo-lambda-expression</see>.
  These are the possible values of the first element of
  a pseudo-term that is not a variable or a quoted constant
  (i.e. a pseudo-term that is a function application).
  </p>"
  (or (symbolp x)
      (pseudo-lambda-expr-p x)))

(define apply-term ((fn pseudo-functionp) (terms pseudo-term-listp))
  :guard (or (symbolp fn)
             (eql (len terms)
                  (len (lambda-formals fn))))
  ;; :returns (term pseudo-termp)
  :guard-hints (("Goal" :in-theory (enable pseudo-functionp
                                           pseudo-lambda-expr-p)))
  :short
  "Apply <see topic='@(url pseudo-functionp)'>pseudo-function</see>
  to list of <see topic='@(url pseudo-termp)'>pseudo-terms</see>,
  obtaining a pseudo-term."
  :long
  "<p>
  If the pseudo-function is a lambda expression,
  a beta reduction is performed.
  </p>"
  (cond ((symbolp fn) (cons-term fn terms))
        (t (subcor-var (lambda-formals fn) terms (lambda-body fn)))))

(defsection apply-term*
  :short
  "Apply <see topic='@(url pseudo-functionp)'>pseudo-function</see>
  to <see topic='@(url pseudo-termp)'>pseudo-terms</see>,
  obtaining a pseudo-term."
  :long
  "<p>
  If the pseudo-function is a lambda expression,
  a beta reduction is performed.
  </p>
  @(def apply-term*)"
  (defmacro apply-term* (fn &rest terms)
    `(apply-term ,fn (list ,@terms))))

(define apply-unary-to-terms ((fn pseudo-functionp) (terms pseudo-term-listp))
  ;; :returns (applied-terms pseudo-term-listp)
  :verify-guards nil
  :short
  "Apply @('fn'), as a unary function, to each of @('terms'),
  obtaining a list of corresponding terms."
  (if (endp terms)
      nil
    (cons (apply-term* fn (car terms))
          (apply-unary-to-terms fn (cdr terms)))))

(defines term/terms-logicp
  :short "True iff term/terms is/are in logic mode."

  (define term-logicp ((term pseudo-termp) (wrld plist-worldp))
    :returns (yes/no booleanp)
    :parents (term/terms-logicp)
    :short
    "True iff the term is in logic mode,
    i.e. all its functions are in logic mode."
    (or (variablep term)
        (fquotep term)
        (and (terms-logicp (fargs term) wrld)
             (let ((fn (ffn-symb term)))
               (if (symbolp fn)
                   (logicp fn wrld)
                 (term-logicp (lambda-body fn) wrld))))))

  (define terms-logicp ((terms pseudo-term-listp) (wrld plist-worldp))
    :returns (yes/no booleanp)
    :parents (term/terms-logicp)
    :short "True iff all the terms are in logic mode."
    (or (endp terms)
        (and (term-logicp (car terms) wrld)
             (terms-logicp (cdr terms) wrld)))))

(define lambda-expr-logicp ((lambd pseudo-lambda-expr-p) (wrld plist-worldp))
  :returns (yes/no booleanp)
  :guard-hints (("Goal" :in-theory (enable pseudo-lambda-expr-p)))
  :short
  "True iff the lambda expression is in logic mode,
  i.e. its body is in logic mode."
  (term-logicp (lambda-body lambd) wrld))

(defines term/terms-no-stobjs-p
  :prepwork ((program))
  :short "True iff term/terms has/have no stobjs."
  :flag nil

  (define term-no-stobjs-p ((term pseudo-termp) (wrld plist-worldp))
    :returns (yes/no booleanp)
    :parents (term/terms-no-stobjs-p)
    :short
    "True iff the term has no stobjs,
    i.e. all its functions have no stobjs."
    :long
    "<p>
    A term containing functions in @('*stobjs-out-invalid*')
    (on which @(tsee no-stobjs-p) would cause a guard violation),
    is regarded as having no stobjs,
    if all its other functions have no stobjs.
    </p>"
    (or (variablep term)
        (fquotep term)
        (and (terms-no-stobjs-p (fargs term) wrld)
             (let ((fn (ffn-symb term)))
               (if (symbolp fn)
                   (or (member fn *stobjs-out-invalid*)
                       (no-stobjs-p fn wrld))
                 (term-no-stobjs-p (lambda-body fn) wrld))))))

  (define terms-no-stobjs-p ((terms pseudo-term-listp) (wrld plist-worldp))
    :returns (yes/no booleanp)
    :parents (term/terms-no-stobjs-p)
    :short "True iff all the terms have no stobjs."
    (or (endp terms)
        (and (term-no-stobjs-p (car terms) wrld)
             (terms-no-stobjs-p (cdr terms) wrld)))))

(define lambda-expr-no-stobjs-p
  ((lambd pseudo-lambda-expr-p) (wrld plist-worldp))
  :returns (yes/no booleanp)
  :prepwork ((program))
  :short
  "True iff the lambda expression has no stobjs,
  i.e. its body has no stobjs."
  (term-no-stobjs-p (lambda-body lambd) wrld))

(defines term/terms-fns-guard-verified-p
  :short "True iff term/terms is/are guard-verified."
  :verify-guards nil

  (define term-fns-guard-verified-p ((term pseudo-termp) (wrld plist-worldp))
    :returns (yes/no booleanp)
    :parents (term/terms-fns-guard-verified-p)
    :short "True iff all the functions in the term are guard-verified."
    :long
    "<p>
    Note that if @('term') includes @(tsee mbe),
    @('nil') is returned
    if any function inside the @(':logic') component of @(tsee mbe)
    is not guard-verified,
    even when @('term') could otherwise be fully guard-verified.
    </p>"
    (or (variablep term)
        (fquotep term)
        (and (terms-fns-guard-verified-p (fargs term) wrld)
             (let ((fn (ffn-symb term)))
               (if (symbolp fn)
                   (guard-verified-p fn wrld)
                 (term-fns-guard-verified-p (lambda-body fn) wrld))))))

  (define terms-fns-guard-verified-p ((terms pseudo-term-listp)
                                       (wrld plist-worldp))
    :returns (yes/no booleanp)
    :parents (term/terms-fns-guard-verified-p)
    :short "True iff all the functions in the terms are guard-verified."
    (or (endp terms)
        (and (term-fns-guard-verified-p (car terms) wrld)
             (terms-fns-guard-verified-p (cdr terms) wrld)))))

(define lambda-expr-fns-guard-verified-p ((lambd pseudo-lambda-expr-p)
                                           (wrld plist-worldp))
  :returns (yes/no booleanp)
  :verify-guards nil
  :short
  "True iff all the functions in the lambda expression is guard-verified."
  (term-fns-guard-verified-p (lambda-body lambd) wrld))

(define lambda-expr-p (x (wrld plist-worldp))
  :returns (yes/no booleanp)
  :verify-guards nil
  :short
  "True iff @('x') is a valid translated lambda expression."
  :long
  "<p>
  Check whether @('x') is a @('nil')-terminated list of exactly three elements,
  whose first element is the symbol @('lambda'),
  whose second element is a list of legal variable symbols without duplicates,
  and whose third element is a valid translated term
  whose free variables are all among the ones in the second element.
  </p>"
  (and (true-listp x)
       (eql (len x) 3)
       (eq (first x) 'lambda)
       (arglistp (second x))
       (termp (third x) wrld)
       (subsetp-eq (all-vars (third x))
                   (second x))))

(define check-user-term (x (wrld plist-worldp))
  :returns (mv (term/message (or (pseudo-termp term/message)
                                 (msgp term/message)))
               (stobjs-out symbol-listp))
  :prepwork ((program))
  :short
  "Check whether @('x') is an untranslated term that is valid for evaluation."
  :long
  "<p>
  An untranslated @(see term) is a term as entered by the user.
  This function checks @('x') by attempting to translate it.
  If the translation succeeds, the translated term is returned,
  along with the output @(see stobj)s of the term (see below for details).
  Otherwise, a structured error message is returned (printable with @('~@')),
  along with @('nil') as output stobjs.
  These two possible outcomes can be distinguished by the fact that
  the former yields a <see topic='@(url pseudo-termp)'>pseudo-term</see>
  while the latter does not.
  </p>
  <p>
  The &lsquo;output stobjs&rsquo; of a term are the analogous
  of the @(tsee stobjs-out) property of a function,
  namely a list of symbols that is like a &ldquo;mask&rdquo; for the result.
  A @('nil') in the list means that
  the corresponding result is a non-stobj value,
  while the name of a stobj in the list means that
  the corresponding result is the named stobj.
  The list is a singleton, unless the term returns
  <see topic='@(url mv)'>multiple values</see>.
  </p>
  <p>
  The @(':stobjs-out') and @('((:stobjs-out . :stobjs-out))') arguments
  passed to @('translate1-cmp') as bindings
  mean that the term is checked to be valid for evaluation.
  This is stricter than checking the term to be valid for use in a theorem,
  and weaker than checking the term to be valid
  for use in the body of an executable function;
  these different checks are performed by passing different values
  to the second and third arguments of @('translate1-cmp')
  (see the ACL2 source code for details).
  However, for terms whose functions are all in logic mode,
  validity for evaluation and validity for executable function bodies
  should coincide.
  </p>
  <p>
  If @('translate1-cmp') is successful,
  it returns updated bindings that associate @(':stobjs-out')
  to the output stobjs of the term.
  </p>
  <p>
  The @(tsee check-user-term) function does not terminate
  if the translation expands an ill-behaved macro that does not terminate.
  </p>"
  (mv-let (ctx term/message bindings)
    (translate1-cmp x
                    :stobjs-out
                    '((:stobjs-out . :stobjs-out))
                    t
                    __function__
                    wrld
                    (default-state-vars nil))
    (declare (ignore ctx))
    (if (pseudo-termp term/message)
        (mv term/message
            (cdr (assoc :stobjs-out bindings)))
      (mv term/message nil))))

(define check-user-lambda-expr (x (wrld plist-worldp))
  :returns (mv (lambd/message (or (pseudo-lambda-expr-p lambd/message)
                                  (msgp lambd/message)))
               (stobjs-out symbol-listp))
  :prepwork ((program))
  :short
  "Check whether @('x') is
  an untranslated lambda expression that is valid for evaluation."
  :long
  "<p>
  An untranslated @(see lambda) expression is
  a lambda expression as entered by the user.
  This function checks whether @('x')is
  a @('nil')-terminated list of exactly three elements,
  whose first element is the symbol @('lambda'),
  whose second element is a list of legal variable symbols without duplicates,
  and whose third element is an untranslated term that is valid for evaluation.
  </p>
  <p>
  If the check succeeds, the translated lambda expression is returned,
  along with the output @(see stobj)s of the body of the lambda expression
  (see @(tsee check-user-term) for an explanation
  of the output stobjs of a term).
  Otherwise, a possibly structured error message is returned
  (printable with @('~@')),
  along with @('nil') as output stobjs.
  </p>
  <p>
  The @(tsee check-user-lambda-expr) function does not terminate
  if @(tsee check-user-term) does not terminate.
  </p>"
  (b* (((unless (true-listp x))
        (mv `("~x0 is not a NIL-terminated list." (#\0 . ,x))
            nil))
       ((unless (eql (len x) 3))
        (mv `("~x0 does not consist of exactly three elements." (#\0 . ,x))
            nil))
       ((unless (eq (first x) 'lambda))
        (mv `("~x0 does not start with LAMBDA." (#\0 . ,x))
            nil))
       ((unless (arglistp (second x)))
        (mv `("~x0 does not have valid formal parameters." (#\0 . ,x))
            nil))
       ((mv term/message stobjs-out) (check-user-term (third x) wrld))
       ((when (msgp term/message)) (mv term/message nil)))
    (mv `(lambda ,(second x) ,term/message) stobjs-out)))

(define trans-macro ((mac (macro-namep mac wrld)) (wrld plist-worldp))
  :returns (term pseudo-termp)
  :prepwork ((program))
  :short "Translated term that a call to the macro translates to."
  :long
  "<p>
  This function translates a call to the macro
  that only includes its required formal arguments,
  returning the resulting translated term.
  </p>
  <p>
  Note that since the macro is in the ACL2 world
  (because of the @(tsee macro-namep) guard),
  the translation of the macro call should not fail.
  However, the translation may not terminate,
  as mentioned in @(tsee check-user-term).
  </p>
  <p>
  Note also that if the macro has optional arguments,
  its translation with non-default values for these arguments
  may yield different terms.
  Furthermore, if the macro is sensitive
  to the &ldquo;shape&rdquo; of its arguments,
  calls with argument that are not the required formal arguments
  may yield different terms.
  </p>"
  (mv-let (term stobjs-out)
    (check-user-term (cons mac (macro-required-args mac wrld)) wrld)
    (declare (ignore stobjs-out))
    term))

(define term-guard-obligation ((term pseudo-termp) state)
  :returns (obligation pseudo-termp)
  :prepwork ((program))
  :short "Formula expressing the guard obligation of the term."
  :long
  "<p>
  The case in which @('term') is a symbol is dealt with separately
  because @(tsee guard-obligation)
  interprets a symbol as a function or theorem name, not as a variable.
  </p>"
  (b* (((when (symbolp term)) *t*)
       ((mv erp val) (guard-obligation term nil nil __function__ state))
       ((when erp)
        (raise "Error ~x0 when computing the guard obligation of ~x1."
               erp term))
       (obligation-clauses (cadr val))
       (obligation-formula (termify-clause-set obligation-clauses)))
    obligation-formula))
