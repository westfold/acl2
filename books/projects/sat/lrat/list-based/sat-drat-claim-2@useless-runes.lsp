(LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-1
 (989 176 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (562 562 (:TYPE-PRESCRIPTION LRAT::CLAUSE-OR-ASSIGNMENT-P))
 (350 70 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (312 78 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (281 281 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (239 239 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (194 194 (:REWRITE DEFAULT-CAR))
 (155 155 (:REWRITE DEFAULT-CDR))
 (144 30 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (100 20 (:DEFINITION LRAT::REMOVE-LITERAL))
 (76 39 (:REWRITE DEFAULT-UNARY-MINUS))
 (70 70 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (37 37 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (30 30 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (30 30 (:REWRITE LRAT::TRUTH-MONOTONE-CLAUSE))
 (24 6 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 )
(LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-CONS
 (1293 241 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (706 706 (:TYPE-PRESCRIPTION LRAT::CLAUSE-OR-ASSIGNMENT-P))
 (448 116 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (353 353 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (319 319 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (292 73 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (245 245 (:REWRITE DEFAULT-CAR))
 (158 158 (:REWRITE DEFAULT-CDR))
 (148 30 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (143 38 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CONS))
 (130 75 (:REWRITE DEFAULT-UNARY-MINUS))
 (116 116 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (55 55 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (30 30 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (30 30 (:REWRITE LRAT::TRUTH-MONOTONE-CLAUSE))
 )
(LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-2
 (63 1 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (60 4 (:DEFINITION MEMBER-EQUAL))
 (48 8 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (47 1 (:DEFINITION LRAT::EVALUATE-LITERAL))
 (28 28 (:TYPE-PRESCRIPTION LRAT::CLAUSE-OR-ASSIGNMENT-P))
 (16 4 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (14 14 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (12 4 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (12 2 (:DEFINITION LRAT::REMOVE-LITERAL))
 (10 10 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (9 9 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (8 2 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION LRAT::REMOVE-LITERAL))
 (2 2 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (2 2 (:REWRITE LRAT::TRUTH-MONOTONE-CLAUSE))
 (1 1 (:DEFINITION LRAT::UNDEFP$INLINE))
 )
(LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-3
 (828 142 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (496 496 (:TYPE-PRESCRIPTION LRAT::CLAUSE-OR-ASSIGNMENT-P))
 (284 71 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (248 248 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (210 70 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (177 177 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (175 46 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (141 139 (:REWRITE DEFAULT-CAR))
 (120 118 (:REWRITE DEFAULT-CDR))
 (70 70 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (70 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (46 46 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (46 46 (:REWRITE LRAT::TRUTH-MONOTONE-CLAUSE))
 (35 35 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(LRAT::SUBSETP-PRESERVES-ASSIGNMENT
 (1136 21 (:DEFINITION LRAT::CONFLICTING-LITERALSP))
 (1100 163 (:REWRITE LRAT::BACKCHAIN-TO-CLAUSE-OR-ASSIGNMENT-P))
 (1005 74 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (943 46 (:DEFINITION MEMBER-EQUAL))
 (671 20 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (260 36 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (174 1 (:DEFINITION SUBSETP-EQUAL))
 (156 156 (:REWRITE DEFAULT-CDR))
 (144 29 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (123 123 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (115 115 (:REWRITE DEFAULT-CAR))
 (49 49 (:REWRITE LRAT::CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (41 21 (:REWRITE DEFAULT-UNARY-MINUS))
 (40 40 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (36 36 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (28 28 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (20 20 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (2 2 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 (1 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 )
(LRAT::SUBSETP-CONS-REMOVE-LITERAL
 (464 38 (:REWRITE LRAT::SUBSETP-EQUAL-CONS-LEMMA))
 (289 25 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (213 184 (:REWRITE DEFAULT-CAR))
 (154 32 (:REWRITE LRAT::MEMBER-REMOVE-LITERAL))
 (141 128 (:REWRITE DEFAULT-CDR))
 (138 16 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CONS))
 (116 116 (:TYPE-PRESCRIPTION LRAT::CLAUSE-OR-ASSIGNMENT-P))
 (94 11 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 (85 77 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (60 56 (:REWRITE LRAT::SUBSETP-PRESERVES-ASSIGNMENT))
 (56 56 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (41 9 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (31 3 (:REWRITE LRAT::MEMBER-EQUAL-REMOVE-LITERAL))
 (11 11 (:REWRITE LRAT::IS-UNIT-CLAUSE-T-MONOTONE))
 )
(LRAT::SAT-DRAT-CLAIM-2-1
 (308 1 (:REWRITE LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-CONS))
 (197 1 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (109 9 (:DEFINITION MEMBER-EQUAL))
 (92 7 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (76 8 (:REWRITE LRAT::MEMBER-REMOVE-LITERAL))
 (68 3 (:DEFINITION SUBSETP-EQUAL))
 (56 8 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (55 1 (:DEFINITION LRAT::EVALUATE-LITERAL))
 (39 39 (:REWRITE DEFAULT-CAR))
 (37 4 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (35 35 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (35 35 (:REWRITE LRAT::SUBSETP-PRESERVES-ASSIGNMENT))
 (32 32 (:REWRITE DEFAULT-CDR))
 (32 7 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (32 4 (:DEFINITION HONS-ASSOC-EQUAL))
 (31 7 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (27 12 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 (20 20 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (17 1 (:DEFINITION LRAT::FORMULA-P))
 (15 15 (:TYPE-PRESCRIPTION LRAT::REMOVE-LITERAL))
 (15 15 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (13 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CONS))
 (12 12 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR-HONS-ASSOC-EQUAL))
 (12 2 (:DEFINITION LRAT::REMOVE-LITERAL))
 (9 9 (:REWRITE LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-3))
 (8 4 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (7 7 (:REWRITE LRAT::TRUTH-MONOTONE))
 (7 7 (:REWRITE LRAT::SUBSETP-TRANSITIVE))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (4 4 (:DEFINITION HONS-EQUAL))
 (4 1 (:REWRITE LRAT::CONS-PRESERVES-EVALUATE-FORMULA))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (1 1 (:REWRITE LRAT::SUBSETP-EQUAL-REFLEXIVE))
 (1 1 (:REWRITE LRAT::FORMULA-TRUEP-NECC))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:DEFINITION LRAT::UNDEFP$INLINE))
 )
(LRAT::CLAUSE-OR-ASSIGNMENTP-CDR-HONS-ASSOC-EQUAL-FOR-FORMULA
 (17 1 (:DEFINITION LRAT::FORMULA-P))
 (16 2 (:DEFINITION HONS-ASSOC-EQUAL))
 (14 8 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 (5 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (3 3 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (3 3 (:REWRITE LRAT::SUBSETP-PRESERVES-ASSIGNMENT))
 (3 1 (:DEFINITION POSP))
 (2 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (2 2 (:DEFINITION HONS-EQUAL))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(LRAT::SAT-DRAT-CLAIM-2-2-1
 (474 4 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (317 15 (:DEFINITION MEMBER-EQUAL))
 (272 4 (:DEFINITION LRAT::EVALUATE-LITERAL))
 (220 24 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (154 10 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (126 4 (:REWRITE LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-2))
 (124 20 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (98 67 (:REWRITE DEFAULT-CDR))
 (89 85 (:REWRITE DEFAULT-CAR))
 (80 80 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (80 80 (:REWRITE LRAT::SUBSETP-PRESERVES-ASSIGNMENT))
 (72 9 (:DEFINITION HONS-ASSOC-EQUAL))
 (64 16 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FLIP-LITERAL))
 (54 10 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (36 36 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (36 4 (:DEFINITION LRAT::REMOVE-LITERAL))
 (34 2 (:DEFINITION LRAT::FORMULA-P))
 (30 10 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 (23 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:TYPE-PRESCRIPTION LRAT::FLIP-LITERAL))
 (20 1 (:REWRITE LRAT::CONTRADICTION-IMPLIES-CONFLICTING-LITERALSP))
 (16 16 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (13 13 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (11 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 10 (:REWRITE LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-3))
 (10 10 (:REWRITE LRAT::TRUTH-MONOTONE-CLAUSE))
 (9 9 (:DEFINITION HONS-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION LRAT::REMOVE-LITERAL))
 (6 2 (:DEFINITION POSP))
 (4 4 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (4 4 (:DEFINITION LRAT::UNDEFP$INLINE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (1 1 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-SUBSETP))
 )
(LRAT::SAT-DRAT-CLAIM-2-2
 (327 2 (:DEFINITION LRAT::EVALUATE-CLAUSE))
 (269 15 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (206 5 (:REWRITE LRAT::UNIT-PROPAGATION-CORRECT))
 (191 19 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR))
 (170 4 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 (162 2 (:REWRITE LRAT::TRUTH-REMOVE-IRRELEVANT-LIT-2))
 (144 18 (:DEFINITION HONS-ASSOC-EQUAL))
 (139 10 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENTP-CDR-HONS-ASSOC-EQUAL-FOR-FORMULA))
 (136 2 (:DEFINITION LRAT::EVALUATE-LITERAL))
 (127 7 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-CDR-HONS-ASSOC-EQUAL))
 (107 105 (:REWRITE DEFAULT-CAR))
 (103 80 (:REWRITE DEFAULT-CDR))
 (83 1 (:REWRITE LRAT::MEMBER-REMOVE-LITERAL))
 (64 9 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (50 50 (:REWRITE LRAT::UNIT-PROPAGATION-MONOTONICITY))
 (50 50 (:REWRITE LRAT::SUBSETP-PRESERVES-ASSIGNMENT))
 (35 5 (:REWRITE LRAT::SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (30 6 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FLIP-LITERAL))
 (24 24 (:REWRITE LRAT::MEMBER-EQUAL-MONOTONE))
 (18 18 (:DEFINITION HONS-EQUAL))
 (18 2 (:DEFINITION LRAT::REMOVE-LITERAL))
 (13 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:TYPE-PRESCRIPTION LRAT::FLIP-LITERAL))
 (9 9 (:REWRITE LRAT::NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (6 6 (:TYPE-PRESCRIPTION LRAT::LITERALP))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE LRAT::TRUTH-MONOTONE-CLAUSE))
 (4 4 (:TYPE-PRESCRIPTION LRAT::REMOVE-LITERAL))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (2 2 (:DEFINITION LRAT::UNDEFP$INLINE))
 (1 1 (:REWRITE LRAT::CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 )
(LRAT::SAT-DRAT-CLAIM-2)
