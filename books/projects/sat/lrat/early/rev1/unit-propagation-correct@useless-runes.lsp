(NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER
 (19 2 (:DEFINITION MEMBER-EQUAL))
 (12 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (6 6 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (4 4 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (4 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (3 3 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE MINUS-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET
 (31 3 (:DEFINITION MEMBER-EQUAL))
 (24 4 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (23 1 (:DEFINITION SUBSETP-EQUAL))
 (12 12 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (8 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (6 6 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE SUBSETP-TRANSITIVE))
 (2 2 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(SUBSETP-UNION-EQUAL-2
 (284 47 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (221 7 (:DEFINITION UNION-EQUAL))
 (142 142 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (83 17 (:REWRITE SUBSETP-TRANSITIVE))
 (72 18 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (71 71 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (64 64 (:REWRITE DEFAULT-CAR))
 (51 51 (:REWRITE DEFAULT-CDR))
 (24 6 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-UNION-EQUAL))
 (13 13 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 (3 3 (:TYPE-PRESCRIPTION UNION-EQUAL))
 )
(NOT-CONFLICTING-LITERALSP-SUBSETP
 (328 24 (:DEFINITION MEMBER-EQUAL))
 (240 28 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (200 200 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (172 43 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (144 18 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (140 24 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (100 100 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (75 5 (:DEFINITION LITERAL-LISTP))
 (47 47 (:REWRITE DEFAULT-CDR))
 (44 44 (:REWRITE DEFAULT-CAR))
 (24 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 5 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE SUBSETP-TRANSITIVE))
 (8 8 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 )
(UNION-PRESERVES-SUBSETP-2
 (783 113 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (510 29 (:REWRITE SUBSETP-UNION-EQUAL-2))
 (388 388 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (275 74 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (208 200 (:REWRITE DEFAULT-CAR))
 (194 194 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (188 182 (:REWRITE DEFAULT-CDR))
 (161 3 (:REWRITE CONS-PRESERVES-SUBSETP))
 (98 98 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (88 12 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-UNION-EQUAL))
 (32 32 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 (24 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 )
(CONFLICTING-LITERALSP-PRESERVED-BY-UNION-EQUAL-CONS-2
 (1725 198 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (1678 131 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (1270 1270 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (1264 268 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (837 76 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (635 635 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (599 95 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-UNION-EQUAL))
 (402 402 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (290 276 (:REWRITE DEFAULT-CAR))
 (285 257 (:REWRITE DEFAULT-CDR))
 (154 64 (:REWRITE DEFAULT-UNARY-MINUS))
 (131 131 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (120 20 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (87 76 (:REWRITE CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (76 76 (:REWRITE NOT-CONFLICTING-LITERALSP-SUBSETP))
 (63 36 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(CONFLICTING-LITERALSP-UNION-WHEN-MEMBER
 (18859 2736 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (15190 1521 (:REWRITE SUBSETP-EQUAL-CONS-LEMMA))
 (15190 1521 (:REWRITE CONS-PRESERVES-SUBSETP))
 (12873 12873 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (11003 10784 (:REWRITE DEFAULT-CAR))
 (10853 10333 (:REWRITE DEFAULT-CDR))
 (9433 2168 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (8753 8753 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (6552 6552 (:REWRITE SUBSETP-TRANSITIVE))
 (6436 6436 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (6050 736 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (2210 396 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-UNION-EQUAL))
 (1952 480 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (1118 178 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (561 182 (:REWRITE DEFAULT-UNARY-MINUS))
 (500 291 (:REWRITE CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (256 133 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (110 110 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (110 22 (:DEFINITION TRUE-LISTP))
 (34 34 (:REWRITE SUBSETP-EQUAL-REFLEXIVE))
 (1 1 (:REWRITE MINUS-MINUS))
 )
(NEGATE-NEGATE)
(NOT-CONFLICTING-LITERALSP-UNION
 (1830 211 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (1250 1250 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (1087 229 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (802 126 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (620 620 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (565 83 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (360 360 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (265 262 (:REWRITE DEFAULT-CAR))
 (242 238 (:REWRITE DEFAULT-CDR))
 (218 51 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-UNION-EQUAL))
 (176 24 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (136 34 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (126 126 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (120 71 (:REWRITE DEFAULT-UNARY-MINUS))
 (84 63 (:REWRITE CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (63 63 (:REWRITE NOT-CONFLICTING-LITERALSP-SUBSETP))
 (52 2 (:REWRITE CONFLICTING-LITERALSP-UNION-WHEN-MEMBER))
 (49 49 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (40 40 (:TYPE-PRESCRIPTION LITERALP))
 (40 10 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (36 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (10 10 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 )
(CLAUSE-OR-ASSIGNMENT-P-UNION
 (2319 180 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (1976 117 (:DEFINITION MEMBER-EQUAL))
 (1924 344 (:REWRITE BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (1237 21 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (940 2 (:DEFINITION UNION-EQUAL))
 (725 61 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (655 89 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (554 2 (:REWRITE MEMBER-EQUAL-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (470 1 (:DEFINITION EVALUATE-CLAUSE))
 (368 1 (:DEFINITION EVALUATE-LITERAL))
 (367 367 (:REWRITE DEFAULT-CDR))
 (303 303 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (273 273 (:REWRITE DEFAULT-CAR))
 (182 2 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (106 106 (:REWRITE NOT-CONFLICTING-LITERALSP-SUBSETP))
 (106 106 (:REWRITE CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (98 50 (:REWRITE DEFAULT-UNARY-MINUS))
 (89 89 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (65 65 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (48 48 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 1 (:DEFINITION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (2 2 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (1 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (1 1 (:DEFINITION UNDEFP$INLINE))
 )
(SUBSETP-UNION-1
 (399 56 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (198 198 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (138 10 (:REWRITE SUBSETP-UNION-EQUAL-2))
 (131 35 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (120 96 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (99 99 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (96 93 (:REWRITE DEFAULT-CAR))
 (74 3 (:REWRITE CONS-PRESERVES-SUBSETP))
 (61 61 (:REWRITE DEFAULT-CDR))
 (56 8 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-UNION-EQUAL))
 (36 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (30 28 (:REWRITE SUBSETP-TRANSITIVE))
 (20 20 (:TYPE-PRESCRIPTION UNION-EQUAL))
 (10 10 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 )
(UNIT-PROPAGATION-CORRECT-1
 (124 2 (:DEFINITION EVALUATE-CLAUSE))
 (94 2 (:DEFINITION EVALUATE-LITERAL))
 (78 5 (:DEFINITION MEMBER-EQUAL))
 (68 10 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (44 44 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (40 1 (:DEFINITION UNION-EQUAL))
 (25 25 (:REWRITE DEFAULT-CAR))
 (24 5 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (24 3 (:DEFINITION HONS-ASSOC-EQUAL))
 (22 22 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (22 22 (:REWRITE DEFAULT-CDR))
 (19 19 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (16 4 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (15 15 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (12 12 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (12 4 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (7 1 (:REWRITE MEMBER-EQUAL-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (6 6 (:TYPE-PRESCRIPTION FORMULA-FAL-P))
 (6 6 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 1 (:DEFINITION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (4 4 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (4 4 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (4 4 (:DEFINITION UNDEFP$INLINE))
 (4 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (3 3 (:REWRITE SUBSETP-EQUAL-REFLEXIVE))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:DEFINITION HONS-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (2 2 (:TYPE-PRESCRIPTION LITERALP))
 )
(UNIT-PROPAGATION-CORRECT-2
 (952 9 (:DEFINITION EVALUATE-CLAUSE))
 (931 1 (:DEFINITION UNIT-PROPAGATION))
 (889 10 (:DEFINITION EVALUATE-LITERAL))
 (866 5 (:REWRITE UNIT-PROPAGATION-IDENTITY))
 (836 5 (:DEFINITION EVALUATE-FORMULA))
 (816 5 (:DEFINITION EVALUATE-FORMULA-FAL))
 (514 36 (:DEFINITION MEMBER-EQUAL))
 (375 56 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (343 23 (:REWRITE MEMBER-EQUAL-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (298 1 (:DEFINITION IS-UNIT-CLAUSE))
 (259 35 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (204 2 (:REWRITE EVALUATE-CLAUSE-NIL-IMPLIES-IS-UNIT-CLAUSE-T))
 (178 178 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (149 3 (:REWRITE MEMBER-EQUAL-UNION-EQUAL))
 (116 116 (:TYPE-PRESCRIPTION LITERALP))
 (107 28 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (104 104 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (103 103 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (98 98 (:REWRITE DEFAULT-CAR))
 (93 93 (:REWRITE DEFAULT-CDR))
 (92 29 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (64 18 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (54 6 (:DEFINITION HONS-GET))
 (50 1 (:DEFINITION UNION-EQUAL))
 (48 6 (:DEFINITION HONS-ASSOC-EQUAL))
 (41 23 (:REWRITE DEFAULT-UNARY-MINUS))
 (37 1 (:DEFINITION ADD-TO-SET-EQUAL))
 (35 35 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (33 33 (:TYPE-PRESCRIPTION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (25 25 (:TYPE-PRESCRIPTION EVALUATE-FORMULA-FAL))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 2 (:DEFINITION FORMULA-FAL-MAX))
 (20 20 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (20 5 (:REWRITE ZP-OPEN))
 (18 18 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (16 12 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 15 (:DEFINITION UNDEFP$INLINE))
 (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (14 12 (:REWRITE DEFAULT-<-1))
 (13 13 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (13 13 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR-HONS-ASSOC-EQUAL))
 (12 2 (:REWRITE EVALUATE-CLAUSE-T-IMPLIES-NOT-IS-UNIT-CLAUSE))
 (10 2 (:DEFINITION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (10 2 (:DEFINITION MAX))
 (6 6 (:DEFINITION HONS-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION EVALUATE-FORMULA))
 (5 5 (:REWRITE TRUTH-MONOTONE))
 (5 5 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (4 2 (:DEFINITION NULL))
 (3 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (3 1 (:TYPE-PRESCRIPTION LITERALP-IS-UNIT-CLAUSE))
 (2 2 (:TYPE-PRESCRIPTION NULL))
 (1 1 (:REWRITE IS-UNIT-CLAUSE-SUPERSET))
 )
(UNIT-PROPAGATION-CORRECT
 (100 2 (:DEFINITION UNION-EQUAL))
 (74 2 (:REWRITE MEMBER-EQUAL-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (67 6 (:DEFINITION MEMBER-EQUAL))
 (48 1 (:DEFINITION EVALUATE-CLAUSE))
 (43 10 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (38 6 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (36 1 (:DEFINITION EVALUATE-LITERAL))
 (27 27 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (17 17 (:TYPE-PRESCRIPTION LITERALP))
 (17 17 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (13 13 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 2 (:DEFINITION NEGATE-CLAUSE-OR-ASSIGNMENT))
 (7 7 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (6 6 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (3 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (2 2 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (2 2 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (2 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-NEGATE-CLAUSE-OR-ASSIGNMENT))
 (2 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (1 1 (:REWRITE TRUTH-MONOTONE))
 (1 1 (:DEFINITION UNDEFP$INLINE))
 )
