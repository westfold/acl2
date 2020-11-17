; R1CS gadgets
;
; Copyright (C) 2019-2020 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "R1CS")

;; This book defines and verifies a variety of snark "gadgets" -- ways to check
;; various constraints using only operations from the prime field (addition,
;; subtraction, and multiplication).  This version of the file passes the prime
;; explicitly to the operations, but see also gadgets-alt.lisp.

(include-book "kestrel/prime-fields/prime-fields" :dir :system)
(include-book "kestrel/bv/bitxor" :dir :system)
(local (include-book "kestrel/prime-fields/prime-fields-rules" :dir :system))
(local (include-book "kestrel/prime-fields/bind-free-rules" :dir :system))
(local (include-book "kestrel/arithmetic-light/mod" :dir :system))

;;
;; Bit constraint (a constraint that ensures that a value is a bit: 0 or 1)
;;

;; bits are in the field
(defthm bitp-in-field
  (implies (and (bitp x)
                (rtl::primep prime))
           (fep x prime))
  :hints (("Goal" :in-theory (enable fep bitp))))

(defun constrain-to-be-bit (b prime)
  (declare (xargs :guard (and (rtl::primep prime)
                              (fep b prime))))
  (equal (mul (sub 1 b prime) b prime)
         0))

(defthm constrain-to-be-bit-correct
  (implies (and (fep x prime)
                (rtl::primep prime))
           (iff (constrain-to-be-bit x prime)
                (bitp x)))
  :hints (("Goal" :in-theory (disable pfield::equal-of-add-move-negations-bind-free))))

;;
;; Selection constraint (if-then-else)
;;

;; Selection constraint (z = if b then x else y).
(defun selection-constraint (b x y z prime)
  (declare (xargs :guard (and (rtl::primep prime)
                              (fep b prime)
                              (bitp b)
                              (fep x prime)
                              (fep y prime)
                              (fep z prime))))
  (equal (mul b (sub y x prime) prime)
         (sub y z prime)))

(defthm selection-constraint-correct
  (implies (and (bitp b)
                (fep x prime)
                (fep y prime)
                (fep z prime)
                (rtl::primep prime))
           (iff (selection-constraint b x y z prime)
                (equal z (if (equal b 1) x y))))
  :hints (("Goal" :in-theory (enable bitp))))

;;
;; nonzero constraint
;;

;;todo: add guard
;; True iff a is not zero.
(defun-sk nonzero-constraint (a prime)
  (exists inv (and (fep inv prime)
                   (equal (mul inv a prime) 1))))

(defthm nonzero-constraint-correct-1
  (implies (and (fep a prime)
                (rtl::primep prime))
           (implies (nonzero-constraint a prime)
                    (not (equal a 0)))))

(defthm nonzero-constraint-correct-2
  (implies (and (fep a prime)
                (rtl::primep prime))
           (implies (not (equal a 0))
                    (nonzero-constraint a prime)))
  :hints (("Goal" :use (:instance nonzero-constraint-suff
                                  (inv (inv a prime))))))

(defthm nonzero-constraint-correct
  (implies (and (fep a prime)
                (rtl::primep prime))
           (iff (nonzero-constraint a prime)
                (not (equal a 0))))
  :hints (("Goal" :use (nonzero-constraint-correct-1
                        nonzero-constraint-correct-2)
           :in-theory (disable nonzero-constraint-correct-1
                               nonzero-constraint-correct-2))))

;; TODO: How to do y = (if x!=0 then 1 else 0)?  Say that y is a bit and there is some z such that y=x*z.

;;
;; Exclusive-or constraint
;;

(defun xor-constraint (a b c prime)
  (declare (xargs :guard (and (rtl::primep prime)
                              (fep a prime)
                              (bitp a)
                              (fep b prime)
                              (bitp b)
                              (fep c prime)
                              (not (equal 2 prime)) ;ensures that the 2 below is a field element
                              )))
  (equal (mul (mul 2 a prime) b prime)
         (add a (sub b c prime) prime)))

(defthm xor-constraint-correct
  (implies (and (fep a prime)
                (bitp a)
                (fep b prime)
                (bitp b)
                (fep c prime)
                (not (equal 2 prime))
                (rtl::primep prime))
           (iff (xor-constraint a b c prime)
                (equal c (acl2::bitxor a b))))
  :hints (("Goal" :in-theory (e/d (bitp)
                                  (;ADD-ASSOCIATIVE ;todo: looped
                                   ;;ADD-OF-SUB-ARG2 ;todo: looped
                                   )))))

;; TODO: Unpacking, range check, etc.
