(SUBSETP-EQUAL-CONS-LEMMA
 (44 44 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-CDR))
 )
(SUBSETP-EQUAL-REFLEXIVE
 (29 17 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (22 22 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-CDR))
 )
(SUBSETP-EQUAL-CONS)
(CONS-PRESERVES-EVALUATE-FORMULA)
(CLAUSE-OR-ASSIGNMENT-P-CONS-IS-UNIT-CLAUSE
 (10161 1192 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (2574 54 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (1395 1395 (:REWRITE DEFAULT-CDR))
 (1143 1143 (:REWRITE DEFAULT-CAR))
 (991 991 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (410 235 (:REWRITE DEFAULT-UNARY-MINUS))
 (175 175 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (36 36 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 )
(EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T
 (998 499 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (499 499 (:TYPE-PRESCRIPTION FORMULA-FAL-P))
 (223 223 (:REWRITE DEFAULT-CAR))
 (172 172 (:REWRITE DEFAULT-CDR))
 (168 42 (:DEFINITION MEMBER-EQUAL))
 (84 84 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (42 42 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (42 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (26 26 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (8 2 (:REWRITE ZP-OPEN))
 )
(EVALUATE-CLAUSE-T-IMPLIES-NOT-IS-UNIT-CLAUSE
 (88 88 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (69 69 (:REWRITE DEFAULT-CAR))
 (56 56 (:REWRITE DEFAULT-CDR))
 (42 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (21 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 14 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 )
(HONS-ASSOC-EQUAL-FAL-IMPLIES-INDEX-IS-IN-RANGE
 (188 188 (:REWRITE DEFAULT-CAR))
 (80 80 (:REWRITE DEFAULT-CDR))
 (47 36 (:REWRITE DEFAULT-<-1))
 (42 14 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (41 36 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(HONS-ASSOC-EQUAL-FORMULA-FAL-IMPLIES-INDEX-IS-IN-RANGE)
(EVALUATE-FORMULA-FAL-T-IMPLIES-NOT-IS-UNIT-CLAUSE
 (57 1 (:DEFINITION EVALUATE-FORMULA-FAL))
 (32 4 (:DEFINITION HONS-ASSOC-EQUAL))
 (26 1 (:DEFINITION EVALUATE-CLAUSE))
 (24 24 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-CDR))
 (15 1 (:DEFINITION EVALUATE-LITERAL))
 (12 1 (:DEFINITION FORMULA-FAL-P))
 (12 1 (:DEFINITION FORMULA-FAL-MAX))
 (9 1 (:DEFINITION HONS-GET))
 (8 2 (:DEFINITION MEMBER-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6 4 (:REWRITE DEFAULT-<-2))
 (5 4 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION MAX))
 (4 4 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (4 4 (:DEFINITION HONS-EQUAL))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (2 2 (:DEFINITION UNDEFP$INLINE))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE ZP-OPEN))
 )
(EVALUATE-FORMULA-T-IMPLIES-NOT-IS-UNIT-CLAUSE
 (60 1 (:DEFINITION EVALUATE-FORMULA-FAL))
 (32 4 (:DEFINITION HONS-ASSOC-EQUAL))
 (28 28 (:REWRITE DEFAULT-CAR))
 (26 1 (:DEFINITION EVALUATE-CLAUSE))
 (25 25 (:REWRITE DEFAULT-CDR))
 (15 1 (:DEFINITION EVALUATE-LITERAL))
 (12 1 (:DEFINITION FORMULA-FAL-P))
 (12 1 (:DEFINITION FORMULA-FAL-MAX))
 (9 1 (:DEFINITION HONS-GET))
 (8 2 (:DEFINITION MEMBER-EQUAL))
 (7 5 (:REWRITE DEFAULT-<-2))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION MAX))
 (4 4 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (4 4 (:DEFINITION HONS-EQUAL))
 (4 1 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (3 3 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (2 2 (:DEFINITION UNDEFP$INLINE))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE TRUTH-MONOTONE))
 (1 1 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 )
(UNIT-PROPAGATION-IDENTITY
 (420 7 (:DEFINITION IS-UNIT-CLAUSE))
 (334 334 (:REWRITE DEFAULT-CAR))
 (291 291 (:REWRITE DEFAULT-CDR))
 (210 14 (:DEFINITION EVALUATE-LITERAL))
 (182 7 (:DEFINITION EVALUATE-CLAUSE))
 (168 14 (:DEFINITION FORMULA-FAL-MAX))
 (140 35 (:DEFINITION MEMBER-EQUAL))
 (95 60 (:REWRITE DEFAULT-<-2))
 (74 60 (:REWRITE DEFAULT-<-1))
 (70 70 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (70 14 (:DEFINITION MAX))
 (63 63 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (63 21 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (63 14 (:REWRITE EVALUATE-CLAUSE-T-IMPLIES-NOT-IS-UNIT-CLAUSE))
 (28 28 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (14 14 (:DEFINITION UNDEFP$INLINE))
 (11 11 (:TYPE-PRESCRIPTION ADD-TO-SET-EQUAL))
 (8 8 (:REWRITE TRUTH-MONOTONE))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
