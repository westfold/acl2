;; Alternative definitions for svex-eval without any guards down to 4vec functions

; SVL - Listener-based Hierachical Symbolic Vector Hardware Analysis Framework
; Copyright (C) 2019 Centaur Technology
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Mertcan Temel <mert@utexas.edu>


(in-package "SVL")

(include-book "centaur/sv/svex/eval" :dir :system)
(include-book "std/util/defines" :dir :system)

(include-book "macros")

(define svex-kind2 (x)
  :returns kind
  :inline t
  :guard-hints
  (("goal" :in-theory
    (disable fty::open-member-equal-on-list-of-tags))
   (and stable-under-simplificationp
        '(:expand ((svex-p x)))))
  :progn t
  (cond ((if (atom x)
             (or (stringp x)
                 (and x (symbolp x)))
           (eq (car x) :var))
         :var)
        ((or (atom x)
             (eq (car x) 'quote))
         :quote)
        (t :call)))

(defthm svex-kind2-is-svex-kind
  (equal (svex-kind2 x)
         (svex-kind x))
  :hints (("Goal"
           :in-theory (e/d (svex-kind2
                            svex-kind) ()))))

(define svex-env-fastlookup2 (var env)
  :inline t
  (let* ((look (hons-get var env)))
    (if look (cdr look) (sv::4vec-x)))
  :returns (res 4vec-p :hyp (sv::svex-env-p env))
  ///
  (defthm SVEX-ENV-FASTLOOKUP2-is-SVEX-ENV-FASTLOOKUP
    (implies (and (svex-env-p env)
                  (sv::svar-p var))
             (equal (SVEX-ENV-FASTLOOKUP2 var env)
                    (sv::SVEX-ENV-FASTLOOKUP var env)))
    :hints (("Goal"
             :expand (sv::SVEX-ENV-FASTLOOKUP var env)
             :in-theory (e/d (sv::SVEX-ENV-FASTLOOKUP
                              SV::SVEX-ENV-LOOKUP
                              svex-env-p
                              4VEC-FIX) ())))))

(define 4vec-fix2 (x)
  (if (consp x)
      (4vec (ifix (car x))
            (ifix (cdr x)))
    (if (integerp x)
        x (sv::4vec-x)))
  :returns (res 4vec-p)
  :prepwork
  ((local
    (in-theory (enable 4vec-p 4vec))))
  ///
  (defthm 4vec-fix2-is-4vec-fix
    (equal (4vec-fix2 x)
           (4vec-fix x))
    :hints (("Goal"
             :in-theory (e/d (4vec-fix2
                              4vec-fix) ())))))

(defun svex-apply-collect-args2 (n max argsvar)
  (declare (xargs :measure (nfix (- (nfix max) (nfix n)))))
  (let* ((n (nfix n))
         (max (nfix max)))
    (if (zp (- max n))
        nil
      (cons (list '4vec-fix2 (cons 'nth (cons n (cons argsvar 'nil))))
            (svex-apply-collect-args2 (+ 1 n) max argsvar)))))

(defun svex-apply-cases-fn2 (argsvar optable)
  (b* (((when (atom optable))
        '((otherwise
           (or (acl2::raise
                "attempting to apply unknown function ~x0~%"
                fn)
               (sv::4vec-x)))))
       ((list sym fn args)
        (car optable))
       (call
        (cons fn
              (svex-apply-collect-args2 0 (len args)
                                        argsvar))))
    (cons
     (cons sym (cons call 'nil))
     (svex-apply-cases-fn2 argsvar (cdr optable)))))

(defmacro svex-apply-cases2 (fn args)
  (cons
   'case
   (cons fn
         (svex-apply-cases-fn2 args sv::*svex-op-table*))))

(define svex-apply2 (fn (args true-listp))
  :returns
  (sv::result 4vec-p
              "result of applying the function.")
  :long
  "documentation is available via :doc."
  (let* ((fn (fnsym-fix fn)))
    (svex-apply-cases2 fn args)))

(defthm svex-apply2-is-svex-apply
  (equal (svex-apply2 fn args)
         (sv::svex-apply fn args))
  :hints (("Goal"
           :expand ((:free (index)
                           (NTH index (SV::4VECLIST-FIX ARGS)))
                    (:free (index)
                           (NTH index (SV::4VECLIST-FIX (cdr ARGS)))))
           :in-theory (e/d (svex-apply2
                            SV::4VECLIST-FIX
                            nth
                            4VECLIST-NTH-SAFE
                            sv::svex-apply)
                           (SV::4VEC-FIX-UNDER-4VEC-EQUIV
                            (:DEFINITION IFIX)
                            (:REWRITE SV::4VEC-FIX-OF-4VEC)
                            (:DEFINITION INTEGER-LISTP)
                            (:REWRITE SV::4VEC-P-OF-NTH-WHEN-4VECLIST-P)
                            (:TYPE-PRESCRIPTION INTEGER-LISTP))))))

(acl2::defines
 svex-eval2
 :flag svex-eval2-flag
 :flag-defthm-macro defthm-svex-eval2
 :verify-guards nil
 :flag-local nil

 (define svex-eval2 (x env)
   :measure (cons-count x)
   :hints (("Goal"
            :in-theory (e/d (rp::measure-lemmas
                             svex-kind) ())))
   :flag expr
   :returns (val 4vec-p "Value of @('x') under this environment."
                 :hyp (and (sv::svex-env-p env)
                           (sv::svex-p x))
                 :hints ((and stable-under-simplificationp
                              '(:expand ((4vec-p x))))))
   (let* ((x.kind (svex-kind2 x)))
     (case
       x.kind
       (:quote (cond ((atom x) x)
                     ((atom (cdr x)) (sv::4vec-x))
                     (t (cadr x))))
       (:var (svex-env-fastlookup2 x env))
       (otherwise
        (b* ((x.fn (car x))
             (x.args (cdr x)))
          (svex-apply2 x.fn (svexlist-eval2 x.args env)))))))

 (define svexlist-eval2 (args env)
   :returns (vals sv::4veclist-p "Values of the expressions in @('x') under
    this environment."
                  :hyp (and (sv::svex-env-p env)
                            (sv::svexlist-p args)))
   :measure (cons-count args)
   :flag list
   (if (atom args)
       nil
     (cons (svex-eval2 (car args) env)
           (svexlist-eval2 (cdr args) env)))
   ///
   (acl2::more-returns
    (vals true-listp)))

 :prepwork
 ((local
   (defthm returns-lemma1
     (IMPLIES (AND
               (EQUAL (SVEX-KIND X) :QUOTE)
               (NOT (CONSP X))
               (SVEX-ENV-P ENV)
               (SVEX-P X))
              (4VEC-P X))
     :hints (("Goal"
              :in-theory (e/d (SVEX-KIND SVEX-P 4VEC-P) ())))))
  (local
   (defthm returns-lemma2
     (IMPLIES (AND
               (EQUAL (SVEX-KIND X) :QUOTE)
               (CONSP X)
               (SVEX-ENV-P ENV)
               (SVEX-P X))
              (4VEC-P (CADR X)))
     :hints (("Goal"
              :in-theory (e/d (SVEX-KIND SVEX-P 4VEC-P) ()))))))
 ///

 (local (defthm consp-of-svexlist-eval
          (equal (consp (svexlist-eval2 x env))
                 (consp x))
          :hints (("goal" :expand ((svexlist-eval2 x env))))))

 (local (defthm upper-lower-of-3vec-fix
          (implies (and (sv::3vec-p x)
                        (not (equal (sv::4vec->lower x) 0)))
                   (not (equal (sv::4vec->upper x) 0)))
          :hints(("Goal" :in-theory (enable sv::3vec-p)))))

 (local (defthm 4vec-?-cases
          (and (implies (equal (sv::4vec->upper (sv::3vec-fix test)) 0)
                        (equal (sv::4vec-? test then else)
                               (4vec-fix else)))
               (implies (not (equal (sv::4vec->lower (sv::3vec-fix test)) 0))
                        (equal (sv::4vec-? test then else)
                               (4vec-fix then))))
          :hints(("Goal" :in-theory (enable sv::4vec-? sv::3vec-?)))))

 (local (defthm 4vec-bit?-cases
          (and (implies (equal test 0)
                        (equal (sv::4vec-bit? test then else)
                               (4vec-fix else)))
               (implies (equal test -1)
                        (equal (sv::4vec-bit? test then else)
                               (4vec-fix then))))
          :hints(("Goal" :in-theory (enable sv::4vec-bit? sv::3vec-bit?)))))

 (local (defthm 4vec-?*-cases
          (and (implies (equal (sv::4vec->upper (sv::3vec-fix test)) 0)
                        (equal (4vec-?* test then else)
                               (4vec-fix else)))
               (implies (not (equal (sv::4vec->lower (sv::3vec-fix test)) 0))
                        (equal (4vec-?* test then else)
                               (4vec-fix then))))
          :hints(("Goal" :in-theory (enable 4vec-?* sv::3vec-?*)))))

 (local (defthm 4vec-bitand-case
          (implies (equal test 0)
                   (equal (4vec-bitand test x)
                          0))
          :hints(("Goal" :in-theory (enable 4vec-bitand 3vec-bitand)))))

 (local (defthm 4vec-bitor-case
          (implies (equal test -1)
                   (equal (4vec-bitor test x)
                          -1))
          :hints(("Goal" :in-theory (enable 4vec-bitor sv::3vec-bitor)))))

 (verify-guards svex-eval2
   :hints ((and stable-under-simplificationp
                '(:in-theory (e/d (svex-apply2 len nth SVEX-KIND)
                                  (svex-eval2))
                             :expand ((svexlist-eval2 (svex-call->args x) env)
                                      (svexlist-eval2 (cdr (svex-call->args x)) env)
                                      (svexlist-eval2 (cddr (svex-call->args x)) env))))))

 #|(memoize 'svex-eval :condition '(eq (svex-kind x) :call))||#)

(defthm-svex-eval2
  (defthmd svex-eval2-is-svex-eval
    (implies (and (svex-p x)
                  (svex-env-p env))
             (equal (svex-eval2 x env)
                    (svex-eval x env)))
    :flag expr)
  (defthmd svexlist-eval2-is-svexlist-eval
    (implies (and (sv::svexlist-p args)
                  (svex-env-p env))
             (equal (svexlist-eval2 args env)
                    (svexlist-eval args env)))
    :flag list)
  :hints (("goal"
           :in-theory (e/d (svex-call->fn
                            svex-kind
                            svex-eval2
                            svexlist-eval2
                            svex-p
                            sv::svar-p
                            svex-eval
                            svex-var->name
                            sv::svex-quote->val
                            svex-call->args) ()))))

(defthm svex-eval-is-svex-eval2
  (implies (and (svex-p x)
                (svex-env-p env))
           (equal (svex-eval x env)
                  (svex-eval2 x env)))
  :hints (("Goal"
           :in-theory (e/d (svex-eval2-is-svex-eval) ()))))
