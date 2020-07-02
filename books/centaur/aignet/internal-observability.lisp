; Copyright (C) 2020 Centaur Technology
; AIGNET - And-Inverter Graph Networks
;
; Contact:
;   Centaur Technology Formal Verification Group
;   7600-C N. Capital of Texas Highway, Suite 300, Austin, TX 78731, USA.
;   http://www.centtech.com/
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
; Original author: Sol Swords <sswords@centtech.com>


(in-package "AIGNET")


; The observability transform in observability.lisp is important for certain
; problems where the top-level hypotheses must be assumed in order to find
; sufficiently many internal equivalences in the conclusion so as to quickly
; prove it.  That is, if there are pairs or sets of AIG nodes in the Boolean
; formula of the conclusion that are equivalent, but only under some
; assumptions implied by the hypotheses of the theorem, the observability
; transform helps to find them.

; We want to extend this by automatically finding important internal nodes for
; which some large subgraphs of the AIG have observable behavior only if some
; such node is active.  More precisely, we want to pick pairings of a literal
; to assume and a subgraph on which to assume it, such that all or most of the
; subgraph is unobservable when that literal is false.  Then we'll duplicate
; that subgraph with inputs mapped to muxes ( assum-lit ? input : assum_input )
; where assum-lit is true if all of the inputs are assigned their respective
; assum_inputs.


;      Recursive Application of Observability Conditions

; There need not be only one unique observability literal guarding a subtree.
; We can effectively make this a recursive algorithm by tracking

;   1) EXT-OBS, A conjunction of literals that must all be satisfied or the current
;   subtree won't be observable.
;   2) IN-SUBST, a vector of input substitution expressions such that
;          a) when EXT-OBJ is satisfied, the substitution
;             evaluates to the original inputs (correctness condition)
;          b) the outputs of the substitution always satisfy EXT-OBS
;             (usefulness condition).

; Whenever we choose an observability condition OBS to apply to some subtree,
; we conjoin it to EXT-OBS and update IN-SUBST to be, effectively, OBS ?
; in-subst : satisfying_assign, where satisfying_assign makes the conjunction
; of OBS and EXT-OBS true.


;    Choosing Observability Conditions

; If a node N has direct fanout nodes F1 ... Fn and is not connected to an
; output, then a literal D is an "observability dominator" of N if for all i in
; 1..n, it is also either an observability dominator of Fi, or Fi is an AND
; node where D is the sibling of node N and D is less than N according to some
; ranking of nodes.  This last condition is important for the following situation:
;  n0 = AND(n1,n2) ; n1 is unobservable if ~n2, n2 is unobservable if ~n1
;  n1 = AND(n3,n4) ;
;  n2 = AND(n3,n5)
;  n4 = XOR(n2,n0)
;  n3 = XOR(n1,n0)
;  Then when n1=n2=n0=0, n4 and n3 are both supposed to be unobservable.
;  However, if we toggle n0, then n5 is also toggled even though it's not 

; Without the ranking, n3 

; A combinational output has no observability dominators, therefore a node that
; has a combinational output as a direct fanout has no observability
; dominators.

; An observability dominator of node N is a literal L for which a toggle of the
; value of N cannot be observed in any output unless L is true.

(include-book "transform-utils")
(include-book "levels")

(local (include-book "arithmetic/top-with-meta" :dir :system))
(local (include-book "centaur/bitops/ihsext-basics" :dir :system))
;; (local (include-book "data-structures/list-defthms" :dir :system))
(local (include-book "std/lists/nth" :dir :system))
(local (include-book "std/lists/take" :dir :system))
(local (in-theory (enable* acl2::arith-equiv-forwarding)))
(local (in-theory (disable nth
                           update-nth
                           resize-list
                           make-list-ac
                           true-listp-update-nth
                           acl2::nfix-when-not-natp
                           ;; acl2::resize-list-when-empty
                           ;; acl2::make-list-ac-redef
                           ;; set::double-containment
                           ;; set::sets-are-true-lists
                           acl2::nth-when-zp
                           ;; acl2::nth-with-large-index
                           )))
(local (std::add-default-post-define-hook :fix))


;; Observability deals with situations in which a change in value of a node may
;; or may not be observable at the outputs (or some other distinguished set of
;; nodes).  To begin reasoning about it we define id-eval-toggle and
;; lit-eval-toggle, which gives the value of a (node/literal) when a certain
;; node's value has been negated.  A source node is unobservable from a sink
;; node if for all inputs, the id-eval-toggle of the sink node with source node
;; as the toggle input equals the id-eval of the sink node.
(defines id-eval-toggle
  :prepwork ((local (in-theory (disable lookup-id-in-bounds-when-positive
                                        lookup-id-out-of-bounds))))
  :ruler-extenders :lambdas
  (define lit-eval-toggle ((lit litp) (toggle natp) invals regvals aignet)
    :guard (and (fanin-litp lit aignet)
                (<= (num-ins aignet) (bits-length invals))
                (<= (num-regs aignet) (bits-length regvals)))
    :measure (acl2::two-nats-measure (lit-id lit) 1)
    :verify-guards nil
    (b-xor (id-eval-toggle (lit-id lit) toggle invals regvals aignet)
           (lit-neg lit)))

  (define eval-and-of-lits-toggle ((lit1 litp)
                            (lit2 litp)
                            (toggle natp)
                            invals regvals aignet)
    :guard (and (fanin-litp lit1 aignet)
                (fanin-litp lit2 aignet)
                (<= (num-ins aignet) (bits-length invals))
                (<= (num-regs aignet) (bits-length
                                       regvals)))
    :measure (acl2::two-nats-measure
              (max (lit-id lit1)
                   (lit-id lit2))
              2)
    (b-and (lit-eval-toggle lit1 toggle invals regvals aignet)
           (lit-eval-toggle lit2 toggle invals regvals aignet)))

  (define eval-xor-of-lits-toggle ((lit1 litp)
                            (lit2 litp)
                            (toggle natp)
                            invals regvals aignet)
    :guard (and (fanin-litp lit1 aignet)
                (fanin-litp lit2 aignet)
                (<= (num-ins aignet) (bits-length invals))
                (<= (num-regs aignet) (bits-length
                                       regvals)))
    :measure (acl2::two-nats-measure
              (max (lit-id lit1)
                   (lit-id lit2))
              2)
    (b-xor (lit-eval-toggle lit1 toggle invals regvals aignet)
           (lit-eval-toggle lit2 toggle invals regvals aignet)))

  (define id-eval-toggle ((id natp) (toggle natp) invals regvals aignet)
    :guard (and (id-existsp id aignet)
                (<= (num-ins aignet) (bits-length invals))
                (<= (num-regs aignet) (bits-length regvals)))
    :measure (acl2::two-nats-measure id 0)
    :hints(("Goal" :in-theory (enable aignet-idp)))
    (let ((ans
           (b* (((unless (mbt (id-existsp id aignet)))
                 ;; out-of-bounds IDs are false
                 0)
                (type (id->type id aignet)))
             (aignet-case
               type
               :gate (b* ((f0 (gate-id->fanin0 id aignet))
                          (f1 (gate-id->fanin1 id aignet)))
                       (if (int= (id->regp id aignet) 1)
                           (eval-xor-of-lits-toggle
                            f0 f1 toggle invals regvals aignet)
                         (eval-and-of-lits-toggle
                          f0 f1 toggle invals regvals aignet)))
               :in    (if (int= (id->regp id aignet) 1)
                          (get-bit (ci-id->ionum id aignet) regvals)
                        (get-bit (ci-id->ionum id aignet) invals))
               :const 0))))
      (if (eql (lnfix id) (lnfix toggle))
          (b-not ans)
        ans)))
  ///
  (fty::deffixequiv-mutual id-eval-toggle)
  (verify-guards id-eval-toggle)

  (defthm id-eval-toggle-when-less
    (implies (< (nfix x) (nfix toggle))
             (equal (id-eval-toggle x toggle invals regvals aignet)
                    (id-eval x invals regvals aignet)))
    :hints (("goal" :induct (id-eval-ind x aignet)
             :expand ((id-eval x invals regvals aignet)
                      (id-eval-toggle x toggle invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))))))



(define output-eval-toggle ((n natp) (toggle natp) invals regvals aignet)
  :guard (and (< n (num-outs aignet))
              (<= (num-ins aignet) (bits-length invals))
              (<= (num-regs aignet) (bits-length regvals)))
  (lit-eval-toggle (outnum->fanin n aignet) toggle invals regvals aignet))

(define nxst-eval-toggle ((n natp) (toggle natp) invals regvals aignet)
  :guard (and (< n (num-regs aignet))
              (<= (num-ins aignet) (bits-length invals))
              (<= (num-regs aignet) (bits-length regvals)))
  (lit-eval-toggle (regnum->nxst n aignet) toggle invals regvals aignet))







;; We formalize the notion of a path between a source and sink node.  This is
;; just a list of bits saying which child to traverse at each two-input gate
;; along the way.

;; The main result we prove is that if source toggles sink under some inputs,
;; then there must be a path between them such that:
;;  1) no two AND siblings of the path are contradictory literals
;;  2) no AND sibling of the path is 0 under both values of source.


;; A path through some descendants of a sink exists if all the nodes it says to
;; traverse are gate nodes.
(define path-existsp ((sink natp) (path bit-listp) aignet)
  :guard (id-existsp sink aignet)
  (if (atom path)
      t
    (and (eql (id->type sink aignet) (gate-type))
         (path-existsp (lit->var (snode->fanin (id->slot sink (car path) aignet)))
                       (cdr path) aignet)))
  ///
  (defthm path-existsp-when-consp
    (implies (and (path-existsp sink path aignet)
                  (consp path))
             (and (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
                  (implies (equal (car path) 1)
                           (path-existsp (lit->var (fanin :gate1 (lookup-id sink aignet)))
                                         (cdr path) aignet))
                  (implies (not (equal (car path) 1))
                           (path-existsp (lit->var (fanin :gate0 (lookup-id sink aignet)))
                                         (cdr path) aignet)))))

  (defthm path-existsp-of-cons-0
    (equal (path-existsp sink (cons 0 path) aignet)
           (and (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
                (path-existsp (lit->var (fanin :gate0 (lookup-id sink aignet))) path aignet))))

  (defthm path-existsp-of-cons-1
    (equal (path-existsp sink (cons 1 path) aignet)
           (and (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
                (path-existsp (lit->var (fanin :gate1 (lookup-id sink aignet))) path aignet))))
  
  (defthm path-existsp-of-nil
    (equal (path-existsp sink nil aignet) t))

  (local (in-theory (disable (:d path-existsp)))))


;; The endpoint of a path from a sink node is the source node it ends up at.
(define path-endpoint ((sink natp) (path bit-listp) aignet)
  :guard (and (id-existsp sink aignet)
              (path-existsp sink path aignet))
  (if (atom path)
      (lnfix sink)
    (path-endpoint (lit->var
                    (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate1 :gate0)
                                                 (lookup-id sink aignet)))
                         :exec (snode->fanin (id->slot sink (car path) aignet))))
                   (cdr path) aignet))
  ///
  (defthm path-endpoint-of-cons-0
    (equal (path-endpoint sink (cons 0 rest) aignet)
           (path-endpoint (lit->var (fanin :gate0 (lookup-id sink aignet))) rest aignet)))
  
  (defthm path-endpoint-of-cons-1
    (equal (path-endpoint sink (cons 1 rest) aignet)
           (path-endpoint (lit->var (fanin :gate1 (lookup-id sink aignet))) rest aignet)))

  (defthm path-endpoint-of-nil
    (equal (path-endpoint sink nil aignet)
           (nfix sink)))

  (local (in-theory (disable (:d path-endpoint)))))


;; Check whether any AND gate in a path has x as the sibling (i.e. the other
;; branch, that the path did not take).
(define path-contains-and-sibling ((x litp) (sink natp) (path bit-listp) aignet)
  :guard (and (id-existsp sink aignet)
              (path-existsp sink path aignet))
  :measure (len path)
  :guard-hints (("Goal" :expand ((path-existsp sink path aignet))))
  :prepwork ((local (in-theory (disable satlink::equal-of-lit-fix-backchain
                                        lookup-id-out-of-bounds
                                        lookup-id-in-bounds-when-positive))))
  :returns (contains)
  (b* (((when (atom path)) nil)
       (next (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate1 :gate0)
                                          (lookup-id sink aignet)))
                  :exec (snode->fanin (id->slot sink (car path) aignet))))
       ((unless (mbe :logic (non-exec (eq (stype (car (lookup-id sink aignet))) :and))
                     :exec (eql (id->regp sink aignet) 0)))
        (path-contains-and-sibling x (lit->var next) (cdr path) aignet))
       (sib (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate0 :gate1)
                                         (lookup-id sink aignet)))
                 :exec (snode->fanin (id->slot sink (b-not (car path)) aignet))))
       ((when (eql sib (lit-fix x))) t))
    (path-contains-and-sibling x (lit->var next) (cdr path) aignet))
  ///
  (local (in-theory (disable (:d path-contains-and-sibling))))

  (local (defthm equal-of-lit-fix-implies-lit->var
           (implies (equal x (lit-fix y))
                    (equal (lit->var x) (lit->var y)))
           :rule-classes :forward-chaining))

  (defthm path-contains-and-sibling-of-nil
    (equal (path-contains-and-sibling x sink nil aignet) nil)
    :hints (("goal" :expand ((path-contains-and-sibling x sink nil aignet)))))
  
  (defretd path-contains-and-sibling-when-gte-sink
    (implies (and (<= (nfix sink) (lit->var x))
                  (path-existsp sink path aignet))
             (not contains))
    :hints (("goal" :induct <call> :expand (<call> (path-existsp sink path aignet))))))

;; Check whether any two AND siblings in the path are contradictory literals.
(define path-contains-contradictory-siblings ((sink natp) (path bit-listp) aignet)
  :guard (and (id-existsp sink aignet)
              (path-existsp sink path aignet))
  :measure (len path)
  :guard-hints (("Goal" :expand ((path-existsp sink path aignet))))
  :prepwork ((local (in-theory (disable satlink::equal-of-lit-fix-backchain
                                        lookup-id-out-of-bounds
                                        lookup-id-in-bounds-when-positive))))
  (b* (((when (atom path)) nil)
       (next (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate1 :gate0)
                                          (lookup-id sink aignet)))
                  :exec (snode->fanin (id->slot sink (car path) aignet))))
       ((unless (mbe :logic (non-exec (eq (stype (car (lookup-id sink aignet))) :and))
                     :exec (eql (id->regp sink aignet) 0)))
        (path-contains-contradictory-siblings (lit->var next) (cdr path) aignet))
       (sib (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate0 :gate1)
                                         (lookup-id sink aignet)))
                 :exec (snode->fanin (id->slot sink (b-not (car path)) aignet)))))
    (or (path-contains-and-sibling (lit-negate sib) (lit->var next) (cdr path) aignet)
        (path-contains-contradictory-siblings (lit->var next) (cdr path) aignet)))
  ///
  (local (in-theory (disable (:d path-contains-contradictory-siblings)))))


;; Check whether any AND siblings in the path are 0 under the inputs with the
;; source both toggled and not toggled.
(define path-contains-const0-sibling ((sink natp) (source natp) invals regvals (path bit-listp) aignet)
  :guard (and (id-existsp sink aignet)
              (id-existsp source aignet)
              (path-existsp sink path aignet)
              (<= (num-ins aignet) (bits-length invals))
              (<= (num-regs aignet) (bits-length regvals)))
  :measure (len path)
  :guard-hints (("Goal" :expand ((path-existsp sink path aignet))))
  :prepwork ((local (in-theory (disable satlink::equal-of-lit-fix-backchain
                                        lookup-id-out-of-bounds
                                        lookup-id-in-bounds-when-positive))))
  :returns (contains)
  (b* (((when (atom path)) nil)
       (next (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate1 :gate0)
                                          (lookup-id sink aignet)))
                  :exec (snode->fanin (id->slot sink (car path) aignet))))
       ((unless (mbe :logic (non-exec (eq (stype (car (lookup-id sink aignet))) :and))
                     :exec (eql (id->regp sink aignet) 0)))
        (path-contains-const0-sibling (lit->var next) source invals regvals (cdr path) aignet))
       (sib (mbe :logic (non-exec (fanin (if (eql (car path) 1) :gate0 :gate1)
                                         (lookup-id sink aignet)))
                 :exec (snode->fanin (id->slot sink (b-not (car path)) aignet)))))
    (or (and (eql 0 (lit-eval sib invals regvals aignet))
             (eql 0 (lit-eval-toggle sib source invals regvals aignet)))
        (path-contains-const0-sibling (lit->var next) source invals regvals (cdr path) aignet)))
  ///
  (local (in-theory (disable (:d path-contains-const0-sibling))))

  (defret path-contains-const0-sibling-when-has-sibling
    (implies (and (path-contains-and-sibling x sink path aignet)
                  (equal (lit-eval x invals regvals aignet) 0)
                  (equal (lit-eval-toggle x source invals regvals aignet) 0))
             contains)
    :hints (("goal" :induct <call>
             :expand (<call>
                      (path-contains-and-sibling x sink path aignet))))))

(local (in-theory (disable member
                           lookup-id-in-bounds-when-positive
                           lookup-id-out-of-bounds
                           satlink::equal-of-lit-negate-backchain
                           satlink::lit-negate-not-equal-when-vars-mismatch)))

(define toggle-witness-path ((sink natp) (source natp) invals regvals aignet)
  ;; Given that sink is toggled by source, find a path from sink to source
  ;; containing no contradictory AND siblings and no const0 siblings.
  :guard (and (id-existsp sink aignet)
              (id-existsp source aignet)
              (<= (num-ins aignet) (bits-length invals))
              (<= (num-regs aignet) (bits-length regvals)))
  :measure (nfix sink)
  :returns (path bit-listp)
  :prepwork ((local (in-theory (disable satlink::equal-of-lit-fix-backchain
                                        lookup-id-out-of-bounds
                                        lookup-id-in-bounds-when-positive))))
  (b* (((when (or (<= (lnfix sink) (lnfix source))
                  (not (eql (id->type sink aignet) (gate-type)))))
        nil)
       (fanin0 (gate-id->fanin0 sink aignet))
       (fanin1 (gate-id->fanin1 sink aignet))
       (xor (eql (id->regp sink aignet) 1))
       (fanin0-val (lit-eval fanin0 invals regvals aignet))
       (fanin1-val (lit-eval fanin1 invals regvals aignet))
       (fanin0-toggles (not (eql (lit-eval-toggle fanin0 source invals regvals aignet)
                                 fanin0-val)))
       (fanin1-toggles (not (eql (lit-eval-toggle fanin1 source invals regvals aignet)
                                 fanin1-val)))
       ((when xor)
        (if fanin0-toggles
            (cons 0 (toggle-witness-path (lit->var fanin0) source invals regvals aignet))
          (cons 1 (toggle-witness-path (lit->var fanin1) source invals regvals aignet))))
       ((unless fanin0-toggles)
        ;; fanin0 must be const 1.
        (cons 1 (toggle-witness-path (lit->var fanin1) source invals regvals aignet)))
       ((unless fanin1-toggles)
        (cons 0 (toggle-witness-path (lit->var fanin0) source invals regvals aignet)))
       ((when (<= (lit->var fanin0) (lit->var fanin1)))
        (cons 0 (toggle-witness-path (lit->var fanin0) source invals regvals aignet))))
    (cons 1 (toggle-witness-path (lit->var fanin1) source invals regvals aignet)))
  ///
  (local (in-theory (disable (:d toggle-witness-path))))
  
  (defret path-existsp-of-toggle-witness-path
    (path-existsp sink path aignet)
    :hints (("goal" :induct <call> :expand (<call>))))

  (local (defthm cancel-equal-b-xor
           (equal (equal (b-xor a b) (b-xor a c))
                  (equal (bfix b) (bfix c)))
           :hints(("Goal" :in-theory (enable b-xor bfix)))))
  
  (local (defthm equal-of-b-and-first-same
           (equal (equal (b-and a b) (b-and a c))
                  (or (equal (bfix a) 0)
                      (equal (bfix b) (bfix c))))
           :hints(("Goal" :in-theory (enable b-and bfix)))))

  (local (defthm equal-of-b-and-second-same
           (equal (equal (b-and b a) (b-and c a))
                  (or (equal (bfix a) 0)
                      (equal (bfix b) (bfix c))))
           :hints(("Goal" :in-theory (enable b-and bfix)))))

  (local (defthm equal-of-b-and-first/second
           (equal (equal (b-and b a) (b-and a c))
                  (or (equal (bfix a) 0)
                      (equal (bfix b) (bfix c))))
           :hints(("Goal" :in-theory (enable b-and bfix)))))

  (defret path-endpoint-of-<fn>
    (implies (not (equal (id-eval sink invals regvals aignet)
                         (id-eval-toggle sink source invals regvals aignet)))
             (equal (path-endpoint sink path aignet) (nfix source)))
    :hints (("goal" :induct <call>
             :expand (<call>
                      (id-eval sink invals regvals aignet)
                      (id-eval-toggle sink source invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))))))

  (defret const0-siblings-of-<fn>
    (implies (not (equal (id-eval sink invals regvals aignet)
                         (id-eval-toggle sink source invals regvals aignet)))
             (not (path-contains-const0-sibling
                   sink source invals regvals path aignet)))
    :hints (("goal" :induct <call>
             :expand (<call>
                      (id-eval sink invals regvals aignet)
                      (id-eval-toggle sink source invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))
                      (:free (p source)
                       (path-contains-const0-sibling
                        sink source invals regvals p aignet))))))

  (local (defret path-contains-no-and-sibling-when-no-const0-sibling
           (implies (and (bind-free '((invals . invals) (regvals . regvals) (source . source))
                                    (invals regvals source))
                         (not contains)
                         (equal (lit-eval x invals regvals aignet) 0)
                         (equal (lit-eval-toggle x source invals regvals aignet) 0))
                    (not (path-contains-and-sibling x sink path aignet)))
           :fn path-contains-const0-sibling))

  (local (defthm equal-b-not-of-bits
           (implies (and (bitp x) (bitp y))
                    (equal (equal (b-not x) y)
                           (not (equal x y))))
           :hints(("Goal" :in-theory (enable bitp)))))

  ;; (local (defthm not-equal-of-id-eval-toggle
  ;;          (implies (not (equal (id-eval-toggle sink source invals regvals aignet)
  ;;                               (id-eval sink invals regvals aignet)))
  ;;                   (equal (id-eval-toggle sink source invals regvals aignet)
  ;;                          (b-not (id-eval sink invals regvals aignet))))
  ;;          :hints(("Goal" :in-theory (enable bitp)))
  ;;          :rule-classes :forward-chaining))
  
  ;; (local (defthm b-xor-b-not-1
  ;;          (equal (b-xor (b-not x) y)
  ;;                 (b-not (b-xor x y)))
  ;;          :hints(("Goal" :in-theory (enable b-xor b-not)))))
  ;; (local (defthm b-xor-b-not-2
  ;;          (equal (b-xor x (b-not y))
  ;;                 (b-not (b-xor x y)))
  ;;          :hints(("Goal" :in-theory (enable b-xor b-not)))))

  ;; (local (defthm equal-b-and-b-nots
  ;;          (equal (equal (b-and a b) (b-and (b-not a) (b-not b)))
  ;;                 (not (equal (bfix a) (bfix b))))
  ;;          :hints(("Goal" :in-theory (enable bfix)))))

  (local (in-theory (enable path-contains-and-sibling-when-gte-sink)))
  
  (defret contradictions-of-<fn>
    (implies (not (equal (id-eval sink invals regvals aignet)
                         (id-eval-toggle sink source invals regvals aignet)))
             (not (path-contains-contradictory-siblings
                   sink path aignet)))
    :hints (("goal" :induct <call>
             :expand (<call>
                      (id-eval sink invals regvals aignet)
                      (id-eval-toggle sink source invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))
                      (:free (p)
                       (path-contains-contradictory-siblings
                        sink p aignet)))))))


;; Dominator info for each node is stored as either
;; (1) T, signifying that every path from an output to the node contains
;;     contradictory literals, or
;; (2) a list of literals, all of which must occur as AND-siblings in every
;;     path from an output to the node not containing contradictory literals.


(define obs-dom-info-p (x)
  (or (eq x t) (lit-listp x))
  ///
  (defthm lit-listp-when-obs-dom-info-p
    (implies (and (not (equal x t))
                  (obs-dom-info-p x))
             (lit-listp x)))
  (define obs-dom-info-fix ((x obs-dom-info-p))
    :returns (new-x obs-dom-info-p)
    :inline t
    (mbe :logic (if (eq x t) t (lit-list-fix x))
         :exec x)
    ///
    (defthm obs-dom-info-fix-when-obs-dom-info-p
      (implies (obs-dom-info-p x)
               (equal (obs-dom-info-fix x) x)))

    (fty::deffixtype obs-dom-info :pred obs-dom-info-p :fix obs-dom-info-fix
      :equiv obs-dom-info-equiv :define t :forward t)))

(define make-obs-dom-info-unreached ()
  :returns (info obs-dom-info-p)
  :inline t
  t)

(define make-obs-dom-info-reached ((doms lit-listp))
  :returns (info obs-dom-info-p
                 :hints (("goal" :in-theory (Enable obs-dom-info-p))))
  :inline t
  (lit-list-fix doms))

(define obs-dom-info->reached ((x obs-dom-info-p))
  :inline t
  :hooks nil
  (not (eq x t))
  ///
  (defthm obs-dom-info->reached-of-make-obs-dom-info-reached
    (obs-dom-info->reached (make-obs-dom-info-reached doms)))

  (fty::deffixequiv obs-dom-info->reached
    :hints (("goal" :in-theory (enable obs-dom-info-fix)))))


(define obs-dom-info->doms ((x obs-dom-info-p))
  :inline t
  ;; :guard (obs-dom-info->reached x)
  :returns (doms lit-listp)
  :guard-hints (("goal" :in-theory (enable obs-dom-info-p obs-dom-info->reached)))
  :hooks nil
  (if (eq x t) nil (lit-list-fix x))
  ///
  (defthm obs-dom-info->doms-of-make-obs-dom-info-reached
    (equal (obs-dom-info->doms (make-obs-dom-info-reached doms))
           (lit-list-fix doms))
    :hints (("goal" :in-theory (enable make-obs-dom-info-reached))))

  (fty::deffixequiv obs-dom-info->doms
    :hints (("goal" :in-theory (enable obs-dom-info-fix)))))


(acl2::def-b*-binder
  obs-dom-info
  :body (std::da-patbind-fn 'obs-dom-info
                            '((reached . obs-dom-info->reached)
                              (doms . obs-dom-info->doms))
                            args acl2::forms acl2::rest-expr))

(define obs-dom-info-well-formedp ((info obs-dom-info-p) aignet)
  :returns wfp
  (b* (((obs-dom-info info)))
    (or (not info.reached)
        (aignet-lit-listp info.doms aignet)))
  ///
  (defret aignet-lit-listp-of-doms-when-<fn>
    (b* (((obs-dom-info info)))
      (implies wfp
               (aignet-lit-listp info.doms aignet)))
    :hints (("goal" :in-theory (enable obs-dom-info->reached obs-dom-info->doms)))))





(fty::deflist obs-dom-info-list :elt-type obs-dom-info :true-listp t)

(make-event
 `(acl2::def-1d-arr obs-dom-array
    :slotname dominfo
    :pred obs-dom-info-p
    :fix obs-dom-info-fix
    :default-val ,(make-obs-dom-info-unreached)
    :rename ((resize-dominfos . resize-dominfo)
             (dominfos-length . dominfo-length))))

(defthm obs-dom-array$ap-is-obs-dom-info-list-p
  (equal (obs-dom-array$ap x)
         (obs-dom-info-list-p x)))


(local (include-book "std/lists/sets" :dir :system))
(local
 #!satlink
 (fty::deflist lit-list :pred lit-listp :elt-type litp :true-listp t
  :parents (litp)
  :short "List of literals"))


(local (defthm eqlable-listp-when-lit-listp
         (implies (lit-listp x)
                  (eqlable-listp x))))


(define cube-contradictionp ((x lit-listp))
  :returns (contradictionp maybe-litp :rule-classes :type-prescription)
  (if (atom x)
      nil
    (if (member (lit-negate (car x)) (lit-list-fix (cdr x)))
        (lit-fix (car x))
      (cube-contradictionp (cdr x))))
  ///
  (local (defthm aignet-eval-conjunction-when-member
           (implies (and (member x (lit-list-fix y))
                         (equal (lit-eval x invals regvals aignet) 0))
                    (equal (aignet-eval-conjunction y invals regvals aignet) 0))
           :hints(("Goal" :in-theory (enable aignet-eval-conjunction)))))
  
  (defret <fn>-correct
    (implies contradictionp
             (equal (aignet-eval-conjunction x invals regvals aignet)
                    0))
    :hints(("Goal" :in-theory (enable aignet-eval-conjunction))))

  (defret <fn>-membership
    (implies contradictionp
             (and (member-equal contradictionp (lit-list-fix x))
                  (member (lit-negate contradictionp) (lit-list-fix x)))))

  (defret <fn>-membership-no-fix
    (implies (and contradictionp (lit-listp x))
             (and (member-equal contradictionp x)
                  (member (lit-negate contradictionp) x)))))



(define obs-dom-info-subsetp ((x obs-dom-info-p)
                              (y obs-dom-info-p))
  :returns (subsetp)
  (b* (((obs-dom-info x))
       ((obs-dom-info y)))
    (or (not y.reached)
        (cube-contradictionp y.doms)
        (and x.reached
             (subsetp x.doms y.doms))))
  ///
  (local (defthm aignet-eval-conjunction-when-member
           (implies (and (equal (lit-eval x invals regvals aignet) 0)
                         (member (lit-fix x) (lit-list-fix  y)))
                    (equal (aignet-eval-conjunction y invals regvals aignet) 0))
           :hints(("Goal" :in-theory (enable aignet-eval-conjunction)))))
  (local (defthm aignet-eval-conjunction-when-subsetp
           (implies (and (equal (aignet-eval-conjunction x invals regvals aignet) 0)
                         (subsetp (lit-list-fix x) (lit-list-fix y)))
                    (equal (aignet-eval-conjunction y invals regvals aignet) 0))
           :hints(("Goal" :in-theory (enable aignet-eval-conjunction
                                             subsetp lit-list-fix)
                   :induct (lit-list-fix x)))))
  ;; (defretd <fn>-implies
  ;;   (implies (and subsetp (obs-dom-info-eval y invals regvals aignet))
  ;;            (obs-dom-info-eval x invals regvals aignet))
  ;;   :hints(("Goal" :in-theory (enable obs-dom-info-eval))))

  (defretd <fn>-implies-reached
    (implies (and subsetp
                  (obs-dom-info->reached y)
                  (not (cube-contradictionp (obs-dom-info->doms y)))
                  )
             (obs-dom-info->reached x)))

  (defretd <fn>-implies-member
    (implies (and subsetp
                  (obs-dom-info->reached y)
                  (not (cube-contradictionp (obs-dom-info->doms y)))
                  (not (member-equal lit (obs-dom-info->doms y))))
             (not (member lit (obs-dom-info->doms x))))))

(define obs-dom-info-add ((lit litp) (x obs-dom-info-p))
  :returns (new obs-dom-info-p)
  (b* (((obs-dom-info x)))
    (if x.reached
        (make-obs-dom-info-reached (cons (lit-fix lit) x.doms))
      (make-obs-dom-info-unreached)))
  ///
  ;; (defret eval-of-<fn>
  ;;   (equal (obs-dom-info-eval new invals regvals aignet)
  ;;          (and (bit->bool (lit-eval lit invals regvals aignet))
  ;;               (obs-dom-info-eval x invals regvals aignet)))
  ;;   :hints(("Goal" :in-theory (enable obs-dom-info-eval
  ;;                                     aignet-eval-conjunction))))

  (defret <fn>-when-unreached
    (implies (not (obs-dom-info->reached x))
             (equal new (make-obs-dom-info-unreached))))

  (defret <fn>-when-reached
    (implies (obs-dom-info->reached x)
             (obs-dom-info->reached new)))

  (defret member-of-<fn>
    (implies (obs-dom-info->reached x)
             (iff (member-equal dom (obs-dom-info->doms new))
                  (or (equal dom (lit-fix lit))
                      (member-equal dom (obs-dom-info->doms x)))))))

;; (define node-level-rank< ((node1 natp)
;;                           (node2 natp)
;;                           levels)
;;   :guard (and (< node1 (le



(define obs-dom-info-for-child ((fanout-info obs-dom-info-p)
                                (fanout natp)
                                (fanin bitp)
                                aignet)
  :guard (and (id-existsp fanout aignet)
              (eql (id->type fanout aignet) (gate-type)))
  :returns (child-fanout-info obs-dom-info-p)
  (b* (;; (fanin0 (gate-id->fanin0 fanout aignet))
       ;; (fanin1 (gate-id->fanin1 fanout aignet))
       (xor (eql 1 (id->regp fanout aignet))))
    (if xor
        ;; Won't complicate things with this optimization since hashing should prevent this anyhow.
        ;; (if (or (eql fanin0 fanin1)
        ;;         (eql fanin0 (lit-negate fanin1)))
        ;;     (make-obs-dom-info-unreached)
        (obs-dom-info-fix fanout-info)
      ;; (cond ((eql fanin0 fanin1) (obs-dom-info-fix fanout-info))
      ;;       ((eql fanin0 (lit-negate fanin1)) (make-obs-dom-info-unreached))
      ;;       (t
      (obs-dom-info-add (snode->fanin (id->slot-fn fanout (b-not fanin) aignet)) fanout-info)))
  ///
  ;; (defret eval-of-<fn>
  ;;   (implies (not (obs-dom-info-eval fanout-info invals regvals aignet))
  ;;            (not (obs-dom-info-eval child-fanout-info invals regvals aignet))))

  (defret <fn>-when-xor
    (implies (equal (stype (car (lookup-id fanout aignet))) :xor)
             (equal child-fanout-info
                    ;; (b* ((fanin0 (gate-id->fanin0 fanout aignet))
                    ;;      (fanin1 (gate-id->fanin1 fanout aignet)))
                    ;;   (if (or (eql fanin0 fanin1)
                    ;;           (eql fanin0 (lit-negate fanin1)))
                    ;;       (make-obs-dom-info-unreached)
                    (obs-dom-info-fix fanout-info))))
  ;; (defret <fn>-when-fanin1
  ;;   (implies (bit->bool fanin)
  ;;            (equal child-fanout-info (obs-dom-info-fix fanout-info))))
  ;; (defret <fn>-when-and-fanin0
  ;;   (implies (and (equal (stype (car (lookup-id fanout aignet))) :and)
  ;;                 (not (bit->bool fanin)))
  ;;            (equal child-fanout-info
  ;;                   (obs-dom-info-add (fanin (if (equal fanin 1) :gate0 :gate1)
  ;;                                            (lookup-id fanout aignet))
  ;;                                     fanout-info))))
  (defret <fn>-when-and
    (implies (equal (stype (car (lookup-id fanout aignet))) :and)
             (equal child-fanout-info
                    ;; (cond ((equal (gate-id->fanin0 fanout aignet)
                    ;;               (gate-id->fanin1 fanout aignet))
                    ;;        (obs-dom-info-fix fanout-info))
                    ;;       ((equal (gate-id->fanin0 fanout aignet)
                    ;;               (lit-negate (gate-id->fanin1 fanout aignet)))
                    ;;        (make-obs-dom-info-unreached))
                    ;;       (t
                    (obs-dom-info-add (fanin (if (equal fanin 1) :gate0 :gate1)
                                             (lookup-id fanout aignet))
                                      fanout-info)))))



(define obs-dom-fanout-ok ((fanout natp) obs-dom-array aignet)
  :guard (and (id-existsp fanout aignet)
              (<= (num-fanins aignet) (dominfo-length obs-dom-array)))
  (or (not (equal (id->type fanout aignet) (gate-type)))
      (and (obs-dom-info-subsetp
            (get-dominfo (lit->var (gate-id->fanin0 fanout aignet)) obs-dom-array)
            (obs-dom-info-for-child
             (get-dominfo fanout obs-dom-array) fanout 0 aignet))
           (obs-dom-info-subsetp
            (get-dominfo (lit->var (gate-id->fanin1 fanout aignet)) obs-dom-array)
            (obs-dom-info-for-child
             (get-dominfo fanout obs-dom-array) fanout 1 aignet))))
  ///
  (defthm obs-dom-fanout-ok-implies
    (implies (and (obs-dom-fanout-ok fanout obs-dom-array aignet)
                  (equal (ctype (stype (car (lookup-id fanout aignet)))) :gate))
             (and (obs-dom-info-subsetp
                   (nth (lit->var (fanin :gate0 (lookup-id fanout aignet))) obs-dom-array)
                   (obs-dom-info-for-child
                    (nth fanout obs-dom-array) fanout 0 aignet))
                  (obs-dom-info-subsetp
                   (nth (lit->var (fanin :gate1 (lookup-id fanout aignet))) obs-dom-array)
                   (obs-dom-info-for-child
                    (nth fanout obs-dom-array) fanout 1 aignet))))))





(define obs-dom-info-normalize ((x obs-dom-info-p))
  :returns (new-x obs-dom-info-p)
  (b* (((obs-dom-info x)))
    (if (and x.reached
             (cube-contradictionp x.doms))
        (make-obs-dom-info-unreached)
      (obs-dom-info-fix x)))
  ///
  ;; (defret eval-of-<fn>
  ;;   (equal (obs-dom-info-eval new-x invals regvals aignet)
  ;;          (obs-dom-info-eval x invals regvals aignet))
  ;;   :hints(("Goal" :in-theory (enable obs-dom-info-eval))))

  (local (defthm cube-contradictionp-by-member
           (implies (and (member x cube)
                         (member (lit-negate x) cube)
                         (lit-listp cube))
                    (cube-contradictionp cube))
           :hints(("Goal" :in-theory (enable cube-contradictionp)))))
  
  (local (defthm cube-contradictionp-when-subsetp
           (implies (and (subsetp x y)
                         (cube-contradictionp x)
                         (lit-listp y) (lit-listp x))
                    (cube-contradictionp y))
           :hints(("Goal" :in-theory (enable cube-contradictionp
                                             subsetp)))))
  
  (defret subsetp-of-<fn>-1
    (iff (obs-dom-info-subsetp new-x y)
         (obs-dom-info-subsetp x y))
    :hints(("Goal" :in-theory (enable obs-dom-info-subsetp))))

  (defret subsetp-of-<fn>-2
    (iff (obs-dom-info-subsetp y new-x)
         (obs-dom-info-subsetp y x))
    :hints(("Goal" :in-theory (enable obs-dom-info-subsetp)))))

(define obs-dom-info-intersect ((x obs-dom-info-p) (y obs-dom-info-p))
  :returns (int obs-dom-info-p)
  (b* (((obs-dom-info x))
       ((obs-dom-info y)))
    (if (and x.reached (not (cube-contradictionp x.doms)))
        (if (and y.reached (not (cube-contradictionp y.doms)))
            (make-obs-dom-info-reached (intersection$ x.doms y.doms))
          (obs-dom-info-fix x))
      (obs-dom-info-normalize y)))
  ///
  (local (in-theory (enable obs-dom-info-subsetp
                            obs-dom-info-normalize)))
  
  (local (defthm subsetp-of-intersect-1
           (subsetp (intersection$ x y) x)))
  (local (defthm subsetp-of-intersect-2
           (subsetp (intersection$ x y) y)))
  (local (defthm lit-negate-by-equal-lit-negate
           (implies (equal (lit-negate x) (lit-fix y))
                    (equal (lit-negate y) (lit-fix x)))))
  (local (defthm cube-contradictionp-implies-not-member
           (implies (and (not (cube-contradictionp y))
                         (member-equal (lit-negate x) (lit-list-fix y)))
                    (not (member-equal (lit-fix x) (lit-list-fix y))))
           :hints(("Goal" :in-theory (enable cube-contradictionp lit-list-fix)))))
  (local (defthm cube-contradiction-by-subsetp
           (implies (and (subsetp (lit-list-fix x) (lit-list-fix y))
                         (not (cube-contradictionp y)))
                    (not (cube-contradictionp x)))
           :hints(("Goal" :in-theory (enable cube-contradictionp lit-list-fix)
                   :induct (lit-list-fix x)))))

  (local (defthm cube-contradiction-by-subsetp-lits
           (implies (and (subsetp x y)
                         (lit-listp x) (lit-listp y)
                         (not (cube-contradictionp y)))
                    (not (cube-contradictionp x)))
           :hints (("goal" :use ((:instance cube-contradiction-by-subsetp))
                    :in-theory (disable cube-contradiction-by-subsetp)))))
  
  (defret obs-dom-info-subsetp-of-obs-dom-info-intersect-1
    (obs-dom-info-subsetp int x))

  (defret obs-dom-info-subsetp-of-obs-dom-info-intersect-2
    (obs-dom-info-subsetp int y))

  (defret obs-dom-info-intersect-preserves-obs-dom-info-subsetp-1
    (implies (obs-dom-info-subsetp x z)
             (obs-dom-info-subsetp int z)))
  
  (defret obs-dom-info-intersect-preserves-obs-dom-info-subsetp-2
    (implies (obs-dom-info-subsetp y z)
             (obs-dom-info-subsetp int z))))


(define obs-dom-info-sweep-node ((n natp) obs-dom-array aignet)
  :guard (and (id-existsp n aignet)
              (< n (dominfo-length obs-dom-array)))
  :returns new-obs-dom-array
  (b* ((slot0 (id->slot n 0 aignet))
       (type (snode->type slot0))
       (node-info (get-dominfo n obs-dom-array)))
    (aignet-case
      type
      :gate
      (b* ((lit0 (snode->fanin slot0))
           (slot1 (id->slot n 1 aignet))
           (lit1 (snode->fanin slot1))
           (lit0-info (get-dominfo (lit->var lit0) obs-dom-array))
           (new-lit0-info (obs-dom-info-intersect
                           (obs-dom-info-for-child node-info n 0 aignet) lit0-info))
           (obs-dom-array (set-dominfo (lit->var lit0) new-lit0-info obs-dom-array))
           (lit1-info (get-dominfo (lit->var lit1) obs-dom-array))
           (new-lit1-info (obs-dom-info-intersect
                           (obs-dom-info-for-child node-info n 1 aignet) lit1-info)))
        (set-dominfo (lit->var lit1) new-lit1-info obs-dom-array))
      :otherwise obs-dom-array))
  ///
  (defret <fn>-length
    (implies (< (nfix n) (len obs-dom-array))
             (equal (len new-obs-dom-array)
                    (len obs-dom-array))))

  (defret <fn>-preserves-correct
    (implies (and (< (nfix n) (nfix i))
                  (obs-dom-fanout-ok i obs-dom-array aignet))
             (obs-dom-fanout-ok i new-obs-dom-array aignet))
    :hints(("Goal" :in-theory (enable obs-dom-fanout-ok)
            :do-not-induct t)))

  (defret <fn>-sets-correct
    (obs-dom-fanout-ok n new-obs-dom-array aignet)
    :hints(("Goal" :in-theory (enable obs-dom-fanout-ok)
            :do-not-induct t))))



(define obs-dom-info-sweep-nodes ((n natp) obs-dom-array aignet)
  :guard (and (<= n (num-fanins aignet))
              (<= n (dominfo-length obs-dom-array)))
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  :returns new-obs-dom-array
  (b* (((when (zp n))
        obs-dom-array)
       (obs-dom-array (obs-dom-info-sweep-node (1- n) obs-dom-array aignet)))
    (obs-dom-info-sweep-nodes (1- n) obs-dom-array aignet))
  ///
  (defret <fn>-length
    (implies (<= (nfix n) (len obs-dom-array))
             (equal (len new-obs-dom-array)
                    (len obs-dom-array))))

  (defret <fn>-preserves-correct
    (implies (and (<= (nfix n) (nfix i))
                  (obs-dom-fanout-ok i obs-dom-array aignet))
             (obs-dom-fanout-ok i new-obs-dom-array aignet)))

  (defret <fn>-sets-correct
    (implies (< (nfix i) (nfix n))
             (obs-dom-fanout-ok i new-obs-dom-array aignet))))


(defsection obs-dom-array-correct
  (defthmd obs-dom-fanout-ok-out-of-bounds
    (implies (< (fanin-count aignet) (nfix n))
             (obs-dom-fanout-ok n obs-dom-array aignet))
    :hints(("Goal" :in-theory (enable obs-dom-fanout-ok))))
  
  (defun-sk obs-dom-array-correct (obs-dom-array aignet)
    (forall fanout
            (obs-dom-fanout-ok fanout obs-dom-array aignet))
    :rewrite :direct)

  (in-theory (disable obs-dom-array-correct)))



(define path-contains-and-siblings ((x lit-listp) (sink natp) (path bit-listp) aignet)
  :guard (and (id-existsp sink aignet)
              (path-existsp sink path aignet))
  (if (atom x)
      nil
    (and (path-contains-and-sibling (car x) sink path aignet)
         (path-contains-and-siblings (cdr x) sink path aignet)))
  ///
  (defthm path-contains-and-siblings-implies-member
    (implies (and (member lit x)
                  (path-contains-and-siblings x sink path aignet)
                  (litp lit) (lit-listp x))
             (path-contains-and-sibling lit sink path aignet))))

(define path-last ((x bit-listp))
  :guard (consp x)
  :returns (last bitp :rule-classes :type-prescription)
  (lbfix (car (last x))))

(define path-butlast ((x bit-listp))
  :guard (consp x)
  :returns (prefix bit-listp)
  (bit-list-fix (butlast x 1))
  ///
  (defret len-of-<fn>
    (implies (consp x)
             (equal (len prefix) (+ -1 (len x)))))
  
  (defret path-exists-of-path-butlast
    (implies (path-existsp sink x aignet)
             (path-existsp sink prefix aignet))
    :hints(("Goal" :in-theory (enable path-existsp))))

  (local (defthm len-equal-0
           (equal (equal (len x) 0)
                  (not (consp x)))))

  (local (in-theory (disable satlink::equal-of-lit-fix-backchain)))

  (defret path-endpoint-child-of-path-butlast-when-last-0
    (implies (and (equal (path-last x) 0)
                  (path-existsp sink x aignet)
                  (consp x))
             (equal (lit->var (fanin :gate0 (lookup-id (path-endpoint sink prefix aignet) aignet)))
                    (path-endpoint sink x aignet)))
    :hints(("Goal" :in-theory (enable (:i path-endpoint) path-last)
            :induct (path-endpoint sink x aignet)
            :expand ((path-endpoint sink x aignet)
                     (path-existsp sink x aignet)))
           (and stable-under-simplificationp
                '(:expand ((:free (sink) (path-endpoint sink (cdr x) aignet))
                           (:free (sink) (path-existsp sink (cdr x) aignet)))))))

  (defthm path-contains-and-sibling-in-terms-of-butlast
    (implies (consp path)
             (equal (path-contains-and-sibling x sink path aignet)
                    (or (path-contains-and-sibling x sink (path-butlast path) aignet)
                        (let ((sink2 (path-endpoint sink (path-butlast path) aignet)))
                          (and (equal (stype (car (lookup-id sink2 aignet))) :and)
                               (equal (fanin (if (eql (path-last path) 1) :gate0 :gate1)
                                             (lookup-id sink2 aignet))
                                      (lit-fix x)))))))
    :hints(("Goal" :in-theory (enable path-last (:i path-endpoint))
            :induct (path-endpoint sink path aignet)
            :expand ((:free (path) (path-endpoint sink path aignet))
                     (:free (path) (path-contains-and-sibling x sink path aignet))))
           (and stable-under-simplificationp
                '(:expand ((:free (sink) (path-endpoint sink (cdr path) aignet))
                           (:free (sink) (path-contains-and-sibling x sink (cdr path) aignet)))))))

  (defthm path-contains-contradictory-siblings-in-terms-of-butlast
    (implies (consp path)
             (equal (path-contains-contradictory-siblings sink path aignet)
                    (or (path-contains-contradictory-siblings sink (path-butlast path) aignet)
                        (let ((sink2 (path-endpoint sink (path-butlast path) aignet)))
                          (and (equal (stype (car (lookup-id sink2 aignet))) :and)
                               (path-contains-and-sibling
                                (lit-negate (fanin (if (eql (path-last path) 1) :gate0 :gate1)
                                                   (lookup-id sink2 aignet)))
                                sink
                                (path-butlast path) aignet))))))
    :hints(("Goal" :in-theory (enable path-last (:i path-endpoint))
            :induct (path-endpoint sink path aignet)
            :expand ((:free (path) (path-endpoint sink path aignet))
                     (:free (path) (path-contains-contradictory-siblings sink path aignet))))
           (and stable-under-simplificationp
                '(:expand ((:free (sink) (path-endpoint sink (cdr path) aignet))
                           (:free (sink) (path-contains-contradictory-siblings sink (cdr path) aignet))
                           (:free (x sink) (path-contains-and-sibling x sink (cdr path) aignet))))))))


(define path-induct-reverse ((x bit-listp))
  :measure (len x)
  (if (atom x)
      (bit-list-fix x)
    (path-induct-reverse (path-butlast x))))


(defsection obs-dom-array-implies-path-contains-dominators

  

(defthm obs-dom-array-implies-path-contains-dominators
  (implies (and (obs-dom-array-correct obs-dom-array aignet)
                (path-existsp sink path aignet)
                (not (path-contains-contradictory-siblings sink path aignet))
                (obs-dom-info->reached (nth sink obs-dom-array))
                (equal (obs-dom-info->doms (nth sink obs-dom-array)) nil))
           (let ((source (path-endpoint sink path aignet)))
             (and (obs-dom-info->reached (nth source aignet))
                  (path-contains-and-siblings
                   (obs-dom-info->doms source) sink path aignet))))
  :hints (("goal" :induct (path-induct-reverse path)
           :in-theory (enable (:i path-induct-reverse)))))
                
  









;; For each node starting at the outputs and working our way back, we need to
;; find the intersection of the observability dominators among all the fanouts,
;; with two exceptions: (1) a node connected to a CO has no observability
;; dominators and (2) a node whose only fanout is an AND gate additionally has its sibling
;; as an observability dominator.

;; To track this easily, we'll sweep first over the COs and then backwards over
;; the nodes.  At all times, each node tracks its observability info, which is either
;;   - T, meaning it hasn't been found to be observable yet
;;   - a list of literals, the possible observability dominators from the fanouts swept so far.


;; What invariant is maintained by this algorithm?  Once a node's observability
;; info has been completed, it suggests a set of conditions under which the
;; node is known not to be observable:
;;  - if not reached (T) , then it's never observable
;;  - if some dominator evaluates to 0, it's not observable.
;; This is formalized as obs-dom-info-observable-p.

;; When we're all done with a node, it'll be the case that when it is not
;; observable (under some inputs), it can be toggled without causing a change
;; in value in any node that is observable (under those inputs).  Call this
;; property OBSERVABILITY-DONE-INVARIANT.

;; But until we're done with a node, what does its observability info mean?
;; When we've swept some but not all of its fanouts, a toggle in that node
;; could still cause a change in some fanout that has been swept.  E.g. if node
;; A is a direct fanin of B, but also a fanin of C which is the other fanin of
;; B, and we have swept B but not C, then A's observability info might seem to
;; allow it to be toggled without affecting B, but in fact it could still
;; affect B through C.  Similarly, it could affect B through a longer chain.

;; So instead we'll state an invariant in terms of direct fanouts of A that
;; have been swept, and that is more explicitly in terms of the observability
;; structure.  When all direct fanouts of A have been swept, this will imply
;; OBSERVABILITY-DONE-INVARIANT.


(define obs-dom-info-eval ((info obs-dom-info-p)
                           invals regvals aignet)
  :guard (and (<= (num-ins aignet) (bits-length invals))
              (<= (num-regs aignet) (bits-length regvals))
              (obs-dom-info-well-formedp info aignet))
  (b* (((obs-dom-info info)))
    (and info.reached
         (bit->bool (aignet-eval-conjunction info.doms invals regvals aignet)))))
 


;; (define obs-dom-info-intersect ((x obs-dom-info-p)
;;                                 (y obs-dom-info-p))
;;   :returns (int obs-dom-info-p)
;;   (b* (((obs-dom-info x))
;;        ((obs-dom-info y)))
;;     (if (and (not x.reached) (not y.reached))
;;         (make-obs-dom-info-unreached)
;;       (make-obs-dom-info-reached (intersection$ x.doms y.doms))))
;;   ///

;;   (local (defthm aignet-eval-conjunction-when-member
;;            (implies (and (equal (lit-eval x invals regvals aignet) 0)
;;                          (member x y))
;;                     (equal (aignet-eval-conjunction y invals regvals aignet) 0))
;;            :hints(("Goal" :in-theory (enable aignet-eval-conjunction)))))
  
;;   (local (defthm aignet-eval-conjunction-of-intersection
;;            (implies (or (bit->bool (aignet-eval-conjunction x invals regvals aignet))
;;                         (bit->bool (aignet-eval-conjunction y invals regvals aignet)))
;;                     (equal (aignet-eval-conjunction (intersection-equal x y) invals regvals aignet) 1))
;;            :hints(("Goal" :in-theory (enable aignet-eval-conjunction)
;;                    :induct (intersection-equal x y)))))
  
;;   (defret eval-of-<fn>
;;     (implies (or (obs-dom-info-eval x invals regvals aignet)
;;                  (obs-dom-info-eval y invals regvals aignet))
;;              (obs-dom-info-eval int invals regvals aignet))
;;     :hints(("Goal" :in-theory (enable obs-dom-info-eval))))

;;   (local (defthm subsetp-of-intersect-1
;;            (subsetp (intersection$ x y) x)))
;;   (local (defthm subsetp-of-intersect-2
;;            (subsetp (intersection$ x y) y)))
  
;;   (defret obs-dom-info-subsetp-of-intersect-1
;;     (obs-dom-info-subsetp int x)
;;     :hints(("Goal" :in-theory (enable obs-dom-info-subsetp))))

;;   (defret obs-dom-info-subsetp-of-intersect-2
;;     (obs-dom-info-subsetp int y)
;;     :hints(("Goal" :in-theory (enable obs-dom-info-subsetp)))))



                                


;; (define obs-dom-info-combine ((fanout-info obs-dom-info-p)
;;                               (fanin-info obs-dom-info-p)
;;                               (fanout-and-sibling
;;                                maybe-litp
;;                                "sibling of fanin if the fanout is an AND gate"))
;;   :returns (new-fanin-info obs-dom-info-p)
;;   (b* (((obs-dom-info fanout-info))
;;        ((unless fanout-info.reached) (obs-dom-info-fix fanin-info))
;;        ((obs-dom-info fanin-info))
;;        (fanout-and-sibling (maybe-lit-fix fanout-and-sibling))
;;        ((unless fanin-info.reached)
;;         (make-obs-dom-info-reached
;;          (if fanout-and-sibling
;;              (cons fanout-and-sibling fanout-info.doms)
;;            fanout-info.doms)))
;;        (doms1 (intersection$ fanin-info.doms fanout-info.doms))
;;        (doms (if (and fanout-and-sibling
;;                       (member fanout-and-sibling fanin-info.doms)
;;                       (not (member fanout-and-sibling doms1)))
;;                  (cons fanout-and-sibling doms1)
;;                doms1)))
;;     (make-obs-dom-info-reached doms)))

;; ;; check out define-sk?
;; (defun-sk obs-dom-info-sweep-invariant (node sweep-position aignet)
;;   (forall fanout
;;           (implies (<= (nfix sweep-position) (nfix fanout))
                   
;; (include-book "kestrel/utilities/define-sk" :dir :system)







    


(defsection invariants

  (defun-sk obs-dom-info-sweep-invariant (sweep-position obs-dom-array aignet)
    (forall (fanout)
            (implies (and (natp fanout)
                          (<= fanout (fanin-count aignet))
                          (<= (nfix sweep-position) fanout)
                          ;; (not (cube-contradictionp (obs-dom-info->doms (nth fanout obs-dom-array))))
                          )
                     (and ;; (not (cube-contradictionp (obs-dom-info->doms (nth fanout obs-dom-array))))
                          (implies (equal (id->type fanout aignet) (gate-type))
                                   (and (obs-dom-info-subsetp
                                         (nth (lit->var (fanin :gate0 (lookup-id fanout aignet))) obs-dom-array)
                                         (obs-dom-info-for-child
                                          (nth fanout obs-dom-array) fanout 0 aignet))
                                        (obs-dom-info-subsetp
                                         (nth (lit->var (fanin :gate1 (lookup-id fanout aignet))) obs-dom-array)
                                         (obs-dom-info-for-child
                                          (nth fanout obs-dom-array) fanout 1 aignet))
                                        )))))
    :rewrite  :direct)

  (in-theory (disable obs-dom-info-sweep-invariant
                      obs-dom-info-sweep-invariant-necc))

  ;; (defthm obs-dom-info-sweep-invariant-implies-not-contradictionp
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (<= (nfix fanout) (fanin-count aignet))
  ;;                 (<= (nfix sweep-position) (nfix fanout)))
  ;;            (not (cube-contradictionp (obs-dom-info->doms (nth fanout obs-dom-array)))))
  ;;   :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
  ;;                          (fanout (nfix fanout)))))))
  
  


  (local (defthm obs-dom-info-eval-when-contradictionp
           (implies (cube-contradictionp (obs-dom-info->doms x))
                    (not (obs-dom-info-eval x invals regvals aignet)))
           :hints(("Goal" :in-theory (enable obs-dom-info-eval)))))
  
  (defthm obs-dom-info-eval-of-xor-fanin0
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :xor)
                  ;; (case-split (<= (nfix sweep-position) (lit->var (fanin :gate0 (lookup-id node aignet)))))
                  (obs-dom-info-eval (nth node obs-dom-array) invals regvals aignet)
                  (not (equal (fanin :gate0 (lookup-id node aignet))
                              (fanin :gate1 (lookup-id node aignet))))
                  (not (equal (fanin :gate0 (lookup-id node aignet))
                              (lit-negate (fanin :gate1 (lookup-id node aignet))))))
             (obs-dom-info-eval
              (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)
              invals regvals aignet))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies)
             )))

  (defthm obs-dom-info-eval-of-xor-fanin1
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :xor)
                  ;; (case-split (<= (nfix sweep-position) (lit->var (fanin :gate1 (lookup-id node aignet)))))
                  (obs-dom-info-eval (nth node obs-dom-array) invals regvals aignet)
                  (not (equal (fanin :gate0 (lookup-id node aignet))
                              (fanin :gate1 (lookup-id node aignet))))
                  (not (equal (fanin :gate0 (lookup-id node aignet))
                              (lit-negate (fanin :gate1 (lookup-id node aignet))))))
             (obs-dom-info-eval
              (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)
              invals regvals aignet))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies)
             )))

  (defthm obs-dom-info-eval-of-and-fanin0
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  ;; (case-split (<= (nfix sweep-position) (lit->var (fanin :gate0 (lookup-id node aignet)))))
                  (obs-dom-info-eval (nth node obs-dom-array) invals regvals aignet)
                  (case-split (bit->bool (lit-eval (fanin :gate1 (lookup-id node aignet)) invals regvals aignet)))
                  ;; (not (equal (fanin :gate0 (lookup-id node aignet))
                  ;;             (fanin :gate1 (lookup-id node aignet))))
                  (not (equal (fanin :gate0 (lookup-id node aignet))
                              (lit-negate (fanin :gate1 (lookup-id node aignet))))))
             (obs-dom-info-eval
              (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)
              invals regvals aignet))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node))
                          ;; (:instance obs-dom-info-subsetp-implies
                          ;;  (x (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array))
                          ;;  (y (obs-dom-info-add (fanin :gate1 (lookup-id node aignet))
                          ;;                       (nth node obs-dom-array))))
                          )
             :in-theory (enable obs-dom-info-subsetp-implies))))

  (defthm obs-dom-info-eval-of-and-fanin0-self
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  ;; (case-split (<= (nfix sweep-position) (lit->var (fanin :gate0 (lookup-id node aignet)))))
                  (obs-dom-info-eval (nth node obs-dom-array) invals regvals aignet)
                  (equal (fanin :gate0 (lookup-id node aignet))
                         (fanin :gate1 (lookup-id node aignet))))
             (obs-dom-info-eval
              (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)
              invals regvals aignet))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node))
                          ;; (:instance obs-dom-info-subsetp-implies
                          ;;  (x (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array))
                          ;;  (y (obs-dom-info-add (fanin :gate1 (lookup-id node aignet))
                          ;;                       (nth node obs-dom-array))))
                          )
             :in-theory (enable obs-dom-info-subsetp-implies))))



  
  (defthm obs-dom-info-eval-of-and-fanin1
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  ;; (case-split (<= (nfix sweep-position) (lit->var (fanin :gate1 (lookup-id node aignet)))))
                  (obs-dom-info-eval (nth node obs-dom-array) invals regvals aignet)
                  (case-split (bit->bool (lit-eval (fanin :gate0 (lookup-id node aignet)) invals regvals aignet)))
                  (not (equal (fanin :gate0 (lookup-id node aignet))
                              (lit-negate (fanin :gate1 (lookup-id node aignet)))))
                  )
             (obs-dom-info-eval
              (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)
              invals regvals aignet))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies)
             )))


  (defthm obs-dom-info-reached-of-xor-fanin0
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :xor)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split
                    (not (equal (fanin :gate0 (lookup-id node aignet))
                                (fanin :gate1 (lookup-id node aignet)))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  )
             (obs-dom-info->reached (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-reached))))

  (defthm obs-dom-info-reached-of-xor-fanin1
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :xor)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split
                    (not (equal (fanin :gate0 (lookup-id node aignet))
                                (fanin :gate1 (lookup-id node aignet)))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  )
             (obs-dom-info->reached (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-reached))))

  (defthm obs-dom-info-reached-of-and-fanin0
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
                                     (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  )
             (obs-dom-info->reached (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-reached
                                obs-dom-info-subsetp
                                obs-dom-info-add)
             :expand ((:free (a b) (cube-contradictionp (cons a b)))))))

  (defthm obs-dom-info-reached-of-and-fanin1
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  (not (member-equal (lit-negate (fanin :gate0 (lookup-id node aignet)))
                                     (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  )
             (obs-dom-info->reached (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-reached
                                obs-dom-info-subsetp
                                obs-dom-info-add)
             :expand ((:free (a b) (cube-contradictionp (cons a b)))))))

  ;; (defthm obs-dom-info-reached-of-xor-fanin0
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (<= (nfix sweep-position) (nfix node))
  ;;                 (equal (stype (car (lookup-id node aignet))) :xor)
  ;;                 (obs-dom-info->reached (nth node obs-dom-array))
  ;;                 (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array)))))
  ;;            (obs-dom-info->reached (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)))
  ;;   :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
  ;;                          (fanout node)))
  ;;            :in-theory (enable obs-dom-info-subsetp-implies-reached))))

  ;; (defthm obs-dom-info-reached-of-xor-fanin1
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (<= (nfix sweep-position) (nfix node))
  ;;                 (equal (stype (car (lookup-id node aignet))) :xor)
  ;;                 (obs-dom-info->reached (nth node obs-dom-array))
  ;;                 (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array)))))
  ;;            (obs-dom-info->reached (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)))
  ;;   :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
  ;;                          (fanout node)))
  ;;            :in-theory (enable obs-dom-info-subsetp-implies-reached))))
  
  ;; When we're all done with a node, it'll be the case that when it is not
  ;; observable (under some inputs), it can be toggled without causing a change
  ;; in value in any node that is observable (under those inputs).  Call this
  ;; property OBSERVABILITY-DONE-INVARIANT.

  ;; If we don't have a ranking on the inputs to an AND, then this invariant
  ;; isn't inductive: if sink is an AND with both fanins (f0 and f1)
  ;; unobservable due to each other but both toggled when toggling source,
  ;; then this leads to an observable toggle of sink.  It seems that source should be
  ;; observable in this case: its path to f0 cannot have f0 as a dominator, and
  ;; its path to f1 cannot have f1 as a dominator.  
  ;; (defthm observability-done-invariant
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (<= (nfix sweep-position) (nfix source))
  ;;                 (<= (nfix sweep-position) (nfix sink))
  ;;                 ;; source is known not observable under the inputs
  ;;                 (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
  ;;                 ;; sink is observable under the inputs
  ;;                 (obs-dom-info-eval (nth sink obs-dom-array) invals regvals aignet))
  ;;            (equal (id-eval sink invals regvals aignet)
  ;;                   (id-eval-toggle sink source invals regvals aignet)))
  ;;   :hints (("goal" :induct (id-eval-ind sink aignet)
  ;;            :expand ((id-eval sink invals regvals aignet)
  ;;                     (id-eval-toggle sink source invals regvals aignet)
  ;;                     (:free (x) (lit-eval x invals regvals aignet))
  ;;                     (:free (x y) (lit-eval-toggle x y invals regvals aignet))
  ;;                     (:free (x y) (eval-and-of-lits x y invals regvals aignet))
  ;;                     (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
  ;;                     (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
  ;;                     (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))
  ;;            :do-not-induct t
  ;;            ;; :in-theory (disable ACL2::INEQUALITY-WITH-NFIX-HYP-1
  ;;            ;;                     ACL2::INEQUALITY-WITH-NFIX-HYP-2)
  ;;            )
  ;;           ;; (acl2::use-termhint
  ;;           ;;  (b* (((unless (equal (id->type node2 aignet) (gate-type)))
  ;;           ;;        nil)
  ;;           ;;       (xor (equal (id->regp node2 aignet) 1))
  ;;           ;;       (fan0 (lit->var (gate-id->fanin0 node2 aignet)))
  ;;           ;;       (fan1 (lit->var (gate-id->fanin1 node2 aignet)))
  ;;           ;;       ((unless ))
  
  ;;           ))


  
  (defthm obs-dom-info-member-of-xor-fanin0
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :xor)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split
                    (not (equal (fanin :gate0 (lookup-id node aignet))
                                (fanin :gate1 (lookup-id node aignet)))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array)))))
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-member))))

  (defthm obs-dom-info-member-of-xor-fanin1
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :xor)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split
                    (not (equal (fanin :gate0 (lookup-id node aignet))
                                (fanin :gate1 (lookup-id node aignet)))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array)))))
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-member))))

  (defthm obs-dom-info-member-of-and-fanin0
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split (not (equal dom (fanin :gate1 (lookup-id node aignet)))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split
                    (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
                                       (obs-dom-info->doms (nth node obs-dom-array))))))
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-member
                                obs-dom-info-subsetp
                                obs-dom-info-add)
             :expand ((:free (a b) (cube-contradictionp (cons a b)))))))

  (defthm obs-dom-info-member-of-and-fanin0-same
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  ;; (case-split (not (equal dom (fanin :gate1 (lookup-id node aignet)))))
                  (equal (fanin :gate0 (lookup-id node aignet))
                         (fanin :gate1 (lookup-id node aignet)))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array)))))
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var (fanin :gate0 (lookup-id node aignet))) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-member))))

  (defthm obs-dom-info-member-of-and-fanin1
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  (obs-dom-info->reached (nth node obs-dom-array))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split (not (equal dom (fanin :gate0 (lookup-id node aignet)))))
                  (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
                                          (lit-negate (fanin :gate1 (lookup-id node aignet))))))
                  (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split
                    (not (member-equal (lit-negate (fanin :gate0 (lookup-id node aignet)))
                                       (obs-dom-info->doms (nth node obs-dom-array))))))
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var (fanin :gate1 (lookup-id node aignet))) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
                           (fanout node)))
             :in-theory (enable obs-dom-info-subsetp-implies-member
                                obs-dom-info-subsetp
                                obs-dom-info-add)
             :expand ((:free (a b) (cube-contradictionp (cons a b)))))))
  

  ;; If we DON'T treat nodes with contradictory observability dominators as
  ;; unreachable, we can prove (1) unreachable nodes only affect other
  ;; unreachable nodes, and (2) if a "source" node is unobservable under an
  ;; assignment, then toggling it may only affect the value of other "sink"
  ;; nodes that are unobservable. (Specifically, there is an observability
  ;; dominator of source that evaluates to false, if a sink node is reachable
  ;; and does not share that observability dominator, then it cannot be
  ;; affected by toggling the source.)


  ;; However, it would be nice to be able to treat nodes with contradictory
  ;; observability dominators as unreachable!  Not doing so might cause us to
  ;; miss otherwise useful observability dominators.  For example, if A has two
  ;; xor fanouts B and C, B has contradictory dominators D and ~D, and C has
  ;; dominator E, treating B as unreachable allows us to say A has dominator E,
  ;; whereas otherwise it has no dominators.  But doing so causes our proof
  ;; above to unravel (even if we record nodes with contradictory dominators
  ;; separately from unreachable nodes) because an "unreachable" node (one
  ;; which only reaches nodes with contradictory dominators) may affect nodes
  ;; with contradictory dominators, and nodes with contradictory dominators may
  ;; affect nodes without contradictory dominators, only under conditions where
  ;; they are unobservable.

  ;; We'd like to adapt our proof of theorem (2) above so that it works for
  ;; this method.  However, it isn't true anymore that if a source node has an
  ;; observability dominator that evaluates to false, it may only affect nodes
  ;; that share that observability dominator.  For example, if we have A, B, C,
  ;; D, E as in the paragraph above, and E evaluates to false, then A may still
  ;; affect B, which doesn't have E as a dominator.  We hope to instead say
  ;; that if a source node affects a sink node, the source node is
  ;; unobservable, and the sink node is reachable, we will find an
  ;; observability dominator of the sink node that is false.  For the ABCDE
  ;; example, we can choose between D and ~D, whichever is false.  However,
  ;; we'll run into trouble again on AND nodes where both the fanins are false
  ;; but are both affected by toggling the sink.  E.g., if sink = x & y, the
  ;; false dominator of x is y and the false dominator of y is x, neither of
  ;; these need be a dominator for sink.  We need some property of our badguy
  ;; function such that we know that badguy(x)=y and badguy(y)=x aren't both
  ;; true.

  ;; Intuitively, we are getting our badguy dominator literals from either (1)
  ;; the original sink's dominator list, or (2) one of the contradictory
  ;; literals from a node with contradictory dominators.  Let's focus on (2),
  ;; since once we solve the problems with those presumably we'll be able to
  ;; solve the problems with (1), perhaps needing a separate induction.

  ;; When a source has contradictory literals, one of them must be false.  A
  ;; parent node might:
  ;;  1. also have contradictory dominators, either the same or different
  ;;  2. have the false literal as a dominator also
  ;;  3. otherwise, it must be that the parent is an AND node and the sibling of
  ;; the source must be the dominator, in which case that parent node can't be
  ;; affected by the source.
  
  ;; An interesting property of 2. (that is, ~1 & 2) is that then the dominator
  ;; node is a descendant of the parent.  We use this to show that badguy for
  ;; a sink is either a descendant of the sink, or else its negation is also
  ;; a dominator of the sink.

  ;; When we have the annoying case where we have a sink that is an AND node
  ;; and both children dominate each other, we use this property to try and
  ;; untangle them.  Since they can't both be descendants of each other, we
  ;; basically have two cases (modulo symmetry):

  ;; 1) the left fanin is a descendant of the right fanin,
  ;;    ~right and right are dominators of left
  ;;    left is a dominator of right.

  ;; 2) ~right and right are dominators of left
  ;;    ~left and left are dominators of right

  ;; Common to both of these is:
  ;;   ~right and right are dominators of left
  ;;    left is a dominator of right.
  ;; I think this should be impossible.
  
  ;; If we look at the parent node, this means ~right is a dominator. With the
  ;; obs-parent invariant (if a node has a dominator, it must have a reachable
  ;; parent node) we can follow the ~right dominator up the chain to find
  ;; "origin", an AND with one fanin "anc" an ancestor of parent, left, and
  ;; right, and the other fanin ~right.  But now for left to be a dominator of
  ;; right, origin must have left as a dominator.  Again we can follow the left
  ;; dominator up the chain from origin to "origin2", an AND of "anc2" and left.

  ;; Generalizing slightly: if we have a node SINK with (proper) descendants A
  ;; and B, A is a dominator of B, B is a dominator of A, and A is a dominator
  ;; of SINK ==> contradiction.

  ;; Proof: Induct back up the parent chain of SINK. Since A is a dominator of
  ;; SINK, go back up the chain until we reach the AND node where A is a
  ;; dominator.  But since B is a dominator of A, it must be a dominator of
  ;; that AND node.  Now we have another instance of this with A and B
  ;; switched, which we assume true by induction.

  (define ancestor-p ((sink natp) (source natp) aignet)
    :measure (nfix sink)
    :guard (and (id-existsp sink aignet)
                (id-existsp source aignet))
    (b* (((when (eql (nfix sink) (nfix source))) t)
         ((unless (eql (id->type sink aignet) (gate-type))) nil))
      (or (ancestor-p (lit->var (gate-id->fanin0 sink aignet)) source aignet)
          (ancestor-p (lit->var (gate-id->fanin1 sink aignet)) source aignet)))
    ///
    (defthm ancestor-p-self
      (ancestor-p x x aignet)) 
    (defthm ancestor-p-of-fanin
      (implies (and (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
                    (not (ancestor-p sink source aignet)))
               (and (not (ancestor-p (lit->var (fanin :gate0 (lookup-id sink aignet)))
                                       source aignet))
                    (not (ancestor-p (lit->var (fanin :gate1 (lookup-id sink aignet)))
                                       source aignet))))))
  )

(local (in-theory (disable member
                           lookup-id-in-bounds-when-positive
                           lookup-id-out-of-bounds
                           satlink::equal-of-lit-negate-backchain
                           satlink::lit-negate-not-equal-when-vars-mismatch)))



(define obs-parent-p ((parent natp) (child natp) obs-dom-array aignet)
  :guard (and (id-existsp parent aignet)
              (<= (num-fanins aignet) (dominfo-length obs-dom-array)))
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  (b* (((obs-dom-info inf) (get-dominfo parent obs-dom-array))
       (type (id->type parent aignet))
       (xor (eql 1 (id->regp parent aignet)))
       ((unless (and inf.reached
                     (not (cube-contradictionp inf.doms))
                     (eql type (gate-type))))
        nil)
       (fanin0 (gate-id->fanin0 parent aignet))
       (fanin1 (gate-id->fanin1 parent aignet)))
    (and (not (eql fanin0 (lit-negate fanin1)))
         (if xor
             (and (not (eql fanin0 fanin1))
                  (cond ((eql (lnfix child) (lit->var fanin0)) :xor0)
                        ((eql (lnfix child) (lit->var fanin1)) :xor1)))
           (cond ((eql (lnfix child) (lit->var fanin0))
                  (and (not (member (lit-negate fanin1) inf.doms))
                       (if (eql fanin0 fanin1)
                           :and=
                         :and0)))
                 ((eql (lnfix child) (lit->var fanin1))
                  (and (not (member (lit-negate fanin0) inf.doms))
                       :and1))))))
  ///
  (defthm not-obs-parent-p-when-less
    (implies (<= (nfix parent) (nfix child))
             (not (obs-parent-p parent child obs-dom-array aignet))))

  (defthm not-obs-parent-p-when-out-of-bounds
    (implies (<= (num-fanins aignet) (nfix parent))
             (not (obs-parent-p parent child obs-dom-array aignet))))

  (defthm obs-parent-p-means-one-of-the-fanins
    (implies (obs-parent-p parent child obs-dom-array aignet)
             (or (equal (nfix child) (lit->var (fanin :gate0 (lookup-id parent aignet))))
                 (equal (nfix child) (lit->var (fanin :gate1 (lookup-id parent aignet))))))
    :rule-classes nil)

  (defthm obs-parent-p-implies-gate
    (implies (obs-parent-p parent child obs-dom-array aignet)
             (equal (ctype (stype (car (lookup-id parent aignet)))) :gate))
    :rule-classes :forward-chaining))




(define obs-parent-aux ((child natp) (next natp) obs-dom-array aignet)
  :guard (and (<= next (num-fanins aignet))
              (<= (num-fanins aignet) (dominfo-length obs-dom-array)))
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  :returns (parent? acl2::maybe-natp :rule-classes :type-prescription)
  :measure (nfix (- (num-fanins aignet) (nfix next)))
  (b* (((when (mbe :logic (zp (- (num-fanins aignet) (nfix next)))
                   :exec (eql next (num-fanins aignet))))
        nil)
       ((when (obs-parent-p next child obs-dom-array aignet))
        (lnfix next)))
    (obs-parent-aux child (1+ (lnfix next)) obs-dom-array aignet))
  ///
  (defret obs-parent-p-of-<fn>
    (implies parent?
             (obs-parent-p parent? child obs-dom-array aignet)))

  
  (defret not-obs-parent-p-when-not-<fn>
    (implies (and (not parent?)
                  (<= (nfix next) (nfix other)))
             (not (obs-parent-p other child obs-dom-array aignet)))))


(define obs-parent ((child natp) obs-dom-array aignet)
  :guard (<= (num-fanins aignet) (dominfo-length obs-dom-array))
  :returns (parent? acl2::maybe-natp :rule-classes :type-prescription)
  (and (< (lnfix child) (num-fanins aignet))
       (obs-parent-aux child (1+ (lnfix child)) obs-dom-array aignet))
  ///
  (defret obs-parent-p-of-<fn>
    (implies parent?
             (obs-parent-p parent? child obs-dom-array aignet)))

  
  (defret not-obs-parent-p-when-not-<fn>
    (implies (not parent?)
             (not (obs-parent-p other child obs-dom-array aignet)))
    :hints (("goal" :use ((:instance not-obs-parent-p-when-less
                           (parent other))
                          (:instance not-obs-parent-p-when-out-of-bounds
                           (parent other))
                          (:instance not-obs-parent-p-when-not-obs-parent-aux
                           (next (+ 1 (nfix child)))))
             :in-theory (disable not-obs-parent-p-when-out-of-bounds
                                 not-obs-parent-p-when-less
                                 not-obs-parent-p-when-not-obs-parent-aux))))

  (defret obs-parent-greater
    (implies parent?
             (< (nfix child) parent?))
    :hints(("Goal" :in-theory (disable <fn>
                                       obs-parent-p-of-<fn>)
            :use obs-parent-p-of-<fn>))
    :rule-classes :linear)

  (defret obs-parent-in-bounds
    (implies parent?
             (<= parent? (fanin-count aignet)))
    :hints(("Goal" :in-theory (disable <fn>
                                       obs-parent-p-of-<fn>)
            :use obs-parent-p-of-<fn>))
    :rule-classes :linear)

  (defret child-when-obs-parent
    (implies (and parent?
                  (not (equal (nfix child) (lit->var (fanin :gate0 (lookup-id parent? aignet))))))
             (equal (nfix child) (lit->var (fanin :gate1 (lookup-id parent? aignet)))))
    :hints(("Goal" :in-theory (e/d (obs-parent-p)
                                   (<fn>
                                    obs-parent-p-of-<fn>))
            :use obs-parent-p-of-<fn>))
    :rule-classes nil))

;; (define obs-ancestor-p ((sink natp) (source natp) obs-dom-array aignet)
;;   :measure (nfix sink)
;;   :guard (and (id-existsp sink aignet)
;;               (id-existsp source aignet)
;;               (<= (num-fanins aignet) (dominfo-length obs-dom-array)))
;;   (b* (((when (eql (nfix sink) (nfix source))) t)
;;        ((unless (eql (id->type sink aignet) (gate-type))) nil)
;;        (child0 (lit->var (gate-id->fanin0 sink aignet)))
;;        (child1 (lit->var (gate-id->fanin1 sink aignet))))
;;     (or (and (obs-parent-p sink child0 obs-dom-array aignet)
;;              (obs-ancestor-p child0 source obs-dom-array aignet))
;;         (and (obs-parent-p sink child1 obs-dom-array aignet)
;;              (obs-ancestor-p child1 source obs-dom-array aignet))))
;;   ///
;;   (defthm obs-ancestor-p-self
;;     (obs-ancestor-p x x obs-dom-array aignet))

;;   (defthm obs-ancestor-p-of-obs-parent
;;     (implies (and (obs-ancestor-p sink source obs-dom-array aignet)
;;                   (obs-parent-p parent sink obs-dom-array aignet))
;;              (obs-ancestor-p parent source obs-dom-array aignet))
;;     :hints (("goal" :expand ((obs-ancestor-p parent source obs-dom-array aignet))
;;              :use ((:instance obs-parent-p-means-one-of-the-fanins
;;                     (child sink))))))
  
;;   ;; (defthm obs-ancestor-p-of-fanin
;;   ;;   (implies (and (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
;;   ;;                 (not (obs-ancestor-p sink source obs-dom-array aignet)))
;;   ;;            (and (not (obs-ancestor-p (lit->var (fanin :gate0 (lookup-id sink aignet)))
;;   ;;                                        source obs-dom-array aignet))
;;   ;;                 (not (obs-ancestor-p (lit->var (fanin :gate1 (lookup-id sink aignet)))
;;   ;;                                        source obs-dom-array aignet)))))
;;   )


(defsection obs-parent-invar
  (defun-sk obs-parent-invar (obs-dom-array aignet)
    (forall child
            (implies (obs-dom-info->doms (nth child obs-dom-array))
                     (obs-parent child obs-dom-array aignet)))
    :rewrite :direct)

  (in-theory (disable obs-parent-invar))

  (defthm obs-parent-invar-corrollary
    (implies (and (obs-parent-invar obs-dom-array aignet)
                  (not (obs-parent child obs-dom-array aignet)))
             (not (obs-dom-info->doms (nth child obs-dom-array)))))
  
  (defun-nx obs-parent-induct (node obs-dom-array aignet)
    (declare (xargs :measure (nfix (- (num-fanins aignet) (nfix node)))))
    (let ((parent (obs-parent node obs-dom-array aignet)))
      (if parent
          (obs-parent-induct parent obs-dom-array aignet)
        node)))

  
  (defthm ancestor-p-of-obs-parent
    (implies (and (ancestor-p b a aignet)
                  (obs-parent b obs-dom-array aignet))
             (ancestor-p (obs-parent b obs-dom-array aignet) a aignet))
    :hints (("goal" :use ((:instance obs-parent-p-of-obs-parent
                           (child b)))
             :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent))
             :expand ((ancestor-p (obs-parent b obs-dom-array aignet) a aignet)))))

  (defthm ancestor-p-implies-lte-natp1
    (implies (and (ancestor-p b a aignet)
                  (natp a))
             (<= a (nfix b)))
    :hints (("goal" :in-theory (enable ancestor-p)))
    :rule-classes :forward-chaining)

  (defthm ancestor-p-implies-lte-lit->var
    (implies (ancestor-p b (lit->var a) aignet)
             (<= (lit->var a) (nfix b)))
    :hints (("goal" :use ((:instance ancestor-p-implies-lte-natp1
                           (a (lit->var a))))))
    :rule-classes :forward-chaining)

  
  (defthm obs-dom-info-member-of-xor-fanin0-parent
    (let ((node (obs-parent fanin obs-dom-array aignet)))
      (implies (and node
                    (equal (nfix fanin) (lit->var (fanin :gate0 (lookup-id node aignet))))
                    (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                    (<= (nfix sweep-position) (nfix node))
                    (equal (stype (car (lookup-id node aignet))) :xor)
                    ;; (obs-dom-info->reached (nth node obs-dom-array))
                    ;; (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
                    ;; (not (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array))))))
                    (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array))))
               (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-xor-fanin0
                           (node (obs-parent fanin obs-dom-array aignet)))
                          (:instance obs-parent-p-of-obs-parent
                           (child fanin)))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-xor-fanin0
                              obs-parent-p-of-obs-parent)))))

  (defthm obs-dom-info-member-of-xor-fanin1-parent
    (let ((node (obs-parent fanin obs-dom-array aignet)))
      (implies (and node
                    (equal (nfix fanin) (lit->var (fanin :gate1 (lookup-id node aignet))))
                    (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                    (<= (nfix sweep-position) (nfix node))
                    (equal (stype (car (lookup-id node aignet))) :xor)
                    ;; (obs-dom-info->reached (nth node obs-dom-array))
               ;;      (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
                    ;; (not (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array))))))
                    (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array))))
               (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-xor-fanin1
                           (node (obs-parent fanin obs-dom-array aignet)))
                          (:instance obs-parent-p-of-obs-parent
                           (child fanin)))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-xor-fanin1
                              obs-parent-p-of-obs-parent)))))

  (defthm obs-dom-info-member-of-and-fanin0-parent
    (let ((node (obs-parent fanin obs-dom-array aignet)))
      (implies (and node
                    (equal (nfix fanin) (lit->var (fanin :gate0 (lookup-id node aignet))))
                    (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                    (<= (nfix sweep-position) (nfix node))
                    (equal (stype (car (lookup-id node aignet))) :and)
                    ;; (obs-dom-info->reached (nth node obs-dom-array))
                    ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                    ;; (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
                    ;;                    (obs-dom-info->doms (nth node obs-dom-array))))
                    (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array)))
                    (case-split (not (equal dom (fanin :gate1 (lookup-id node aignet)))))
                    (case-split (not (equal (nfix fanin) (lit->var (fanin :gate1 (lookup-id node aignet)))))))
               (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-and-fanin0
                           (node (obs-parent fanin obs-dom-array aignet)))
                          (:instance obs-parent-p-of-obs-parent
                           (child fanin)))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-and-fanin0
                              obs-parent-p-of-obs-parent)))))

  (defthm obs-dom-info-member-of-and-fanin1-parent
    (let ((node (obs-parent fanin obs-dom-array aignet)))
      (implies (and node
                    (equal (nfix fanin) (lit->var (fanin :gate1 (lookup-id node aignet))))
                    (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                    (<= (nfix sweep-position) (nfix node))
                    (equal (stype (car (lookup-id node aignet))) :and)
                    ;; (obs-dom-info->reached (nth node obs-dom-array))
                    ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                    ;; (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
                    ;;                    (obs-dom-info->doms (nth node obs-dom-array))))
                    (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array)))
                    (case-split (not (equal dom (fanin :gate0 (lookup-id node aignet)))))
                    (case-split (not (equal (nfix fanin) (lit->var (fanin :gate0 (lookup-id node aignet)))))))
               (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-and-fanin1
                           (node (obs-parent fanin obs-dom-array aignet)))
                          (:instance obs-parent-p-of-obs-parent
                           (child fanin)))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-and-fanin1
                              obs-parent-p-of-obs-parent)))))

  (defthm obs-dom-info-member-of-and-fanin0-same-parent
    (let ((node (obs-parent fanin obs-dom-array aignet)))
      (implies (and node
                    (equal (nfix fanin) (lit->var (fanin :gate1 (lookup-id node aignet))))
                    (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                    (<= (nfix sweep-position) (nfix node))
                    (equal (stype (car (lookup-id node aignet))) :and)
                    ;; (obs-dom-info->reached (nth node obs-dom-array))
                    (member-equal dom (obs-dom-info->doms (nth fanin obs-dom-array)))
                    (case-split (equal (fanin :gate0 (lookup-id node aignet))
                                       (fanin :gate1 (lookup-id node aignet)))))
               (member-equal dom (obs-dom-info->doms (nth node obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-and-fanin0-same
                           (node (obs-parent fanin obs-dom-array aignet)))
                          (:instance obs-parent-p-of-obs-parent
                           (child fanin)))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-and-fanin0-same
                              obs-parent-p-of-obs-parent))))))


;; If A dominates B and B dominates A, all their observable parents are
;; ANDS of A and B.

;; Otherwise, let P be an obs-parent of A that is not A & B.  Then it must
;; have B as a dominator.  Will show that if there is an obs-ancestor of A
;; that has B as a dominator, then B cannot have A as a dominator.

;; Induct up the obs-parent chain:

;; C is a proper ancestor of A, B dominates C, B dominates A,
;; then A cannot dominate B.
;; If C has no parent then it has no dominator.
;; Otherwise let P be the parent of C.  It is a proper ancestor of A and B.
;; If B dominates P,  theorem holds by IH
;; Otherwise, B does not dominate P and it must be that P = C & B (or symm. B & C).
;; If P is an obs-parent of B, then assuming A dominates B it must also dominate P.

;; Then then we have an inductive instance of the theorem substituting C <- P , B <- A, A <- B
;;  P=C&B is a proper ancestor of B, A dominates P, A dominates B,
;; then B cannot dominate A.

;; Otherwise, P is not an obs-parent of B, which must be because it is
;; dominated by ~C.  Now we have
;; P = C & B
;; ~C dominates P
;; B dominates C
;; B does not dominate P
;; (so ~C can't dominate B, but nothing suggested that, did it?)

;; We'll generalize this by defining a chain of such structures ending in a loop.

;; Base 2-loop:
;; Spine is not a descendant of Base ;; or Dom
;; Dom dominates Spine
;; Dom dominates Base
;; Base dominates Dom

;; The induction walks the parent chain of Spine until it reaches an AND with Dom, Parent.
;; If this is an obs-parent of Dom, then Base must dominate Parent.
;; Otherwise ~Spine must dominate Parent.

;; A chain link:
;; Prev is another chain link or a 2-loop
;; Spine is a proper ancestor of Spine(prev) and not a descendant of Dom
;; Dom dominates Spine
;; Dom(prev) dominates Dom

;; From the base, in the case where the parent is an obs-parent of dom, then
;; base must dominate parent, so we add a chain link with
;;   spine <- parent
;;   dom   <- base
;; Satisfies: parent is a proper ancestor of spine and not a descendant of base
;;            base dominates parent
;;            dom dominates base

;; In the case where the parent is not an obs-parent of dom, then ~spine must
;; dominate parent, so we add a chain link with
;;   spine <- parent
;;   dom <- ~spine
;; Satsifies: parent is a proper ancestor of spine and not a descendant of ~spine
;;            ~spine dominates parent
;;            dom dominates spine

;; From a chain link, in the case where the parent is an obs-parent of dom,
;; then dom(prev) must dominate parent, so we remove the top chain link and
;; modify the previous chain link to set
;;   spine <- parent.
;; Satisfies: parent is a proper ancestor of spine,not a descendant of dom(prev)
;;            dom(prev) dominates parent
;;    If the previous node was a chain link, then we have
;;            dom(prev(prev)) still dominates dom(prev)
;;    Else if the previous node was a 2loop, then we still have
;;            dom(prev) dominates base(prev)
;;            base(prev) dominates dom(prev).

;; Either dom(prev(prev)) or base(prev) (depending on the kind of prev) dominates dom(prev)
;; so if dom does not equal this then it dominates parent and the chain continues.

;; In the case where the parent is not an obs-parent of dom,
;; then ~spine must dominate parent, so add a chain link with
;;    spine <- parent
;;    dom <- ~spine
;; Satisfies: parent is a proper ancestor of spine and not a descendant of ~spine
;;            ~spine dominates parent
;;            dom dominates spine.




;; Spine(prev) is not a descendant of Base(prev)
;; Dom(prev) dominates Spine(prev)
;; Dom(prev) dominates Base(prev)
;; Base(prev) dominates Dom(prev)

;; Spine is a proper ancestor of Spine(prev) and not a descendant of Dom
;; Dom dominates Spine
;; Dom(prev) dominates Dom
;; Dom(prev) = spine
;;   Dom dominates Dom(prev)
;; parent = dom(prev) & dom

;; Induct on a 2loop node with
;; spine = parent
;; base = dom(prev)
;; dom = base(prev)
;; satisfies: parent is not a descendant of dom(prev)
;;   base(prev) dominates parent
;;   base(prev) dominates dom(prev)
;;   dom(prev) dominates base(prev)

;; if base(prev) = dom:
;; Spine(prev) is not a descendant of Base(prev)
;; Dom(prev) dominates Spine(prev)
;; Dom(prev) dominates Base(prev)
;; Base(prev) dominates Dom(prev)

;; Spine is a proper ancestor of Spine(prev) and not a descendant of Dom
;; Dom dominates Spine
;; Dom(prev) dominates Base(prev)
;; Dom(prev) = spine
;;   Base(prev) dominates Dom(prev)
;; parent = dom(prev) & base(prev)




p.base - p.spine - p.dom
          p.dom     base






(fty::deftagsum obs-dom-2lasso
  (:2loop
   ((spine natp :rule-classes :type-prescription)
    (dom litp :rule-classes :type-prescription)
    (base litp :rule-classes :type-prescription)))
  (:chain
   ((spine natp :rule-classes :type-prescription)
    (dom litp :rule-classes :type-prescription)
    (prev obs-dom-2lasso-p))))

(define obs-dom-2lasso->dom ((x obs-dom-2lasso-p))
  (obs-dom-2lasso-case x
    :2loop x.dom
    :chain x.dom)
  ///
  (defthm obs-dom-2lasso->dom-of-2loop
    (equal (obs-dom-2lasso->dom (obs-dom-2lasso-2loop spine dom base))
           (lit-fix dom)))
  (defthm obs-dom-2lasso-2loop->dom-rw
    (implies (obs-dom-2lasso-case x :2loop)
             (equal (obs-dom-2lasso-2loop->dom x)
                    (obs-dom-2lasso->dom x))))
  (defthm obs-dom-2lasso->dom-of-chain
    (equal (obs-dom-2lasso->dom (obs-dom-2lasso-chain spine dom prev))
           (lit-fix dom)))
  (defthm obs-dom-2lasso-chain->dom-rw
    (implies (obs-dom-2lasso-case x :chain)
             (equal (obs-dom-2lasso-chain->dom x)
                    (obs-dom-2lasso->dom x))))
  (local (in-theory (disable obs-dom-2lasso-2loop->dom-rw
                             obs-dom-2lasso-chain->dom-rw))))

(define obs-dom-2lasso->spine ((x obs-dom-2lasso-p))
  (obs-dom-2lasso-case x
    :2loop x.spine
    :chain x.spine)
  ///
  (defthm obs-dom-2lasso->spine-of-2loop
    (equal (obs-dom-2lasso->spine (obs-dom-2lasso-2loop spine dom base))
           (nfix spine)))
  (defthm obs-dom-2lasso-2loop->spine-rw
    (implies (obs-dom-2lasso-case x :2loop)
             (equal (obs-dom-2lasso-2loop->spine x)
                    (obs-dom-2lasso->spine x))))
  (defthm obs-dom-2lasso->spine-of-chain
    (equal (obs-dom-2lasso->spine (obs-dom-2lasso-chain spine dom prev))
           (nfix spine)))
  (defthm obs-dom-2lasso-chain->spine-rw
    (implies (obs-dom-2lasso-case x :chain)
             (equal (obs-dom-2lasso-chain->spine x)
                    (obs-dom-2lasso->spine x))))
  (local (in-theory (disable obs-dom-2lasso-2loop->spine-rw
                             obs-dom-2lasso-chain->spine-rw))))

(define obs-dom-2lasso-correct-p ((x obs-dom-2lasso-p)
                                  obs-dom-array
                                  aignet)
  :measure (obs-dom-2lasso-count x)
  :verify-guards nil
  (obs-dom-2lasso-case x
    :2loop (and ;; (not (ancestor-p (lit->var x.dom) x.spine aignet))
                (not (ancestor-p (lit->var x.base) x.spine aignet))
                ;; (not (equal x.spine (lit->var x.base)))
                ;; (not (equal (lit->var x.base) (lit->var x.dom)))
                ;; (not (equal x.spine (lit->var x.dom)))
                ;; ;; (ancestor-p x.spine (lit->var x.base) aignet)
                ;; (ancestor-p x.spine (lit->var x.dom) aignet)
            
                (member x.dom  (obs-dom-info->doms (get-dominfo x.spine obs-dom-array)))
                (member x.dom  (obs-dom-info->doms (get-dominfo (lit->var x.base) obs-dom-array)))
                (member x.base (obs-dom-info->doms (get-dominfo (lit->var x.dom) obs-dom-array))))
    :chain (b* ((prev-spine (obs-dom-2lasso->spine x.prev))
                (prev-dom (obs-dom-2lasso->dom x.prev)))
             (and ;; (not (equal x.spine prev-spine))
                  ;; (not (equal x.spine (lit->var x.dom)))
              (ancestor-p x.spine prev-spine aignet)
              (not (ancestor-p (lit->var prev-dom) x.spine aignet))
                  (not (ancestor-p (lit->var x.dom) x.spine aignet))
                  (member x.dom    (obs-dom-info->doms (get-dominfo x.spine obs-dom-array)))
                  (member prev-dom (obs-dom-info->doms (get-dominfo (lit->var x.dom) obs-dom-array)))
                  (obs-dom-2lasso-correct-p x.prev obs-dom-array aignet)))))


;; (define obs-dom-2lasso-base ((x obs-dom-2lasso-p))
;;   :measure (obs-dom-2lasso-count x)
;;   (obs-dom-2lasso-case x
;;     :2loop x.base
;;     :chain (obs-dom-2lasso-base x.prev))
;;   ///
;;   (local (defthm ancestor-p-implies-gte
;;            (implies (and (ancestor-p x y aignet)
;;                          (natp x) (natp y))
;;                     (<= y x))
;;            :hints(("Goal" :in-theory (enable ancestor-p)))
;;            :rule-classes :forward-chaining))
;;   (defthm obs-dom-2lasso-spine-greater-than-base
;;     (implies (obs-dom-2lasso-correct-p x obs-dom-array aignet)
;;              (< (lit->var (obs-dom-2lasso-base x)) (obs-dom-2lasso->spine x)))
;;     :hints(("Goal" :in-theory (enable obs-dom-2lasso-correct-p)))
;;     :rule-classes ((:linear :trigger-terms ((obs-dom-2lasso->spine x)))))
;;   (defthm obs-dom-2lasso-base-of-chain
;;     (equal (obs-dom-2lasso-base (obs-dom-2lasso-chain spine dom prev))
;;            (obs-dom-2lasso-base prev))
;;     :hints (("goal" :expand ((obs-dom-2lasso-base (obs-dom-2lasso-chain spine dom prev))))))
;;   (defthm obs-dom-2lasso-base-of-2loop
;;     (equal (obs-dom-2lasso-base (obs-dom-2lasso-2loop spine dom base))
;;            (lit-fix base))
;;     :hints (("goal" :expand ((obs-dom-2lasso-base (obs-dom-2lasso-2loop spine dom base)))))))


(define obs-dom-2lasso-basespine ((x obs-dom-2lasso-p))
  :measure (obs-dom-2lasso-count x)
  (obs-dom-2lasso-case x
    :2loop x.spine
    :chain (obs-dom-2lasso-basespine x.prev))
  ///
  (local (defthm ancestor-p-implies-gte
           (implies (and (ancestor-p x y aignet)
                         (natp x) (natp y))
                    (<= y x))
           :hints(("Goal" :in-theory (enable ancestor-p)))
           :rule-classes :forward-chaining))
  (defthm obs-dom-2lasso-spine-greater-than-basespine
    (implies (obs-dom-2lasso-correct-p x obs-dom-array aignet)
             (<= (obs-dom-2lasso-basespine x) (obs-dom-2lasso->spine x)))
    :hints(("Goal" :in-theory (enable obs-dom-2lasso-correct-p)))
    :rule-classes ((:linear :trigger-terms ((obs-dom-2lasso->spine x)))))
  (defthm obs-dom-2lasso-basespine-of-chain
    (equal (obs-dom-2lasso-basespine (obs-dom-2lasso-chain spine dom prev))
           (obs-dom-2lasso-basespine prev))
    :hints (("goal" :expand ((obs-dom-2lasso-basespine (obs-dom-2lasso-chain spine dom prev))))))
  (defthm obs-dom-2lasso-basespine-of-2loop
    (equal (obs-dom-2lasso-basespine (obs-dom-2lasso-2loop spine dom base))
           (nfix spine))
    :hints (("goal" :expand ((obs-dom-2lasso-basespine (obs-dom-2lasso-2loop spine dom base)))))))

(local (include-book "std/util/termhints" :dir :system))


(define obs-dom-2lasso-ind ((x obs-dom-2lasso-p) obs-dom-array aignet)
  :measure (nfix (- (num-fanins aignet)
                    (obs-dom-2lasso->spine x)))
  :verify-guards nil
  :prepwork ((local (in-theory (disable fanin-id-lte-fanin-count
                                        fanin-id-lte-fanin-count-strong
                                        acl2::nth-when-too-large-cheap
                                        obs-parent-invar-necc
                                        not))))
  (b* ((spine (obs-dom-2lasso->spine x))
       (dom (obs-dom-2lasso->dom x))
       (parent (obs-parent spine obs-dom-array aignet))
       ((unless parent) (obs-dom-2lasso-fix x))
       (xor (eql (id->regp parent aignet) 1))
       (fanin0 (gate-id->fanin0 parent aignet))
       (fanin1 (gate-id->fanin1 parent aignet))
       ;; (spine-child (if (eql (lit->var fanin0) spine) 0 1))
       (dom-child (if (eql (lit->var fanin0) spine)
                      (and (eql fanin1 dom) 1)
                    (and (eql fanin0 dom) 0)))
       ((when (or xor (not dom-child)
                  (eql fanin0 fanin1)))
        (obs-dom-2lasso-ind
         (obs-dom-2lasso-case x
           :2loop (change-obs-dom-2lasso-2loop x :spine parent)
           :chain (change-obs-dom-2lasso-chain x :spine parent))
         obs-dom-array aignet))
       ((when (obs-parent-p parent (lit->var dom) obs-dom-array aignet))
        (obs-dom-2lasso-ind
         (obs-dom-2lasso-case x
           :2loop (make-obs-dom-2lasso-chain
                   :spine parent
                   :dom x.base
                   :prev x)
           :chain (obs-dom-2lasso-case x.prev
                    :2loop ;; (if (eql (lit->var x.prev.dom) x.spine)
                           ;;     (make-obs-dom-2lasso-2loop :spine parent
                           ;;                                :base x.prev.dom
                           ;;                                :dom x.prev.base)
                             (change-obs-dom-2lasso-2loop x.prev :spine parent)
                    :chain (change-obs-dom-2lasso-chain x.prev :spine parent)))
         obs-dom-array aignet)))
    (obs-dom-2lasso-ind
     (make-obs-dom-2lasso-chain
      :spine parent
      :dom (lit-negate (if (eql dom-child 1) fanin0 fanin1)) ;; parent
      :prev x)
     obs-dom-array aignet))
  ///
  (local (in-theory (disable (:d obs-dom-2lasso-ind))))
  (local (defthm fanin1-var-is-child-if-not-fanin0
           (b* ((parent (obs-parent child obs-dom-array aignet)))
             (implies (and parent
                           ;; (case-split
                           ;;   (not (equal (fanin :gate0 (lookup-id parent aignet))
                           ;;               (fanin :gate1 (lookup-id parent aignet)))))
                           ;;(case-split
                           (not (equal (lit->var (fanin :gate0 (lookup-id parent aignet))) (nfix child)))
                           ;; (not (obs-parent-p parent (lit->var (fanin :gate0 (lookup-id parent aignet)))
                           ;;                    obs-dom-array aignet))
                           )
                      (equal (lit->var (fanin :gate1 (lookup-id parent aignet)))
                             (nfix child))))
           :hints (("goal" :use obs-parent-p-of-obs-parent
                    :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent))))))
  
  (local (defthm fanin0-var-is-child-if-not-fanin1
           (b* ((parent (obs-parent child obs-dom-array aignet)))
             (implies (and parent
                           ;; (case-split
                           (not (equal (lit->var (fanin :gate1 (lookup-id parent aignet))) (nfix child)))
                           ;; (not (obs-parent-p parent (lit->var (fanin :gate1 (lookup-id parent aignet)))
                           ;;                    obs-dom-array aignet))
                           )
                      (equal (lit->var (fanin :gate0 (lookup-id parent aignet)))
                             (nfix child))))
           :hints (("goal" :use obs-parent-p-of-obs-parent
                    :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent))))))

  (local (defthm negated-fanin1-when-not-obs-parent-of-fanin0
           (b* ((parent (obs-parent child obs-dom-array aignet)))
             (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                           parent
                           (<= (nfix sweep-position) (nfix child))
                           (not (obs-parent-p parent (lit->var (fanin :gate0 (lookup-id parent aignet)))
                                              obs-dom-array aignet)))
                      (member-equal
                       (lit-negate (fanin :gate1 (lookup-id parent aignet)))
                       (obs-dom-info->doms (nth parent obs-dom-array)))))
           :hints (("goal" :use obs-parent-p-of-obs-parent
                    :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent))))))

  (local (defthm negated-fanin0-when-not-obs-parent-of-fanin1
           (b* ((parent (obs-parent child obs-dom-array aignet)))
             (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                           parent
                           (<= (nfix sweep-position) (nfix child))
                           (not (obs-parent-p parent (lit->var (fanin :gate1 (lookup-id parent aignet)))
                                              obs-dom-array aignet)))
                      (member-equal
                       (lit-negate (fanin :gate0 (lookup-id parent aignet)))
                       (obs-dom-info->doms (nth parent obs-dom-array)))))
           :hints (("goal" :use obs-parent-p-of-obs-parent
                    :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent))))))

  (local (defthm ancestor-p-implies-gte
           (implies (and (ancestor-p x y aignet)
                         (natp x) (natp y))
                    (<= y x))
           :hints(("Goal" :in-theory (enable ancestor-p
                                             fanin-id-lte-fanin-count-strong)))
           :rule-classes :forward-chaining))

  (local (defthm ctype-of-obs-parent
           (b* ((parent (obs-parent child obs-dom-array aignet)))
             (implies parent
                      (equal (ctype (stype (car (lookup-id parent aignet))))
                             :gate)))
           :hints (("goal" :use obs-parent-p-of-obs-parent
                    :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent))))
           :rule-classes :forward-chaining))

  (local (defthm regp-forward-and
           (implies (and (equal (regp (stype x)) 0)
                         (equal (ctype (stype x)) :gate))
                    (equal (stype x) :and))
           :hints(("Goal" :in-theory (enable ctype regp)))
           :rule-classes :forward-chaining))
  (local (defthm regp-forward-xor
           (implies (and (equal (regp (stype x)) 1)
                         (equal (ctype (stype x)) :gate))
                    (equal (stype x) :xor))
           :hints(("Goal" :in-theory (enable ctype regp)))
           :rule-classes :forward-chaining))

  ;; (local (defthm equal-when-equal-of-lit->var
  ;;          (implies (and (litp x) (litp y)
  ;;                        (equal (lit->var x) (lit->var y)))
  ;;                   (equal (equal x y)
  ;;                          (equal (lit->neg x) (lit->neg y))))))


  ;; (local (defthm bit-not-equal-bit
  ;;          (implies (and (not (equal x (b-not y)))
  ;;                        (bitp x) (bitp y))
  ;;                   (equal x y))
  ;;          :hints(("Goal" :in-theory (enable bitp)))
  ;;          :rule-classes :forward-chaining))

  ;; (local (defthm equal-of-lit-negate-when-equal-lit->vars
  ;;          (implies (and (equal (lit->var x) (lit->var y))
  ;;                        (litp x))
  ;;                   (equal (equal x (lit-negate y))
  ;;                          (not (equal x (lit-fix y)))))
  ;;          :hints(("Goal" :in-theory (e/d (satlink::equal-of-lit-negate-backchain)
  ;;                                         (SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
  ;;                  :cases ((equal (lit->neg x) (lit->neg y)))))))

  ;; (defthm obs-dom-info-member-of-and-fanin1-when-obs-parent-p
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (equal fanin (fanin :gate1 (lookup-id parent aignet)))
  ;;                 (obs-parent-p parent (lit->var fanin) obs-dom-array aignet)
  ;;                 (<= (nfix sweep-position) (nfix node))
  ;;                 (equal (stype (car (lookup-id node aignet))) :and)
  ;;                 (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
  ;;                 (case-split (not (equal dom (fanin :gate1 (lookup-id node aignet)))))
  ;;                 (case-split (not (equal (fanin :gate0 (lookup-id node aignet))
  ;;                                         (lit-negate (fanin :gate1 (lookup-id node aignet))))))
  ;;                 (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
  ;;                 (case-split
  ;;                   (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
  ;;                                      (obs-dom-info->doms (nth node obs-dom-array))))))
  ;;            (not (member-equal dom (obs-dom-info->doms (nth (lit->var fanin) obs-dom-array)))))
  ;;   :hints (("goal" :use ((:instance obs-dom-info-sweep-invariant-necc
  ;;                          (fanout node)))
  ;;            :in-theory (enable obs-dom-info-subsetp-implies-member
  ;;                               obs-dom-info-subsetp
  ;;                               obs-dom-info-add)
  ;;            :expand ((:free (a b) (cube-contradictionp (cons a b)))))))

  (defthm obs-dom-info-member-of-and-fanin0-other-parent
    (implies (and (equal fanin (fanin :gate0 (lookup-id node aignet)))
                  (obs-parent-p node (lit->var fanin) obs-dom-array aignet)
                  (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  ;; (obs-dom-info->reached (nth node obs-dom-array))
                  ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  ;; (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
                  ;;                    (obs-dom-info->doms (nth node obs-dom-array))))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split (not (equal dom (fanin :gate1 (lookup-id node aignet)))))
                  (case-split (not (equal (lit->var fanin) (lit->var (fanin :gate1 (lookup-id node aignet))))))
                  )
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var fanin) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-and-fanin0))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-and-fanin0
                              obs-parent-p-of-obs-parent)))))

  (defthm obs-dom-info-member-of-and-fanin1-other-parent
    (implies (and (equal fanin (fanin :gate1 (lookup-id node aignet)))
                  (obs-parent-p node (lit->var fanin) obs-dom-array aignet)
                  (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix node))
                  (equal (stype (car (lookup-id node aignet))) :and)
                  ;; (obs-dom-info->reached (nth node obs-dom-array))
                  ;; (not (cube-contradictionp (obs-dom-info->doms (nth node obs-dom-array))))
                  ;; (not (member-equal (lit-negate (fanin :gate1 (lookup-id node aignet)))
                  ;;                    (obs-dom-info->doms (nth node obs-dom-array))))
                  (not (member-equal dom (obs-dom-info->doms (nth node obs-dom-array))))
                  (case-split (not (equal dom (fanin :gate0 (lookup-id node aignet)))))
                  (case-split (not (equal (lit->var fanin) (lit->var (fanin :gate0 (lookup-id node aignet))))))
                  )
             (not (member-equal dom (obs-dom-info->doms (nth (lit->var fanin) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-info-member-of-and-fanin1))
             :in-theory (e/d (obs-parent-p)
                             (obs-dom-info-member-of-and-fanin1
                              obs-parent-p-of-obs-parent)))))

  (local (defthm ancestor-p-transitive
           (implies (and (ancestor-p a b aignet)
                         (ancestor-p b c aignet))
                    (ancestor-p a c aignet))
           :hints(("Goal" :induct (ancestor-p a b aignet)
                   :in-theory (enable ancestor-p)))))

  ;; (defthm obs-parent-p-fanin1-of-fanin0-parent-when-xor
  ;;   (b* ((parent (obs-parent fanin obs-dom-array aignet)))
  ;;     (implies (and parent
  ;;                   (equal (nfix fanin) (lit->var (fanin :gate0 (lookup-id parent aignet))))
  ;;                   (equal other (fanin :gate1 (lookup-id parent aignet)))
  ;;                   (equal (stype (car (lookup-id parent aignet))) :xor))
  ;;              (obs-parent-p parent (lit->var other) obs-dom-array aignet)))
  ;;   :hints (("goal" :use ((:instance obs-parent-p-of-obs-parent
  ;;                          (child fanin)))
  ;;            :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent)))))

  ;; (defthm obs-parent-p-fanin0-of-fanin1-parent-when-xor
  ;;   (b* ((parent (obs-parent fanin obs-dom-array aignet)))
  ;;     (implies (and parent
  ;;                   (equal (nfix fanin) (lit->var (fanin :gate1 (lookup-id parent aignet))))
  ;;                   (equal other (fanin :gate0 (lookup-id parent aignet)))
  ;;                   (equal (stype (car (lookup-id parent aignet))) :xor))
  ;;              (obs-parent-p parent (lit->var other) obs-dom-array aignet)))
  ;;   :hints (("goal" :use ((:instance obs-parent-p-of-obs-parent
  ;;                          (child fanin)))
  ;;            :in-theory (e/d (obs-parent-p) (obs-parent-p-of-obs-parent)))))

  (defthm fanin-var-of-obs-fanin-when-same-fanins
    (b* ((parent (obs-parent child obs-dom-array aignet)))
      (implies (and parent
                    (equal (fanin :gate0 (lookup-id parent aignet))
                           (fanin :gate1 (lookup-id parent aignet))))
               (and (equal (lit->var (fanin :gate0 (lookup-id parent aignet)))
                           (nfix child))
                    (equal (lit->var (fanin :gate1 (lookup-id parent aignet)))
                           (nfix child)))))
    :hints (("goal" :use FANIN0-VAR-IS-CHILD-IF-NOT-FANIN1
             :in-theory (e/d ()
                             (FANIN0-VAR-IS-CHILD-IF-NOT-FANIN1)))))

  (local (defthmd bit-not-equal-bit
           (implies (and (not (equal x (b-not y)))
                         (bitp x) (bitp y))
                    (equal x y))
           :hints(("Goal" :in-theory (enable bitp)))
           :rule-classes :forward-chaining))
  
  
  (local (defthm arg
           (implies (and (not (equal lit0 lit1))
                         (litp lit0) (litp lit1)
                         (equal (lit->var lit0) (lit->var lit1)))
                    (equal lit0 (lit-negate lit1)))
           :hints(("Goal" ;; :in-theory (e/d (satlink::equal-of-lit-negate-backchain)
                   ;;                        (SATLINK::EQUAL-OF-LIT-NEGATE-COMPONENT-REWRITES))
                   ;; :cases ((equal (lit->neg x) (lit->neg y)))
                   :use ((:instance satlink::make-lit-identity
                          (lit lit0))
                         (:instance satlink::make-lit-identity
                          (lit lit1)))
                   :in-theory (e/d (lit-negate bit-not-equal-bit) (satlink::make-lit-identity))
                   :cases ((equal (lit->neg lit0) (b-not (lit->neg lit1))))))
           :rule-classes nil))


  (local (defthm fanin-equals-negate
           (b* ((lit0 (fanin :gate0 tail))
                (lit1 (fanin :gate1 tail)))
             (implies (and (not (equal lit0 lit1))
                           (equal (lit->var lit0) x))
                      (equal (equal (lit->var lit1) x)
                             (equal lit0 (lit-negate lit1)))))
           :hints (("goal" :use ((:instance arg
                                  (lit0 (fanin :gate0 tail))
                                  (lit1 (fanin :gate1 tail))))))))

  (local (defthm fanin-not-equal-negate-of-obs-parent
           (b* ((parent (obs-parent child obs-dom-array aignet)))
             (implies parent
                      (and (not (equal (fanin :gate1 (lookup-id parent aignet))
                                       (lit-negate (fanin :gate0 (lookup-id parent aignet)))))
                           (not (equal (fanin :gate0 (lookup-id parent aignet))
                                       (lit-negate (fanin :gate1 (lookup-id parent aignet))))))))
           :hints (("goal" :use ((:instance obs-parent-p-of-obs-parent))
                    :in-theory (e/d (obs-parent-p)
                                    (obs-parent-p-of-obs-parent))))
           :rule-classes :forward-chaining))
  
  (local (defthm fanin-equals-negate2
           (b* ((lit1 (fanin :gate0 tail))
                (lit0 (fanin :gate1 tail)))
             (implies (and (not (equal lit0 lit1))
                           (equal (lit->var lit0) x))
                      (equal (equal (lit->var lit1) x)
                             (equal lit0 (lit-negate lit1)))))
           :hints (("goal" :use ((:instance arg
                                  (lit0 (fanin :gate1 tail))
                                  (lit1 (fanin :gate0 tail))))))))


  (local (defthm ancestor-p-implies-not-fanin
           (implies (and (ancestor-p (lit->var x) parent aignet)
                         (equal (ctype (stype (car (lookup-id parent aignet)))) :gate))
                    (and (not (equal x (fanin :gate0 (lookup-id parent aignet))))
                         (not (equal x (fanin :gate1 (lookup-id parent aignet))))))
           :hints (("goal" :use ((:instance ancestor-p-implies-gte
                                  (y (nfix parent))
                                  (x (lit->var x))))
                    :in-theory (e/d (fanin-id-lte-fanin-count-strong)
                                    (ancestor-p-implies-gte))))))
  (defthm obs-dom-2lasso-nonexistence
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (<= (nfix sweep-position) (obs-dom-2lasso-basespine x)))
             (not (obs-dom-2lasso-correct-p x obs-dom-array aignet)))
    :hints (("goal" :induct (obs-dom-2lasso-ind x obs-dom-array aignet)
             :expand ((obs-dom-2lasso-correct-p x obs-dom-array aignet)
                      (obs-dom-2lasso-basespine x)
                      (:free (spine dom prev)
                       (obs-dom-2lasso-correct-p
                        (obs-dom-2lasso-chain spine dom prev) obs-dom-array aignet))
                      (:free (spine dom base)
                       (obs-dom-2lasso-correct-p
                        (obs-dom-2lasso-2loop spine dom base) obs-dom-array aignet)))
             ;; :do-not-induct t
             )
            (acl2::use-termhint
             (b* ((spine (obs-dom-2lasso->spine x))
                  (dom (obs-dom-2lasso->dom x))
                  (parent (obs-parent spine obs-dom-array aignet))
                  (regular-expands
                   '((obs-dom-2lasso-correct-p x obs-dom-array aignet)
                     (obs-dom-2lasso-basespine x)
                     (:free (spine dom x)
                      (obs-dom-2lasso-correct-p
                       (obs-dom-2lasso-chain spine dom x) obs-dom-array aignet))
                     (:free (spine dom base)
                      (obs-dom-2lasso-correct-p
                       (obs-dom-2lasso-2loop spine dom base) obs-dom-array aignet))))
                  (more-expands
                   (and (equal (stype (car (lookup-id parent aignet))) :and)
                        (obs-parent-p parent (lit->var dom) obs-dom-array aignet)
                        (obs-dom-2lasso-case x
                          :chain
                          `((obs-dom-2lasso-correct-p ,(acl2::hq x.prev)
                                                      obs-dom-array aignet)
                            (obs-dom-2lasso-basespine ,(acl2::hq x.prev)))
                          :otherwise nil)))
                  (xor-casesplit
                   (and (equal (stype (car (lookup-id parent aignet))) :xor)
                        '(:cases ((equal (lit->var (fanin :gate0 (lookup-id (obs-parent (obs-dom-2lasso->spine x)
                                                                                        obs-dom-array aignet)
                                                                            aignet)))
                                         (obs-dom-2lasso->spine x))))))
                  )
               `(:expand ,(append more-expands regular-expands)
                 ,@xor-casesplit)))
            ;; (and stable-under-simplificationp
            ;;      '(:in-theory (enable fanin-equals-negate)))
            ))

  (local (defthm equal-of-lit-negate
           (implies (and (litp x) (litp y))
                    (equal (equal (lit-negate x) y)
                           (equal (lit-negate y) x)))
           :rule-classes ((:rewrite :loop-stopper ((x y))))))
 

  (defthm no-self-domination
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (<= (nfix sweep-position) (lit->var x)))
             (not (member x (obs-dom-info->doms (nth (lit->var x) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-2lasso-nonexistence
                           (x (make-obs-dom-2lasso-2loop
                               :base x
                               :dom x
                               :spine (obs-parent (lit->var x) obs-dom-array aignet)))))
             :cases ((obs-parent (lit->var x) obs-dom-array aignet))
             :in-theory (e/d (obs-dom-2lasso-correct-p)
                             (obs-dom-2lasso-nonexistence)))
            (and stable-under-simplificationp
                 '(:use ((:instance obs-parent-p-of-obs-parent
                          (child (lit->var x))))
                   :in-theory (e/d (obs-parent-p)
                                   (obs-parent-p-of-obs-parent
                                    fanin1-var-is-child-if-not-fanin0
                                    fanin0-var-is-child-if-not-fanin1
                                    fanin-not-equal-negate-of-obs-parent
                                    ctype-of-obs-parent))
                   :cases ((equal (stype (car (lookup-id (obs-parent (lit->var x)
                                                                     obs-dom-array aignet)
                                                         aignet)))
                                  :and))))))

  ;; (defthm not-ancestor-when-obs-parent-p
  ;;   (implies (obs-parent-p parent child obs-dom-array aignet)
  ;;            (not (ancestor-p child parent aignet)))
  ;;   :hints(("Goal" :in-theory (enable obs-parent-p
  ;;                                     fanin-id-lte-fanin-count-strong))))
  
  (defthm no-mutual-domination
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (obs-parent-p parent (lit->var x) obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix parent))
                  (not (equal (fanin :gate0 (lookup-id parent aignet)) (lit-fix y)))
                  (not (equal (fanin :gate1 (lookup-id parent aignet)) (lit-fix y)))
                  (member x (obs-dom-info->doms (nth (lit->var y) obs-dom-array))))
             (not (member y (obs-dom-info->doms (nth (lit->var x) obs-dom-array)))))
    :hints (("goal" :use ((:instance obs-dom-2lasso-nonexistence
                           (x (make-obs-dom-2lasso-2loop
                               :base x
                               :dom y
                               :spine parent))))
             :in-theory (e/d (obs-dom-2lasso-correct-p
                              obs-parent-p
                              fanin-id-lte-fanin-count-strong)
                             (obs-dom-2lasso-nonexistence)))
            (and stable-under-simplificationp
                 '(:cases ((equal (stype (car (lookup-id parent aignet)))
                                  :and)))))))



;; (local (in-theory (disable lookup-id-in-bounds-when-positive
;;                            lookup-id-out-of-bounds
;;                            satlink::equal-of-lit-negate-backchain
;;                            acl2::nth-when-too-large-cheap
;;                            true-listp-lookup-id-of-node-listp
;;                            member-equal)))

;; (define contradictory-literal-badguy ((sink natp) (source natp)
;;                                       invals regvals aignet obs-dom-array)
;;   :measure (nfix sink)
;;   :returns (badguy maybe-litp)
;;   :guard (and (id-existsp sink aignet)
;;               (id-existsp source aignet)
;;               (<= (num-regs aignet) (bits-length regvals))
;;               (<= (num-ins aignet) (bits-length invals))
;;               (<= (num-fanins aignet) (dominfo-length obs-dom-array)))
;;   :verify-guards nil
;;   (b* ((dominfo (get-dominfo sink obs-dom-array))
;;        ((unless (obs-dom-info->reached dominfo)) nil)
       
;;        ((when (< (nfix sink) (nfix source))) nil)
;;        (contra (cube-contradictionp (obs-dom-info->doms dominfo)))
;;        ((when contra)
;;         (if (bit->bool (lit-eval contra invals regvals aignet))
;;             (lit-negate contra)
;;           contra))
;;        ((when (eql (nfix sink) (nfix source))) nil)
;;        ((unless (eql (id->type sink aignet) (gate-type))) nil)
;;        (fanin0  (gate-id->fanin0 sink aignet))
;;        (fanin1  (gate-id->fanin1 sink aignet))
;;        (xor (eql (id->regp sink aignet) 1))
;;        (badguy0 (contradictory-literal-badguy (lit->var fanin0)
;;                                               source invals regvals aignet obs-dom-array))
;;        ((when (eql fanin0 fanin1))
;;         (if (or xor (not (obs-dom-info->reached dominfo)))
;;             nil
;;           badguy0))
;;        ((when (eql fanin0 (lit-negate fanin1))) nil)
;;        (badguy1 (contradictory-literal-badguy (lit->var fanin1)
;;                                               source invals regvals aignet obs-dom-array))
;;        ((unless (obs-dom-info->reached dominfo)) nil)
;;        ((when (and badguy0 (or xor (not (eql badguy0 fanin1))))) badguy0)
;;        ((when (and badguy1 (or xor (not (eql badguy1 fanin0))))) badguy1))
;;     nil)
;;   ///
;;   (local (in-theory (disable (:d contradictory-literal-badguy))))
;;   (defret contradictory-literal-badguy-when-less
;;     (implies (< (nfix sink) (nfix source))
;;              (not badguy))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>)
;;              :do-not-induct t))
;;     :rule-classes ((:rewrite :backchain-limit-lst 1)))
  
  
;;   (defret contradictory-literal-badguy-member
;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                   badguy
;;                   (<= (nfix sweep-position) (nfix sink))
;;                   (<= (nfix sweep-position) (nfix source)))
;;              (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array))))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>))
;;             (and stable-under-simplificationp
;;                  '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))
;;                    :do-not-induct t))))

;;   ;; (local (defthm lit->var-when-lit-negate-equal
;;   ;;          (implies (equal (lit-negate x) y)
;;   ;;                   (equal (lit->var x) (lit->var y)))))

  
;;   (local (defthm lit-var-when-equal-lit-negate
;;            (implies (equal x (lit-negate y))
;;                     (and (equal (lit->neg x) (b-not (lit->neg y)))
;;                          (equal (lit->var x) (lit->var y))))
;;            ;; :rule-classes :forward-chaining
;;            ))

;;   (defret contradictory-literal-badguy-invar
;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                   (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                       (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                   badguy
;;                   (<= (nfix sweep-position) (nfix sink))
;;                   (<= (nfix sweep-position) (nfix source))
;;                   (not (ancestor-p sink (lit->var badguy) aignet)))
;;              ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
;;              (member-equal (lit-negate badguy) (obs-dom-info->doms (nth sink obs-dom-array))))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>)
;;              :do-not-induct t)
;;             (and stable-under-simplificationp
;;                  '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))))
;;             (and stable-under-simplificationp
;;                  '(:expand ((:free (bla) (ancestor-p sink bla aignet)))))))
  
;;   (defthm descendants-antisymm
;;     (implies (and (ancestor-p a b aignet)
;;                   (not (equal (nfix a) (nfix b))))
;;              (not (ancestor-p b a aignet)))
;;     :hints (("goal" :use ((:instance ancestor-p-implies-lte-natp1 (a (nfix a)) (b (nfix b)))
;;                           (:instance ancestor-p-implies-lte-natp1 (b (nfix a)) (a (nfix b)))))))

;;   (defthm ancestor-p-of-fanins
;;     (implies (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
;;              (and (ancestor-p sink (lit->var (fanin :gate0 (lookup-id sink aignet))) aignet)
;;                   (ancestor-p sink (lit->var (fanin :gate1 (lookup-id sink aignet))) aignet)))
;;     :hints (("goal" :expand ((:free (source) (ancestor-p sink source aignet))))))
  


;;   ;; (local (defthm no-mutual-domination-lemma-rw
;;   ;;          (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;   ;;                        (obs-parent-invar obs-dom-array aignet)
;;   ;;                        (bind-free '((sink . sink)) (sink))
;;   ;;                        (<= (nfix sweep-position) (nfix sink))
;;   ;;                        (ancestor-p sink (lit->var a) aignet)
;;   ;;                        (ancestor-p sink (lit->var b) aignet)
;;   ;;                        (not (equal (nfix sink) (lit->var a)))
;;   ;;                        (not (equal (nfix sink) (lit->var b)))
;;   ;;                        (member a (obs-dom-info->doms (nth (lit->var b) obs-dom-array)))
;;   ;;                        (member a (obs-dom-info->doms (nth sink obs-dom-array))))
;;   ;;                   (not (member b (obs-dom-info->doms (nth (lit->var a) obs-dom-array)))))
;;   ;;          :hints (("goal" :use no-mutual-domination-lemma))))

;;   ;; (local (defthm no-mutual-domination-lemma-rw2
;;   ;;          (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;   ;;                        (obs-parent-invar obs-dom-array aignet)
;;   ;;                        (bind-free '((sink . sink)) (sink))
;;   ;;                        (<= (nfix sweep-position) (nfix sink))
;;   ;;                        (ancestor-p sink (lit->var a) aignet)
;;   ;;                        (ancestor-p sink (lit->var b) aignet)
;;   ;;                        (not (equal (nfix sink) (lit->var a)))
;;   ;;                        (not (equal (nfix sink) (lit->var b)))
;;   ;;                        (member b (obs-dom-info->doms (nth (lit->var a) obs-dom-array)))
;;   ;;                        (member a (obs-dom-info->doms (nth sink obs-dom-array))))
;;   ;;                   (not (member a (obs-dom-info->doms (nth (lit->var b) obs-dom-array)))))
;;   ;;          :hints (("goal" :use no-mutual-domination-lemma))))

;;   ;; (defret contradictory-literal-badguy-invar-rw
;;   ;;   (implies (and (equal bg badguy)
;;   ;;                 (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;   ;;                 (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;   ;;                     (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;   ;;                 badguy
;;   ;;                 (<= (nfix sweep-position) (nfix sink))
;;   ;;                 (<= (nfix sweep-position) (nfix source))
;;   ;;                 (not (ancestor-p sink (lit->var badguy) aignet)))
;;   ;;            ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
;;   ;;            (member-equal (lit-negate bg) (obs-dom-info->doms (nth sink obs-dom-array))))
;;   ;;   :hints (("goal" :induct <call>
;;   ;;            :expand (<call>)
;;   ;;            :do-not-induct t)
;;   ;;           (and stable-under-simplificationp
;;   ;;                '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))))
;;   ;;           (and stable-under-simplificationp
;;   ;;                '(:expand ((:free (bla) (ancestor-p sink bla aignet)))))))
  

;;   (defthm cross-literal-badguys
;;     (b* ((a (fanin :gate0 (lookup-id sink aignet)))
;;          (b (fanin :gate1 (lookup-id sink aignet))))
      
;;       (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                     (obs-parent-invar obs-dom-array aignet)
;;                     (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                         (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                     (<= (nfix sweep-position) (nfix source))
;;                     (<= (nfix sweep-position) (lit->var a))
;;                     (<= (nfix sweep-position) (lit->var b))
;;                     (equal (stype (car (lookup-id sink aignet))) :and)
;;                     (obs-dom-info->reached (nth sink obs-dom-array))
;;                     (not (cube-contradictionp (obs-dom-info->doms (nth sink obs-dom-array))))
;;                     (not (equal (lit->var a) (lit->var b)))
;;                     ;; (not (equal a (lit-negate b)))
;;                     (equal (contradictory-literal-badguy (lit->var a) source invals regvals aignet obs-dom-array)
;;                            b))
;;                (not (equal (contradictory-literal-badguy (lit->var b) source invals regvals aignet obs-dom-array)
;;                            a))))
;;     :hints (;; ("goal" :use ((:instance contradictory-literal-badguy-invar
;;             ;;                (sink (lit->var (fanin :gate0 (lookup-id sink aignet)))))
;;             ;;               (:instance contradictory-literal-badguy-invar
;;             ;;                (sink (lit->var (fanin :gate1 (lookup-id sink aignet)))))
;;             ;;               (:instance no-mutual-domination-lemma
;;             ;;                (sink sink)
;;             ;;                (a (lit-negate (fanin :gate0 (lookup-id sink aignet))))
;;             ;;                (b (fanin :gate1 (lookup-id sink aignet))))
;;             ;;               (:instance no-mutual-domination-lemma
;;             ;;                (sink sink)
;;             ;;                (a (lit-negate (fanin :gate1 (lookup-id sink aignet))))
;;             ;;                (b (fanin :gate0 (lookup-id sink aignet))))
;;             ;;               (:instance contradictory-literal-badguy-member
;;             ;;                (sink (lit->var (fanin :gate0 (lookup-id sink aignet)))))
;;             ;;               (:instance contradictory-literal-badguy-member
;;             ;;                (sink (lit->var (fanin :gate1 (lookup-id sink aignet))))))
;;             ;;  :in-theory (disable contradictory-literal-badguy-invar
;;             ;;                      contradictory-literal-badguy-member))
;;             ;; ("goal" :in-theory (disable contradictory-literal-badguy-invar))
;;             (acl2::use-termhint
;;              (b* ((a (fanin :gate0 (lookup-id sink aignet)))
;;                   (b (fanin :gate1 (lookup-id sink aignet)))
;;                   ((obs-dom-info sinkinf) (nth sink obs-dom-array))
;;                   (b-desc-of-a (ancestor-p (lit->var a) (lit->var b) aignet))
;;                   (a-desc-of-b (ancestor-p (lit->var b) (lit->var a) aignet))
;;                   ((when (and a-desc-of-b b-desc-of-a))
;;                    '(:use ((:instance acl2::mark-clause-is-true (x "mutual descendants")))))
;;                   (neg-b-dom-a (member-equal (lit-negate b)
;;                                              (obs-dom-info->doms
;;                                               (nth (lit->var a) obs-dom-array))))
;;                   (neg-a-dom-b (member-equal (lit-negate a)
;;                                              (obs-dom-info->doms
;;                                               (nth (lit->var b) obs-dom-array))))
;;                   ((when (and (not b-desc-of-a) (not neg-b-dom-a)))
;;                    `(:use ((:instance acl2::mark-clause-is-true (x "~b must dominate a"))
;;                            (:instance contradictory-literal-badguy-invar
;;                             (sink (lit->var ,(acl2::hq a)))))
;;                      :in-theory (disable contradictory-literal-badguy-invar)))
;;                   ((when (and (not a-desc-of-b) (not neg-a-dom-b)))
;;                    `(:use ((:instance acl2::mark-clause-is-true (x "~a must dominate b"))
;;                            (:instance contradictory-literal-badguy-invar
;;                             (sink (lit->var ,(acl2::hq b)))))
;;                      :in-theory (disable contradictory-literal-badguy-invar)))
;;                   ((when neg-b-dom-a)
;;                    `(:use ((:instance acl2::mark-clause-is-true (x "~b dominates a"))
;;                            (:instance contradictory-literal-badguy-member
;;                             (sink (lit->var ,(acl2::hq b))))
;;                            (:instance no-mutual-domination-lemma
;;                             (a (lit-negate ,(acl2::hq b)))
;;                             (b ,(acl2::hq a))))
;;                      :in-theory (disable contradictory-literal-badguy-member
;;                                          contradictory-literal-badguy-invar
;;                                          ))))
;;                `(:use ((:instance acl2::mark-clause-is-true (x "~a dominates b"))
;;                        (:instance contradictory-literal-badguy-member
;;                             (sink (lit->var ,(acl2::hq a))))
;;                        (:instance no-mutual-domination-lemma
;;                         (a (lit-negate ,(acl2::hq a)))
;;                         (b ,(acl2::hq b))))
;;                  :in-theory (disable contradictory-literal-badguy-member
;;                                      contradictory-literal-badguy-invar))))))
                  

;;   (local (defthm b-xor-equal-1
;;            (equal (equal 1 (b-xor x y))
;;                   (equal (bfix x) (b-not y)))
;;            :hints(("Goal" :in-theory (enable b-xor)))))

;;   (local (defthm b-xor-when-not-equal-b-not
;;            (implies (and (bitp a)
;;                          (not (equal a (b-not b))))
;;                     (equal (b-xor a b) 0))
;;            :hints(("Goal" :in-theory (enable b-xor bitp)))))
  
;;   (defret contradictory-badguy-eval
;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                   (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                       (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                   badguy
;;                   (<= (nfix sweep-position) (nfix sink))
;;                   (<= (nfix sweep-position) (nfix source)))
;;              ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
;;              (equal (lit-eval badguy invals regvals aignet) 0))
;;     :hints (("goal" :induct <call>
;;              :expand (<call>)
;;              :do-not-induct t)
;;             (and stable-under-simplificationp
;;                  '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))))
;;             (and stable-under-simplificationp
;;                  '(:expand ((:free (bla) (ancestor-p sink bla aignet)))))))

;;   (local (defret contradictory-badguy-eval-rw
;;            (implies (and (equal lit badguy)
;;                          (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                          (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                              (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                          badguy
;;                          (case-split (<= (nfix sweep-position) (nfix sink)))
;;                          (<= (nfix sweep-position) (nfix source)))
;;                     ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
;;                     (equal (id-eval (lit->var lit) invals regvals aignet)
;;                            (lit->neg lit)))
;;            :hints (("goal" :use contradictory-badguy-eval
;;                     :in-theory (disable contradictory-badguy-eval)
;;                     :expand ((lit-eval badguy invals regvals aignet))))))

;;   (local (defret contradictory-badguy-eval-rw2
;;            (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                          (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                              (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                          badguy
;;                          (case-split (<= (nfix sweep-position) (nfix sink)))
;;                          (<= (nfix sweep-position) (nfix source)))
;;                     ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
;;                     (equal (id-eval (lit->var badguy) invals regvals aignet)
;;                            (lit->neg badguy)))
;;            :hints (("goal" :use contradictory-badguy-eval
;;                     :in-theory (disable contradictory-badguy-eval)
;;                     :expand ((lit-eval badguy invals regvals aignet))))))

  
;;   (local (defthm b-xor-b-xors
;;            (equal (b-xor (b-xor n1 x) (b-xor n2 x))
;;                   (b-xor n1 n2))
;;            :hints(("Goal" :in-theory (enable b-xor)))))

;;   (local (defthm b-and-b-xors
;;            (equal (b-and (b-xor n1 x) (b-xor n2 x))
;;                   (b-and (b-not (b-xor n1 n2)) (b-xor n1 x)))
;;            :hints(("Goal" :in-theory (enable b-xor)))))

  
  
;;   (defret contradictory-literals-invariant
;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                   (obs-parent-invar obs-dom-array aignet)
;;                   (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                       (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                   (<= (nfix sweep-position) (nfix sink))
;;                   (<= (nfix sweep-position) (nfix source))
;;                   (aignet-idp sink aignet)
;;                   (obs-dom-info->reached (nth sink obs-dom-array))
;;                   (or (not badguy)
;;                       (bit->bool (lit-eval badguy invals regvals aignet))))
;;              (equal (id-eval sink invals regvals aignet)
;;                     (id-eval-toggle sink source invals regvals aignet)))
;;     :hints (("goal" :induct (id-eval-ind sink aignet)
;;              ;; :do-not-induct t
;;              :expand (<call>
;;                       (id-eval sink invals regvals aignet)
;;                       (:free (source) (id-eval-toggle sink source invals regvals aignet))
;;                       (:free (x) (lit-eval x invals regvals aignet))
;;                       (:free (x y) (lit-eval-toggle x y invals regvals aignet))
;;                       (:free (x y) (eval-and-of-lits x y invals regvals aignet))
;;                       (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
;;                       (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
;;                       (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))))
;;             (and stable-under-simplificationp
;;                  '(:cases ((equal
;;                             (lit->var (fanin :gate0 (lookup-id sink aignet)))
;;                             (lit->var (fanin :gate1 (lookup-id sink aignet)))))))
;;             ;; (and stable-under-simplificationp
;;             ;;      '(:cases ((< (lit->var (fanin :gate0 (lookup-id sink aignet))) (nfix sweep-position)))))
;;             ;; (and stable-under-simplificationp
;;             ;;      '(:cases ((< (lit->var (fanin :gate1 (lookup-id sink aignet))) (nfix sweep-position)))))
;;             ;; (and stable-under-simplificationp
;;             ;;      '(:cases ((cube-contradictionp (obs-dom-info->doms (nth sink obs-dom-array))))))
;;             ))

;;   (local (defthm aignet-eval-conjunction-when-member
;;            (implies (and (equal (lit-eval lit invals regvals aignet) 0)
;;                          (member lit lits))
;;                     (equal (aignet-eval-conjunction lits invals regvals aignet) 0))
;;            :hints(("Goal" :in-theory (enable aignet-eval-conjunction)))))
  
;;   (defthm unreachable-observability-invariant
;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                   (obs-parent-invar obs-dom-array aignet)
;;                   (or (not (obs-dom-info->reached (nth source obs-dom-array)))
;;                       (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
;;                   (<= (nfix sweep-position) (nfix sink))
;;                   (<= (nfix sweep-position) (nfix source))
;;                   (aignet-idp sink aignet)
;;                   (obs-dom-info-eval (nth sink obs-dom-array) invals regvals aignet))
;;              (equal (id-eval-toggle sink source invals regvals aignet)
;;                     (id-eval sink invals regvals aignet)))
;;     :hints (("goal" :use (contradictory-literals-invariant
;;                           (:instance aignet-eval-conjunction-when-member
;;                            (lit (contradictory-literal-badguy sink source invals regvals aignet obs-dom-array))
;;                            (lits (obs-dom-info->doms (nth sink obs-dom-array)))))
;;              :in-theory (e/d (obs-dom-info-eval)
;;                              (contradictory-literals-invariant
;;                               aignet-eval-conjunction-when-member))))))


;; (defsection obs-dominator-not-toggled
;;   ;; Want to show that if a literal is among a source node's observability
;;   ;; dominators, then its value isn't affected by toggling the source
;;   ;; node. Intuitively, if the source node toggles the dominator literal, then
;;   ;; it is a descendant of the literal's node, and therefore there's a path
;;   ;; through it.  But this reasoning doesn't quite work as is: the path could
;;   ;; be unobservable from an output due to contradictory literals, but still
;;   ;; locally visible.  The following example shows how dom can be among the
;;   ;; dominators but also affected by toggling source.  However, dom is only
;;   ;; affected by source when b, and source and dom share ~b as a dominator as
;;   ;; well.

;;   n2 = n1 & ~b      (output)
;;   n1 = source & dom (dominators: ~b)
  
;;   dom = source & b (dominators: ~b)
;;   source           (dominators: dom, ~b)
  
;;   (defthm obs-dominator-not-toggled
;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
;;                   (obs-parent-invar obs-dom-array aignet)
;;                   (<= (nfix sweep-position) (nfix source))
;;                   (member-equal dom (obs-dom-info->doms (nth source obs-dom-array))))
;;              (equal (lit-eval-toggle dom source invals regvals aignet)
;;                     (lit-eval dom invals regvals aignet)))))
                  



(define cube-find-false-lit ((cube lit-listp) invals regvals aignet)
  :returns (false-lit maybe-litp :rule-classes :type-prescription)
  :guard (and (aignet-lit-listp cube aignet)
              (<= (num-ins aignet) (bits-length invals))
              (<= (num-regs aignet) (bits-length regvals)))
  (if (atom cube)
      nil
    (if (eql (lit-eval (car cube) invals regvals aignet) 0)
        (lit-fix (car cube))
      (cube-find-false-lit (cdr cube) invals regvals aignet)))
  ///
  (local (in-theory (enable aignet-eval-conjunction)))
  
  (defret cube-find-false-lit-under-iff
    (iff false-lit
         (equal (aignet-eval-conjunction cube invals regvals aignet) 0)))

  (defret cube-find-false-lit-member
    (implies (and (equal (aignet-eval-conjunction cube invals regvals aignet) 0)
                  (equal cube1 (lit-list-fix cube)))
             (member-equal false-lit cube1)))

  (defret cube-find-false-lit-eval
    (implies (equal (aignet-eval-conjunction cube invals regvals aignet) 0)
             (equal (lit-eval false-lit invals regvals aignet) 0))))


(define observability-badguy ((sink natp) (source natp)
                              invals regvals aignet obs-dom-array)
  :measure (nfix sink)
  :returns (badguy maybe-litp)
  :guard (and (id-existsp sink aignet)
              (id-existsp source aignet)
              (<= (num-regs aignet) (bits-length regvals))
              (<= (num-ins aignet) (bits-length invals))
              (<= (num-fanins aignet) (dominfo-length obs-dom-array)))
  :verify-guards nil
  (b* (((when (< (nfix sink) (nfix source))) nil)
       ((when (eql (nfix sink) (nfix source)))
        (cube-find-false-lit dominfo.doms invals regvals aignet))
       ((unless (eql (id->type sink aignet) (gate-type))) nil)
       (contra (cube-contradictionp dominfo.doms))
       ((when contra)
        (if (bit->bool (lit-eval contra invals regvals aignet))
            (lit-negate contra)
          contra))
       (fanin0  (gate-id->fanin0 sink aignet))
       (fanin1  (gate-id->fanin1 sink aignet))
       (xor (eql (id->regp sink aignet) 1))

       (fanin0-same (eql (lit-eval fanin0 invals regvals aignet)
                         (lit-eval-toggle fanin0 invals regvals aignet)))
       (fanin1-same (eql (lit-eval fanin0 invals regvals aignet)
                         (lit-eval-toggle fanin0 invals regvals aignet)))
       ((when fanin0-same)
        ;; Assuming sink is not preserved by toggle, then fanin0 must evaluate
        ;; to 1 (with and without toggle) and fanin1 must depend on toggle.  If
        ;; sink is not an obs-parent of fanin1, it is because ~fanin0 is a
        ;; dominator of sink, so we return ~fanin0.  Otherwise, the badguy of
        ;; fanin1 cannot be fanin0 because it evaluates to 1, therefore the
        ;; badguy of fanin1 must be a dominator of sink and we return it.
        (b* (((when (and (not xor) (member (lit-negate fanin0) dominfo.doms)))
              (lit-negate fanin0)))
          (observability-badguy (lit->var fanin1) source invals regvals aignet)))
       ((when fanin1-same)
        ;; same argument as above
        (b* (((when (and (not xor) (member (lit-negate fanin1) dominfo.doms)))
              (lit-negate fanin1)))
          (observability-badguy (lit->var fanin0) source invals regvals aignet)))
       ;; Both fanins toggle.  Sink must be an AND because if it were an xor it
       ;; wouldn't toggle.  Fanins must toggle both from 1 to 0 or both from 0
       ;; to 1 since sink toggles.

       ;; Suppose ~fanin0 and ~fanin1 dominate sink.  Then sink isn't an
       ;; obs-parent of either fanin, so their dominators aren't limited to
       ;; sink's.   
       
       ;; If ~fanin0 is a dominator of sink, then sink is not an obs-parent of fanin1,
       ;;  so fanin1's dominators have nothing to do with sink's.  Fanin0's badgu
    (or (b* ((badguy (observability-badguy (lit->var fanin1) source invals regvals aignet)))
          (and (or xor (not (eql badguy0 fanin0))) badguy))
        (b* ((badguy (observability-badguy (lit->var fanin0) source invals regvals aignet)))
          (and (or xor (not (eql badguy0 fanin1))) badguy))))
  ;; Invariant: either badguy = cube-find-false-lit(source doms), or else sink
  ;; is not a dominator of badguy.

  ;; If 

  
  (b* (((obs-dom-info dominfo) (get-dominfo sink obs-dom-array))
       ((unless dominfo.reached) nil)
       
       ((when (< (nfix sink) (nfix source))) nil)
       (contra (cube-contradictionp dominfo.doms))
       ((when contra)
        (if (bit->bool (lit-eval contra invals regvals aignet))
            (lit-negate contra)
          contra))
       ((when (eql (nfix sink) (nfix source)))
        (cube-find-false-lit dominfo.doms invals regvals aignet))
       ((unless (eql (id->type sink aignet) (gate-type))) nil)
       (fanin0  (gate-id->fanin0 sink aignet))
       (fanin1  (gate-id->fanin1 sink aignet))
       (xor (eql (id->regp sink aignet) 1))
       ((when (eql fanin0 fanin1))
        (if (or xor (not (obs-dom-info->reached dominfo)))
            nil
          (observability-badguy (lit->var fanin0)
                                      source invals regvals aignet obs-dom-array)))
       ((when (eql fanin0 (lit-negate fanin1))) nil)
       (badguy0 (and (or xor (not (member (lit-negate fanin1) dominfo.doms)))
                     (observability-badguy (lit->var fanin0)
                                           source invals regvals aignet obs-dom-array)))
       (badguy1 (and (or xor (not (member (lit-negate fanin0) dominfo.doms)))
                     (observability-badguy (lit->var fanin1)
                                           source invals regvals aignet obs-dom-array)))
       ((when (and badguy0 (or xor (not (eql badguy0 fanin1))))) badguy0)
       ((when (and badguy1 (or xor (not (eql badguy1 fanin0))))) badguy1))
    nil)
  ///
  (local (in-theory (disable (:d observability-badguy))))
  (defret observability-badguy-when-less
    (implies (< (nfix sink) (nfix source))
             (not badguy))
    :hints (("goal" :induct <call>
             :expand (<call>)
             :do-not-induct t))
    :rule-classes ((:rewrite :backchain-limit-lst 1)))
  
  
  (defret observability-badguy-member
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  badguy
                  (<= (nfix sweep-position) (nfix sink))
                  (<= (nfix sweep-position) (nfix source)))
             (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array))))
    :hints (("goal" :induct <call>
             :expand (<call>))
            (and stable-under-simplificationp
                 '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))
                   :do-not-induct t))))

  ;; (local (defthm lit->var-when-lit-negate-equal
  ;;          (implies (equal (lit-negate x) y)
  ;;                   (equal (lit->var x) (lit->var y)))))

  
  (local (defthm lit-var-when-equal-lit-negate
           (implies (equal x (lit-negate y))
                    (and (equal (lit->neg x) (b-not (lit->neg y)))
                         (equal (lit->var x) (lit->var y))))
           ;; :rule-classes :forward-chaining
           ))

  (defret observability-badguy-invar
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                  badguy
                  (<= (nfix sweep-position) (nfix sink))
                  (<= (nfix sweep-position) (nfix source))
                  (not (ancestor-p sink (lit->var badguy) aignet))
                  (not (equal badguy
                              (cube-find-false-lit
                               (obs-dom-info->doms (nth source obs-dom-array))
                               invals regvals aignet))))
             ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
             (member-equal (lit-negate badguy) (obs-dom-info->doms (nth sink obs-dom-array))))
    :hints (("goal" :induct <call>
             :expand (<call>)
             :do-not-induct t)
            (and stable-under-simplificationp
                 '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))))
            (and stable-under-simplificationp
                 '(:expand ((:free (bla) (ancestor-p sink bla aignet)))))))
  
  (defthm descendants-antisymm
    (implies (and (ancestor-p a b aignet)
                  (not (equal (nfix a) (nfix b))))
             (not (ancestor-p b a aignet)))
    :hints (("goal" :use ((:instance ancestor-p-implies-lte-natp1 (a (nfix a)) (b (nfix b)))
                          (:instance ancestor-p-implies-lte-natp1 (b (nfix a)) (a (nfix b)))))))

  (defthm ancestor-p-of-fanins
    (implies (equal (ctype (stype (car (lookup-id sink aignet)))) :gate)
             (and (ancestor-p sink (lit->var (fanin :gate0 (lookup-id sink aignet))) aignet)
                  (ancestor-p sink (lit->var (fanin :gate1 (lookup-id sink aignet))) aignet)))
    :hints (("goal" :expand ((:free (source) (ancestor-p sink source aignet))))))
  

  ;; Cross-fanin argument:
  ;; The two fanins of an AND gate can't be each other's badguys.
  ;; The badguy of each fanin must be a member of that fanin's dominators AND
  ;;  it must either:
  ;;     1.    equal the particular false literal selected from the source's dominators
  ;;  or 2.    have the negation of the badguy also among its dominators
  ;;  or 3.    be an ancestor of the badguy.

  ;; Neither fanin can have 2., because of no-mutual-domination.  Both can't
  ;; satisfy 3, or they'd be ancestors of each other.  Both can't satisfy 1.,
  ;; or they'd be equal. So we need one to satisfy 1. and the other to satisfy
  ;; 3.

  ;; Suppose fanin0 satisfies 1 and fanin1 satisfies 3.
  ;;   Then fanin1 is the badguy of the source and an ancestor of fanin0.
  ;; 
  
  ;; So a counterexample would look like
  ;;   parent = source & dom
  ;;   dom = f(source)
  
  
  ;; (local (defthm no-mutual-domination-lemma-rw
  ;;          (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                        (obs-parent-invar obs-dom-array aignet)
  ;;                        (bind-free '((sink . sink)) (sink))
  ;;                        (<= (nfix sweep-position) (nfix sink))
  ;;                        (ancestor-p sink (lit->var a) aignet)
  ;;                        (ancestor-p sink (lit->var b) aignet)
  ;;                        (not (equal (nfix sink) (lit->var a)))
  ;;                        (not (equal (nfix sink) (lit->var b)))
  ;;                        (member a (obs-dom-info->doms (nth (lit->var b) obs-dom-array)))
  ;;                        (member a (obs-dom-info->doms (nth sink obs-dom-array))))
  ;;                   (not (member b (obs-dom-info->doms (nth (lit->var a) obs-dom-array)))))
  ;;          :hints (("goal" :use no-mutual-domination-lemma))))

  ;; (local (defthm no-mutual-domination-lemma-rw2
  ;;          (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                        (obs-parent-invar obs-dom-array aignet)
  ;;                        (bind-free '((sink . sink)) (sink))
  ;;                        (<= (nfix sweep-position) (nfix sink))
  ;;                        (ancestor-p sink (lit->var a) aignet)
  ;;                        (ancestor-p sink (lit->var b) aignet)
  ;;                        (not (equal (nfix sink) (lit->var a)))
  ;;                        (not (equal (nfix sink) (lit->var b)))
  ;;                        (member b (obs-dom-info->doms (nth (lit->var a) obs-dom-array)))
  ;;                        (member a (obs-dom-info->doms (nth sink obs-dom-array))))
  ;;                   (not (member a (obs-dom-info->doms (nth (lit->var b) obs-dom-array)))))
  ;;          :hints (("goal" :use no-mutual-domination-lemma))))

  ;; (defret observability-badguy-invar-rw
  ;;   (implies (and (equal bg badguy)
  ;;                 (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (or (not (obs-dom-info->reached (nth source obs-dom-array)))
  ;;                     (cube-contradictionp (obs-dom-info->doms (nth source obs-dom-array))))
  ;;                 badguy
  ;;                 (<= (nfix sweep-position) (nfix sink))
  ;;                 (<= (nfix sweep-position) (nfix source))
  ;;                 (not (ancestor-p sink (lit->var badguy) aignet)))
  ;;            ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
  ;;            (member-equal (lit-negate bg) (obs-dom-info->doms (nth sink obs-dom-array))))
  ;;   :hints (("goal" :induct <call>
  ;;            :expand (<call>)
  ;;            :do-not-induct t)
  ;;           (and stable-under-simplificationp
  ;;                '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))))
  ;;           (and stable-under-simplificationp
  ;;                '(:expand ((:free (bla) (ancestor-p sink bla aignet)))))))
  



  
  ;; (defthm cross-literal-observability-badguys
  ;;   (b* ((a (fanin :gate0 (lookup-id sink aignet)))
  ;;        (b (fanin :gate1 (lookup-id sink aignet))))
      
  ;;     (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                   (obs-parent-invar obs-dom-array aignet)
  ;;                   (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
  ;;                   (<= (nfix sweep-position) (nfix source))
  ;;                   (<= (nfix sweep-position) (lit->var a))
  ;;                   (<= (nfix sweep-position) (lit->var b))
  ;;                   (equal (stype (car (lookup-id sink aignet))) :and)
  ;;                   (obs-dom-info->reached (nth sink obs-dom-array))
  ;;                   (not (cube-contradictionp (obs-dom-info->doms (nth sink obs-dom-array))))
  ;;                   (not (equal (lit->var a) (lit->var b)))

  ;;                   ;; (not (equal a (lit-negate b)))
  ;;                   (equal (observability-badguy (lit->var a) source invals regvals aignet obs-dom-array)
  ;;                          b))
  ;;              (not (equal (observability-badguy (lit->var b) source invals regvals aignet obs-dom-array)
  ;;                          a))))
  ;;   :hints (;; ("goal" :use ((:instance observability-badguy-invar
  ;;           ;;                (sink (lit->var (fanin :gate0 (lookup-id sink aignet)))))
  ;;           ;;               (:instance observability-badguy-invar
  ;;           ;;                (sink (lit->var (fanin :gate1 (lookup-id sink aignet)))))
  ;;           ;;               (:instance no-mutual-domination-lemma
  ;;           ;;                (sink sink)
  ;;           ;;                (a (lit-negate (fanin :gate0 (lookup-id sink aignet))))
  ;;           ;;                (b (fanin :gate1 (lookup-id sink aignet))))
  ;;           ;;               (:instance no-mutual-domination-lemma
  ;;           ;;                (sink sink)
  ;;           ;;                (a (lit-negate (fanin :gate1 (lookup-id sink aignet))))
  ;;           ;;                (b (fanin :gate0 (lookup-id sink aignet))))
  ;;           ;;               (:instance observability-badguy-member
  ;;           ;;                (sink (lit->var (fanin :gate0 (lookup-id sink aignet)))))
  ;;           ;;               (:instance observability-badguy-member
  ;;           ;;                (sink (lit->var (fanin :gate1 (lookup-id sink aignet))))))
  ;;           ;;  :in-theory (disable observability-badguy-invar
  ;;           ;;                      observability-badguy-member))
  ;;           ;; ("goal" :in-theory (disable observability-badguy-invar))
  ;;           (acl2::use-termhint
  ;;            (b* ((a (fanin :gate0 (lookup-id sink aignet)))
  ;;                 (b (fanin :gate1 (lookup-id sink aignet)))
  ;;                 ((obs-dom-info sinkinf) (nth sink obs-dom-array))
  ;;                 (b-desc-of-a (ancestor-p (lit->var a) (lit->var b) aignet))
  ;;                 (a-desc-of-b (ancestor-p (lit->var b) (lit->var a) aignet))
  ;;                 ((when (and a-desc-of-b b-desc-of-a))
  ;;                  '(:use ((:instance acl2::mark-clause-is-true (x "mutual descendants")))))
  ;;                 (neg-b-dom-a (member-equal (lit-negate b)
  ;;                                            (obs-dom-info->doms
  ;;                                             (nth (lit->var a) obs-dom-array))))
  ;;                 (neg-a-dom-b (member-equal (lit-negate a)
  ;;                                            (obs-dom-info->doms
  ;;                                             (nth (lit->var b) obs-dom-array))))
  ;;                 ((when (and (not b-desc-of-a) (not neg-b-dom-a)))
  ;;                  `(:use ((:instance acl2::mark-clause-is-true (x "~b must dominate a"))
  ;;                          (:instance observability-badguy-invar
  ;;                           (sink (lit->var ,(acl2::hq a)))))
  ;;                    :in-theory (disable observability-badguy-invar)))
  ;;                 ((when (and (not a-desc-of-b) (not neg-a-dom-b)))
  ;;                  `(:use ((:instance acl2::mark-clause-is-true (x "~a must dominate b"))
  ;;                          (:instance observability-badguy-invar
  ;;                           (sink (lit->var ,(acl2::hq b)))))
  ;;                    :in-theory (disable observability-badguy-invar)))
  ;;                 ((when neg-b-dom-a)
  ;;                  `(:use ((:instance acl2::mark-clause-is-true (x "~b dominates a"))
  ;;                          (:instance observability-badguy-member
  ;;                           (sink (lit->var ,(acl2::hq b))))
  ;;                          (:instance no-mutual-domination-lemma
  ;;                           (a (lit-negate ,(acl2::hq b)))
  ;;                           (b ,(acl2::hq a))))
  ;;                    :in-theory (disable observability-badguy-member
  ;;                                        observability-badguy-invar
  ;;                                        ))))
  ;;              `(:use ((:instance acl2::mark-clause-is-true (x "~a dominates b"))
  ;;                      (:instance observability-badguy-member
  ;;                           (sink (lit->var ,(acl2::hq a))))
  ;;                      (:instance no-mutual-domination-lemma
  ;;                       (a (lit-negate ,(acl2::hq a)))
  ;;                       (b ,(acl2::hq b))))
  ;;                :in-theory (disable observability-badguy-member
  ;;                                    observability-badguy-invar))))))
                  

  (local (defthm b-xor-equal-1
           (equal (equal 1 (b-xor x y))
                  (equal (bfix x) (b-not y)))
           :hints(("Goal" :in-theory (enable b-xor)))))

  (local (defthm b-xor-when-not-equal-b-not
           (implies (and (bitp a)
                         (not (equal a (b-not b))))
                    (equal (b-xor a b) 0))
           :hints(("Goal" :in-theory (enable b-xor bitp)))))
  
  (defret contradictory-observability-badguy-eval
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                  badguy
                  (<= (nfix sweep-position) (nfix sink))
                  (<= (nfix sweep-position) (nfix source)))
             ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
             (equal (lit-eval badguy invals regvals aignet) 0))
    :hints (("goal" :induct <call>
             :expand (<call>)
             :do-not-induct t)
            (and stable-under-simplificationp
                 '(:cases ((equal (stype (car (lookup-id sink aignet))) :and))))
            (and stable-under-simplificationp
                 '(:expand ((:free (bla) (ancestor-p sink bla aignet)))))))

  (local (defret contradictory-observability-badguy-eval-rw
           (implies (and (equal lit badguy)
                         (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                         (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                         badguy
                         (case-split (<= (nfix sweep-position) (nfix sink)))
                         (<= (nfix sweep-position) (nfix source)))
                    ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
                    (equal (id-eval (lit->var lit) invals regvals aignet)
                           (lit->neg lit)))
           :hints (("goal" :use contradictory-observability-badguy-eval
                    :in-theory (disable contradictory-observability-badguy-eval)
                    :expand ((lit-eval badguy invals regvals aignet))))))

  (local (defret contradictory-observability-badguy-eval-rw2
           (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                         (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                         badguy
                         (case-split (<= (nfix sweep-position) (nfix sink)))
                         (<= (nfix sweep-position) (nfix source)))
                    ;; (and (member-equal badguy (obs-dom-info->doms (nth sink obs-dom-array)))
                    (equal (id-eval (lit->var badguy) invals regvals aignet)
                           (lit->neg badguy)))
           :hints (("goal" :use contradictory-observability-badguy-eval
                    :in-theory (disable contradictory-observability-badguy-eval)
                    :expand ((lit-eval badguy invals regvals aignet))))))

  
  (local (defthm b-xor-b-xors
           (equal (b-xor (b-xor n1 x) (b-xor n2 x))
                  (b-xor n1 n2))
           :hints(("Goal" :in-theory (enable b-xor)))))

  (local (defthm b-and-b-xors
           (equal (b-and (b-xor n1 x) (b-xor n2 x))
                  (b-and (b-not (b-xor n1 n2)) (b-xor n1 x)))
           :hints(("Goal" :in-theory (enable b-xor)))))

  (local (in-theory (enable lit-var-when-equal-lit-negate)))

  (local (defthm aignet-eval-conjunction-of-doms
           (implies (obs-dom-info->reached x)
                    (equal (aignet-eval-conjunction (obs-dom-info->doms x) invals regvals aignet)
                           (bool->bit (obs-dom-info-eval x invals regvals aignet))))
           :hints(("Goal" :in-theory (enable obs-dom-info-eval)))))

  (local (defthm id-eval-toggle-when-not-gate
           (implies (not (Equal (ctype (stype (car (lookup-id sink aignet)))) :gate))
                    (equal (id-eval-toggle sink source invals regvals aignet)
                           (let ((ans (id-eval sink invals regvals aignet)))
                             (if (equal (nfix sink) (nfix source))
                                 (b-not ans)
                               ans))))
           :hints (("goal" :expand ((:free (source) (id-eval-toggle sink source invals regvals aignet))
                                    (id-eval sink invals regvals aignet))))))
                               

  (local (defthm b-xor-b-not-1
           (equal (b-xor (b-not x) y)
                  (b-not (b-xor x y)))
           :hints(("Goal" :in-theory (enable b-xor b-not)))))
  (local (defthm b-xor-b-not-2
           (equal (b-xor x (b-not y))
                  (b-not (b-xor x y)))
           :hints(("Goal" :in-theory (enable b-xor b-not)))))
  
  (defret observability-badguy-invariant
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                  (<= (nfix sweep-position) (nfix sink))
                  (<= (nfix sweep-position) (nfix source))
                  (aignet-idp sink aignet)
                  (not (equal (id-eval sink invals regvals aignet)
                              (id-eval-toggle sink source invals regvals aignet)))
                  (obs-dom-info->reached (nth sink obs-dom-array)))
             (and badguy
                  (equal (lit-eval badguy invals regvals aignet) 0)))
    :hints (("goal" :induct (id-eval-ind sink aignet)
             :do-not-induct t
             :expand (<call>))
            (and stable-under-simplificationp
                 '(:expand
                   ((id-eval sink invals regvals aignet)
                    (:free (source) (id-eval-toggle sink source invals regvals aignet))
                    (:free (x) (lit-eval x invals regvals aignet))
                    (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                    (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                    (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                    (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                    (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))))
            (and stable-under-simplificationp
                 '(:cases ((equal
                            (lit->var (fanin :gate0 (lookup-id sink aignet)))
                            (lit->var (fanin :gate1 (lookup-id sink aignet)))))))
            ;; (and stable-under-simplificationp
            ;;      '(:cases ((< (lit->var (fanin :gate0 (lookup-id sink aignet))) (nfix sweep-position)))))
            ;; (and stable-under-simplificationp
            ;;      '(:cases ((< (lit->var (fanin :gate1 (lookup-id sink aignet))) (nfix sweep-position)))))
            ;; (and stable-under-simplificationp
            ;;      '(:cases ((cube-contradictionp (obs-dom-info->doms (nth sink obs-dom-array))))))
            )
    :otf-flg t)

  (local (defthm aignet-eval-conjunction-when-member
           (implies (and (equal (lit-eval lit invals regvals aignet) 0)
                         (member lit lits))
                    (equal (aignet-eval-conjunction lits invals regvals aignet) 0))
           :hints(("Goal" :in-theory (enable aignet-eval-conjunction)))))
  
  (defthm unreachable-observability-invariant
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                  (<= (nfix sweep-position) (nfix sink))
                  (<= (nfix sweep-position) (nfix source))
                  (aignet-idp sink aignet)
                  (obs-dom-info-eval (nth sink obs-dom-array) invals regvals aignet))
             (equal (id-eval-toggle sink source invals regvals aignet)
                    (id-eval sink invals regvals aignet)))
    :hints (("goal" :use (contradictory-literals-invariant
                          (:instance aignet-eval-conjunction-when-member
                           (lit (observability-badguy sink source invals regvals aignet obs-dom-array))
                           (lits (obs-dom-info->doms (nth sink obs-dom-array)))))
             :in-theory (e/d (obs-dom-info-eval)
                             (contradictory-literals-invariant
                              aignet-eval-conjunction-when-member))))))



(defsection observability-invariant

  ;; (defthm unreachable-observability-invariant
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (obs-parent-invar obs-dom-array aignet)
                  
  ;;                 (<= (nfix sweep-position) (nfix sink))
  ;;                 (<= (nfix sweep-position) (nfix source))
  ;;                 (aignet-idp sink aignet)
  ;;                 (obs-dom-info-eval (nth sink obs-dom-array) invals regvals aignet))
  ;;            (equal (id-eval sink invals regvals aignet)
  ;;                   (id-eval-toggle sink source invals regvals aignet)))
  ;;   :hints (("goal" :use (contradictory-literals-invariant
  ;;                         (:instance aignet-eval-conjunction-when-member
  ;;                          (lit (observability-badguy sink source invals regvals aignet obs-dom-array))
  ;;                          (lits (obs-dom-info->doms (nth sink obs-dom-array)))))
  ;;            :in-theory (e/d (obs-dom-info-eval)
  ;;                            (contradictory-literals-invariant
  ;;                             aignet-eval-conjunction-when-member)))))

  ;; Instead, let's focus on one observability dominator.  If a node is not
  ;; observable, then either it is unreachable or else there is some dominator
  ;; that evaluates to false.  We'll take the unreachable case separately.  Let
  ;; D be the dominator that is false.  We'll show that only other nodes that
  ;; have D as a dominator or are unreachable may be affected by a toggle of
  ;; the node.

  ;; Unreachable nodes only affect other unreachable nodes.  Not true: e.g.,
  ;; n0 = n1 & n2
  ;; n2 = ~n1 & n3
  ;; n3 is unreachable, but n2 is not, and n3 can affect n2.
  ;; (defthm obs-dom-info-eval-when-not-reached
  ;;   (implies (not (obs-dom-info->reached info))
  ;;            (not (obs-dom-info-eval info invals regvals aignet)))
  ;;   :hints(("Goal" :in-theory (enable obs-dom-info-eval))))

  (local (defthm lit-var-when-equal-lit-negate
           (implies (equal x (lit-negate y))
                    (and (equal (lit->neg x) (b-not (lit->neg y)))
                         (equal (lit->var x) (lit->var y))))
           ;; :rule-classes :forward-chaining
           ))

  (local (defthm b-xor-b-xors
           (equal (b-xor (b-xor n1 x) (b-xor n2 x))
                  (b-xor n1 n2))
           :hints(("Goal" :in-theory (enable b-xor)))))

  (local (defthm b-and-b-xors
           (equal (b-and (b-xor n1 x) (b-xor n2 x))
                  (b-and (b-not (b-xor n1 n2)) (b-xor n1 x)))
           :hints(("Goal" :in-theory (enable b-xor)))))
  
  ;; (defthm observability-of-unreachables
  ;;   (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
  ;;                 (<= (nfix sweep-position) (nfix source))
  ;;                 (<= (nfix sweep-position) (nfix sink))
  ;;                 (aignet-idp sink aignet)
  ;;                 (not (obs-dom-info->reached (nth source obs-dom-array)))
  ;;                 (obs-dom-info->reached (nth sink obs-dom-array))
  ;;                 (not (cube-contradictionp (obs-dom-info->doms (nth sink obs-dom-array))))
  ;;                 ;; (obs-dom-info-eval (nth sink obs-dom-array) invals regvals aignet)
  ;;                 )
  ;;            (equal (id-eval sink invals regvals aignet)
  ;;                   (id-eval-toggle sink source invals regvals aignet)))
  ;;   :hints (("goal" :induct (id-eval-ind sink aignet)
  ;;            :expand ((id-eval sink invals regvals aignet)
  ;;                     (id-eval-toggle sink source invals regvals aignet)
  ;;                     (:free (x) (lit-eval x invals regvals aignet))
  ;;                     (:free (x y) (lit-eval-toggle x y invals regvals aignet))
  ;;                     (:free (x y) (eval-and-of-lits x y invals regvals aignet))
  ;;                     (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
  ;;                     (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
  ;;                     (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))))))

  

  
  
  (defthm observability-when-gated
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix source))
                  (<= (nfix sweep-position) (nfix sink))
                  (aignet-idp sink aignet)
                  (member dom (obs-dom-info->doms (nth source obs-dom-array)))
                  (equal (lit-eval dom invals regvals aignet) 0)
                  (obs-dom-info->reached (nth sink obs-dom-array))
                  (not (member dom (obs-dom-info->doms (nth sink obs-dom-array)))))
             (equal (id-eval-toggle sink source invals regvals aignet)
                    (id-eval sink invals regvals aignet)))
    :hints (("goal" :induct (id-eval-ind sink aignet))
            (and stable-under-simplificationp
                 '(:expand ((id-eval sink invals regvals aignet)
                            (id-eval-toggle sink source invals regvals aignet)
                            (:free (x) (lit-eval x invals regvals aignet))
                            (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                            (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                            (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                            (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                            (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))))))


  (defthm observability-correct
    (implies (and (obs-dom-info-sweep-invariant sweep-position obs-dom-array aignet)
                  (obs-parent-invar obs-dom-array aignet)
                  (<= (nfix sweep-position) (nfix source))
                  (<= (nfix sweep-position) (nfix sink))
                  (aignet-idp sink aignet)
                  (not (obs-dom-info-eval (nth source obs-dom-array) invals regvals aignet))
                  (obs-dom-info-eval (nth sink obs-dom-array) invals regvals aignet)
                  ;; (member dom (obs-dom-info->doms (nth source obs-dom-array)))
                  ;; (equal (lit-eval dom invals regvals aignet) 0)
                  ;; (obs-dom-info->reached (nth sink obs-dom-array))
                  ;; (not (member dom (obs-dom-info->doms (nth sink obs-dom-array))))
                  )
             (equal (id-eval-toggle sink source invals regvals aignet)
                    (id-eval sink invals regvals aignet)))
    :hints (("goal" :induct (id-eval-ind sink aignet))
            (and stable-under-simplificationp
                 '(:expand ((id-eval sink invals regvals aignet)
                            (id-eval-toggle sink source invals regvals aignet)
                            (:free (x) (lit-eval x invals regvals aignet))
                            (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                            (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                            (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                            (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                            (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))))))
             
  
  )






(define obs-dom-info-sweep-node ((n natp) obs-dom-array aignet)
  :guard (and (id-existsp n aignet)
              (< n (dominfo-length obs-dom-array)))
  :returns new-obs-dom-array
  (b* ((slot0 (id->slot n 0 aignet))
       (type (snode->type slot0))
       (node-info (obs-dom-info-normalize (get-dominfo n obs-dom-array)))
       (obs-dom-array (set-dominfo n node-info obs-dom-array)))
    (aignet-case
      type
      :gate
      (b* ((lit0 (snode->fanin slot0))
           (slot1 (id->slot n 1 aignet))
           (lit1 (snode->fanin slot1))
           (lit0-info (get-dominfo (lit->var lit0) obs-dom-array))
           (new-lit0-info (obs-dom-info-intersect
                           (obs-dom-info-for-child node-info n 0 aignet) lit0-info))
           (obs-dom-array (set-dominfo (lit->var lit0) new-lit0-info obs-dom-array))
           (lit1-info (get-dominfo (lit->var lit1) obs-dom-array))
           (new-lit1-info (obs-dom-info-intersect
                           (obs-dom-info-for-child node-info n 1 aignet) lit1-info)))
        (set-dominfo (lit->var lit1) new-lit1-info obs-dom-array))
      :otherwise obs-dom-array))
  ///
  (defret <fn>-length
    (implies (< n (len obs-dom-array))
             (equal (len new-obs-dom-array)
                    (len obs-dom-array))))

  (defret <fn>-correct
    ))



(define obs-dom-info-sweep-nodes ((n natp) obs-dom-array aignet)
  :guard (and (<= n (num-fanins aignet))
              (<= n (dominfo-length obs-dom-array)))
  :guard-hints (("goal" :in-theory (enable aignet-idp)))
  :returns new-obs-dom-array
  (b* (((when (zp n))
        obs-dom-array)
       (obs-dom-array (obs-dom-info-sweep-node (1- n) obs-dom-array aignet)))
    (obs-dom-info-sweep-nodes (1- n) obs-dom-array aignet))
  ///
  (defret <fn>-length
    (implies (< n (len obs-dom-array))
             (equal (len new-obs-dom-array)
                    (len obs-dom-array)))))


    



             











;; - :none -- none of its fanouts have been swept
;; - :one-and -- exactly one fanout has been swept and it was an AND gate.
;;               This state additionally stores the fanout gate's dominators
;;               and the sibling literal.
;; - :multi   -- at least one fanout has been swept and either it wasn't an AND 












;; ; Dually, a node N is observable under condition 1 (const true) if it is
;; ; connected to that output.  It is observable under condition A & B if it has a
;; ; fanout AND node where its sibling is A and the AND node is observable under
;; ; condition B.  Its full observability condition is the OR of all the
;; ; observability conditions due to its fanouts.















(define cons-to-each (x y)
  (if (atom y)
      nil
    (cons (cons x (car y))
          (cons-to-each x (cdr y))))
  ///
  (defthm consp-of-cons-to-each
    (equal (consp (cons-to-each x y))
           (consp y)))
  (defthm cons-to-each-of-nil
    (equal (cons-to-each x nil) nil)))



(define path-conjunct-lists ((sink natp) (src natp) aignet)
  :measure (nfix sink)
  :guard (id-existsp sink aignet)
  :returns (conj-lists lit-list-listp)
  :prepwork ((local (defthm lit-list-listp-of-cons-to-each
                      (implies (and (litp x) (lit-list-listp y))
                               (lit-list-listp (cons-to-each x y)))
                      :hints(("Goal" :in-theory (enable cons-to-each)))))
             (local (defthm lit-list-listp-of-append
                      (implies (and (lit-list-listp x)
                                    (lit-list-listp y))
                               (lit-list-listp (append x y))))))
  (b* (((when (eql (lnfix sink) (lnfix src))) (list nil))
       ((unless (eql (id->type sink aignet) (gate-type)))
        nil)
       ((when (eql (id->regp sink aignet) 1))
        (append (path-conjunct-lists (lit->var (gate-id->fanin0 sink aignet)) src aignet)
                (path-conjunct-lists (lit->var (gate-id->fanin1 sink aignet)) src aignet))))
    (append (cons-to-each (gate-id->fanin1 sink aignet)
                          (path-conjunct-lists (lit->var (gate-id->fanin0 sink aignet)) src aignet))
            (cons-to-each (gate-id->fanin0 sink aignet)
                          (path-conjunct-lists (lit->var (gate-id->fanin1 sink aignet)) src aignet))))
  ///
  (defret path-conjunct-lists-when-less
    (implies (< (nfix sink) (nfix src))
             (equal conj-lists nil)))

  (defret path-conjunct-lists-nonempty-when-ancestor-p
    (implies (ancestor-p sink src aignet)
             (consp (path-conjunct-lists sink src aignet)))
    :hints(("Goal" :in-theory (enable ancestor-p)
            :induct <call>))))



;; The set of paths for which all AND siblings that are not ancestors of src
;; are true.
(define basic-viable-paths ((sink natp) (src natp) invals regvals aignet)
  :measure (nfix sink)
  :guard (and (id-existsp sink aignet)
              (id-existsp src aignet)
              (<= (num-regs aignet) (bits-length regvals))
              (<= (num-ins aignet) (bits-length invals)))
  :returns (paths lit-list-listp)
  :prepwork ((local (defthm lit-list-listp-of-cons-to-each
                      (implies (and (litp x) (lit-list-listp y))
                               (lit-list-listp (cons-to-each x y)))
                      :hints(("Goal" :in-theory (enable cons-to-each)))))
             (local (defthm lit-list-listp-of-append
                      (implies (and (lit-list-listp x)
                                    (lit-list-listp y))
                               (lit-list-listp (append x y))))))
  (b* (((when (eql (lnfix sink) (lnfix src))) (list nil))
       ((unless (eql (id->type sink aignet) (gate-type)))
        nil)
       ((when (eql (id->regp sink aignet) 1))
        (append (basic-viable-paths (lit->var (gate-id->fanin0 sink aignet)) src invals regvals aignet)
                (basic-viable-paths (lit->var (gate-id->fanin1 sink aignet)) src invals regvals aignet))))
    (append (and
             (or (ancestor-p (lit->var (gate-id->fanin1 sink aignet)) src aignet)
                 (eql 1 (lit-eval (gate-id->fanin1 sink aignet) invals regvals aignet)))
             (cons-to-each (gate-id->fanin1 sink aignet)
                           (basic-viable-paths (lit->var (gate-id->fanin0 sink aignet)) src invals regvals aignet)))
            (and
             (or (ancestor-p (lit->var (gate-id->fanin0 sink aignet)) src aignet)
                 (eql 1 (lit-eval (gate-id->fanin0 sink aignet) invals regvals aignet)))
             (cons-to-each (gate-id->fanin0 sink aignet)
                           (basic-viable-paths (lit->var (gate-id->fanin1 sink aignet)) src invals regvals aignet)))))
  ///
  (defretd <fn>-when-less
    (implies (< (nfix sink) (nfix src))
             (equal paths nil)))

  (defthm id-eval-toggle-when-not-ancestor-p
    (implies (not (ancestor-p sink src aignet))
             (equal (id-eval-toggle sink src invals regvals aignet)
                    (id-eval sink invals regvals aignet)))
    :hints (("goal" :induct (id-eval-ind sink aignet)
             :expand ((ancestor-p sink src aignet)
                      (id-eval sink invals regvals aignet)
                      (id-eval-toggle sink src invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))))))
  
  (defret basic-viable-paths-exist-when-src-toggles-sink
    (implies (not (equal (id-eval-toggle sink src invals regvals aignet)
                         (id-eval sink invals regvals aignet)))
             (consp paths))
    :hints (("goal" :induct <call>
             :expand (<call>
                      (id-eval sink invals regvals aignet)
                      (id-eval-toggle sink src invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))))))


(define remove-contradictory-paths ((x lit-list-listp))
  :returns (paths lit-list-listp)
  (if (atom x)
      nil
    (if (cube-contradictionp (car x))
        (remove-contradictory-paths (cdr x))
      (cons (lit-list-fix (car x))
            (remove-contradictory-paths (cdr x))))))

(define remove-paths-containing ((lit litp) (x lit-list-listp))
  :returns (paths lit-list-listp)
  (if (atom x)
      nil
    (if (member (lit-fix lit) (lit-list-fix (car x)))
        (remove-paths-containing lit (cdr x))
      (cons (lit-list-fix (car x))
            (remove-paths-containing lit (cdr x)))))
  ///
  (defthm remove-paths-containing-of-nil
    (equal (remove-paths-containing lit nil) nil)))
    



    



  
  (define viable-path-p ((path lit-listp) (src natp) invals regvals aignet)
    :guard (aignet-lit-listp path aignet)
    
  

(define nonbasic-viable-path ((sink natp) (src natp) invals regvals aignet)
  :measure (nfix sink)
  :guard (and (id-existsp sink aignet)
              (id-existsp src aignet)
              (<= (num-regs aignet) (bits-length regvals))
              (<= (num-ins aignet) (bits-length invals)))
  :returns (mv ok (path lit-listp))
  :prepwork ((local (defthm lit-list-listp-of-cons-to-each
                      (implies (and (litp x) (lit-list-listp y))
                               (lit-list-listp (cons-to-each x y)))
                      :hints(("Goal" :in-theory (enable cons-to-each)))))
             (local (defthm lit-list-listp-of-append
                      (implies (and (lit-list-listp x)
                                    (lit-list-listp y))
                               (lit-list-listp (append x y))))))
  :verify-guards nil
  (b* (((when (eql (lnfix sink) (lnfix src))) (mv t nil))
       ((unless (eql (id->type sink aignet) (gate-type)))
        (mv nil nil))
       ((when (eql (id->regp sink aignet) 1))
        (append (nonbasic-viable-paths (lit->var (gate-id->fanin0 sink aignet)) src invals regvals aignet)
                (nonbasic-viable-paths (lit->var (gate-id->fanin1 sink aignet)) src invals regvals aignet))))
    (append (and
             (or (ancestor-p (lit->var (gate-id->fanin1 sink aignet)) src aignet)
                 (eql 1 (lit-eval (gate-id->fanin1 sink aignet) invals regvals aignet)))
             (cons-to-each (gate-id->fanin1 sink aignet)
                           (remove-paths-containing
                            (lit-negate (gate-id->fanin1 sink aignet))
                            (nonbasic-viable-paths (lit->var (gate-id->fanin0 sink aignet)) src invals regvals aignet))))
            (and
             (or (ancestor-p (lit->var (gate-id->fanin0 sink aignet)) src aignet)
                 (eql 1 (lit-eval (gate-id->fanin0 sink aignet) invals regvals aignet)))
             (cons-to-each (gate-id->fanin0 sink aignet)
                           (remove-paths-containing
                            (lit-negate (gate-id->fanin0 sink aignet))
                            (nonbasic-viable-paths (lit->var (gate-id->fanin1 sink aignet)) src invals regvals aignet))))))

  
(define nonbasic-viable-paths ((sink natp) (src natp) invals regvals aignet)
  :measure (nfix sink)
  :guard (and (id-existsp sink aignet)
              (id-existsp src aignet)
              (<= (num-regs aignet) (bits-length regvals))
              (<= (num-ins aignet) (bits-length invals)))
  :returns (paths lit-list-listp)
  :prepwork ((local (defthm lit-list-listp-of-cons-to-each
                      (implies (and (litp x) (lit-list-listp y))
                               (lit-list-listp (cons-to-each x y)))
                      :hints(("Goal" :in-theory (enable cons-to-each)))))
             (local (defthm lit-list-listp-of-append
                      (implies (and (lit-list-listp x)
                                    (lit-list-listp y))
                               (lit-list-listp (append x y))))))
  :verify-guards nil
  (b* (((when (eql (lnfix sink) (lnfix src))) (list nil))
       ((unless (eql (id->type sink aignet) (gate-type)))
        nil)
       ((when (eql (id->regp sink aignet) 1))
        (append (nonbasic-viable-paths (lit->var (gate-id->fanin0 sink aignet)) src invals regvals aignet)
                (nonbasic-viable-paths (lit->var (gate-id->fanin1 sink aignet)) src invals regvals aignet))))
    (append (and
             (or (ancestor-p (lit->var (gate-id->fanin1 sink aignet)) src aignet)
                 (eql 1 (lit-eval (gate-id->fanin1 sink aignet) invals regvals aignet)))
             (cons-to-each (gate-id->fanin1 sink aignet)
                           (remove-paths-containing
                            (lit-negate (gate-id->fanin1 sink aignet))
                            (nonbasic-viable-paths (lit->var (gate-id->fanin0 sink aignet)) src invals regvals aignet))))
            (and
             (or (ancestor-p (lit->var (gate-id->fanin0 sink aignet)) src aignet)
                 (eql 1 (lit-eval (gate-id->fanin0 sink aignet) invals regvals aignet)))
             (cons-to-each (gate-id->fanin0 sink aignet)
                           (remove-paths-containing
                            (lit-negate (gate-id->fanin0 sink aignet))
                            (nonbasic-viable-paths (lit->var (gate-id->fanin1 sink aignet)) src invals regvals aignet))))))
  ///
  (verify-guards nonbasic-viable-paths)
  (defretd <fn>-when-less
    (implies (< (nfix sink) (nfix src))
             (equal paths nil)))

  ;; (defthm id-eval-toggle-when-not-ancestor-p
  ;;   (implies (not (ancestor-p sink src aignet))
  ;;            (equal (id-eval-toggle sink src invals regvals aignet)
  ;;                   (id-eval sink invals regvals aignet)))
  ;;   :hints (("goal" :induct (id-eval-ind sink aignet)
  ;;            :expand ((ancestor-p sink src aignet)
  ;;                     (id-eval sink invals regvals aignet)
  ;;                     (id-eval-toggle sink src invals regvals aignet)
  ;;                     (:free (x) (lit-eval x invals regvals aignet))
  ;;                     (:free (x y) (lit-eval-toggle x y invals regvals aignet))
  ;;                     (:free (x y) (eval-and-of-lits x y invals regvals aignet))
  ;;                     (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
  ;;                     (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
  ;;                     (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet))))))
  
  (defret nonbasic-viable-paths-exist-when-src-toggles-sink
    (implies (not (equal (id-eval-toggle sink src invals regvals aignet)
                         (id-eval sink invals regvals aignet)))
             (consp paths))
    :hints (("goal" :induct <call>
             :expand (<call>
                      (id-eval sink invals regvals aignet)
                      (id-eval-toggle sink src invals regvals aignet)
                      (:free (x) (lit-eval x invals regvals aignet))
                      (:free (x y) (lit-eval-toggle x y invals regvals aignet))
                      (:free (x y) (eval-and-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-and-of-lits-toggle x y z invals regvals aignet))
                      (:free (x y) (eval-xor-of-lits x y invals regvals aignet))
                      (:free (x y z) (eval-xor-of-lits-toggle x y z invals regvals aignet)))))))
  