; Elliptic Curve Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Main Author: Eric McCarthy (mccarthy@kestrel.edu)
; Contributing Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "kestrel/crypto/primes/portcullis" :dir :system)
(include-book "kestrel/prime-fields/portcullis" :dir :system)
(include-book "rtl/rel11/portcullis" :dir :system)
(include-book "std/portcullis" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defpkg "ECURVE"
  (append '(;; added symbols
            assert!
            b*
            bebytes=>bits
            bit-listp
            bool-fix
            byte-list-equiv
            byte-list-fix
            byte-listp
            define
            defrule
            defruled
            defrulel
            defruledl
            defsection
            defxdoc
            defxdoc+
            i*
            i+
            i-
            nat=>bebytes
            nat-equiv
            patbind-unless
            patbind-when
            repeat
            pfield::fep
            pfield::mul
            pfield::add
            pfield::div
            pfield::sub
            pfield::inv
            pfield::neg
            pfield::pow
            primes::bls12-377-scalar-field-prime
            primes::secp256k1-field-prime
            primes::secp256k1-group-prime
            str::strval16s
            ///
            )
          (set-difference-eq
           *acl2-exports*
           '(;; removed symbols
             ))))
