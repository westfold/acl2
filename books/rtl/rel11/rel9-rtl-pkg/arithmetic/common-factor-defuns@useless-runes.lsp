(RTL::MY-INTERSECTION-EQUAL)
(RTL::ADJOIN-EQUAL)
(RTL::REMOVE-ONE)
(RTL::REMOVE-ONE-PRESERVES-TRUE-LISTP
 (10 10 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 )
(RTL::GET-FACTORS-OF-PRODUCT
 (679 82 (:DEFINITION LENGTH))
 (525 105 (:DEFINITION LEN))
 (437 213 (:REWRITE DEFAULT-+-2))
 (256 213 (:REWRITE DEFAULT-+-1))
 (220 220 (:TYPE-PRESCRIPTION LEN))
 (104 26 (:REWRITE COMMUTATIVITY-OF-+))
 (104 26 (:DEFINITION INTEGER-ABS))
 (90 90 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (83 83 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (69 23 (:DEFINITION SYMBOL-LISTP))
 (41 32 (:REWRITE DEFAULT-<-2))
 (36 36 (:REWRITE DEFAULT-COERCE-2))
 (36 36 (:REWRITE DEFAULT-COERCE-1))
 (36 32 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE DEFAULT-UNARY-MINUS))
 (23 23 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (13 13 (:REWRITE DEFAULT-REALPART))
 (13 13 (:REWRITE DEFAULT-NUMERATOR))
 (13 13 (:REWRITE DEFAULT-IMAGPART))
 (13 13 (:REWRITE DEFAULT-DENOMINATOR))
 )
(RTL::GET-FACTORS-OF-PRODUCT-TRUE-LISTP
 (19 3 (:DEFINITION MEMBER-EQUAL))
 (18 13 (:REWRITE DEFAULT-CDR))
 (16 14 (:REWRITE DEFAULT-CAR))
 (15 3 (:DEFINITION TRUE-LISTP))
 )
(RTL::FIND-INVERTED-FACTORS-IN-LIST)
(RTL::REMOVE-CANCELLING-FACTOR-PAIRS-HELPER
 (24 8 (:DEFINITION MEMBER-EQUAL))
 (12 12 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 )
(RTL::REMOVE-CANCELLING-FACTOR-PAIRS-HELPER-PRESERVES-TRUE-LISTP
 (55 55 (:REWRITE DEFAULT-CDR))
 (46 46 (:REWRITE DEFAULT-CAR))
 )
(RTL::REMOVE-CANCELLING-FACTOR-PAIRS)
(RTL::REMOVE-CANCELLING-FACTOR-PAIRS-PRESERVES-TRUE-LISTP)
(RTL::FIND-COMMON-FACTORS-IN-SUM-OF-PRODUCTS-AUX
 (565 113 (:DEFINITION LEN))
 (453 221 (:REWRITE DEFAULT-+-2))
 (264 221 (:REWRITE DEFAULT-+-1))
 (104 26 (:REWRITE COMMUTATIVITY-OF-+))
 (104 26 (:DEFINITION INTEGER-ABS))
 (96 96 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (85 85 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (75 25 (:DEFINITION SYMBOL-LISTP))
 (41 32 (:REWRITE DEFAULT-<-2))
 (38 38 (:REWRITE DEFAULT-COERCE-2))
 (38 38 (:REWRITE DEFAULT-COERCE-1))
 (36 32 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 13 (:REWRITE DEFAULT-REALPART))
 (13 13 (:REWRITE DEFAULT-NUMERATOR))
 (13 13 (:REWRITE DEFAULT-IMAGPART))
 (13 13 (:REWRITE DEFAULT-DENOMINATOR))
 )
(RTL::FIND-COMMON-FACTORS-IN-SUM-OF-PRODUCTS-AUX-TRUE-LISTP
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE DEFAULT-CDR))
 )
(RTL::FIND-COMMON-FACTORS-IN-SUM-OF-PRODUCTS)
(RTL::FIND-COMMON-FACTORS-IN-SUM-OF-PRODUCTS-TRUE-LISTP)
(RTL::MAKE-PRODUCT-FROM-LIST-OF-FACTORS)
(RTL::FIND-COMMON-FACTORS-TO-CANCEL)
(RTL::BIND-K-TO-COMMON-FACTORS)
