(ECURVE::SECP256K1-PRIV-TO-PUB-EXEC)
(ECURVE::SECP256K1-PUB-KEY-P-OF-SECP256K1-PRIV-TO-PUB-EXEC
     (3 1
        (:REWRITE ECURVE::SECP256K1-PRIV-KEY-FIX-WHEN-SECP256K1-PRIV-KEY-P)))
(ECURVE::SECP256K1-PRIV-TO-PUB-EXEC-OF-SECP256K1-PRIV-KEY-FIX-PRIV)
(ECURVE::SECP256K1-PRIV-TO-PUB-EXEC-OF-SECP256K1-PRIV-KEY-FIX-PRIV-NORMALIZE-CONST)
(ECURVE::SECP256K1-PRIV-TO-PUB-EXEC-SECP256K1-PRIV-KEY-EQUIV-CONGRUENCE-ON-PRIV)
(ECURVE::VERIFY-GUARDS-LEMMA)
(ECURVE::SECP256K1-MUL-WRAPPER
 (268 26
      (:REWRITE INTEGERP-OF-CAR-WHEN-INTEGER-LISTP))
 (188 13 (:DEFINITION INTEGER-LISTP))
 (165 140 (:REWRITE DEFAULT-<-1))
 (140 140 (:REWRITE DEFAULT-<-2))
 (121 75 (:REWRITE DEFAULT-CAR))
 (114 68 (:REWRITE DEFAULT-CDR))
 (114 38
      (:REWRITE ECURVE::SECP256K1-POINTP-WHEN-SECP256K1-PUB-KEY-P))
 (88
  88
  (:REWRITE
   ECURVE::SECP256K1-POINT->Y$INLINE-OF-SECP256K1-POINT-FIX-P-NORMALIZE-CONST))
 (88
  88
  (:REWRITE
   ECURVE::SECP256K1-POINT->X$INLINE-OF-SECP256K1-POINT-FIX-P-NORMALIZE-CONST))
 (36 14
     (:REWRITE INTEGER-LISTP-WHEN-NOT-CONSP))
 (25 25
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 1 (:REWRITE NATP-OF-CAR-WHEN-NAT-LISTP))
 (3 1
    (:REWRITE INTEGER-LISTP-OF-CDR-WHEN-INTEGER-LISTP))
 (2 1 (:REWRITE NAT-LISTP-WHEN-NOT-CONSP))
 (1 1
    (:REWRITE NATP-LISTP-WHEN-DAB-DIGIT-LISTP))
 (1 1
    (:REWRITE NAT-LISTP-WHEN-UNSIGNED-BYTE-LISTP)))
(ECURVE::SECP256K1-POINTP-OF-SECP256K1-MUL-WRAPPER)
(ECURVE::SECP256K1-MUL-WRAPPER-YIELDS-PUB-FROM-PRIV
 (17 1
     (:DEFINITION ECURVE::SECP256K1-PUB-KEY-P))
 (4 1
    (:REWRITE ECURVE::SECP256K1-POINTP-WHEN-SECP256K1-PUB-KEY-P))
 (2 2
    (:TYPE-PRESCRIPTION ECURVE::SECP256K1-POINT))
 (2 2
    (:TYPE-PRESCRIPTION ECURVE::POINT-ON-ELLIPTIC-CURVE-P))
 (1 1
    (:TYPE-PRESCRIPTION ECURVE::SECP256K1-POINT-INFINITYP))
 (1
  1
  (:REWRITE
   ECURVE::SECP256K1-POINT-INFINITYP-OF-SECP256K1-POINT-FIX-POINT-NORMALIZE-CONST))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1)))
(ECURVE::SECP256K1-MUL-WRAPPER-OF-NFIX-NAT)
(ECURVE::SECP256K1-MUL-WRAPPER-OF-NFIX-NAT-NORMALIZE-CONST)
(ECURVE::SECP256K1-MUL-WRAPPER-NAT-EQUIV-CONGRUENCE-ON-NAT)
(ECURVE::SECP256K1-MUL-WRAPPER-OF-SECP256K1-POINT-FIX-POINT)
(ECURVE::SECP256K1-MUL-WRAPPER-OF-SECP256K1-POINT-FIX-POINT-NORMALIZE-CONST)
(ECURVE::SECP256K1-MUL-WRAPPER-SECP256K1-POINT-EQUIV-CONGRUENCE-ON-POINT)
