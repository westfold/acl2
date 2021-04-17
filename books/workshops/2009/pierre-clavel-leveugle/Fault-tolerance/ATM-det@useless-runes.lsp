(ATMV1-FSM_STATEP)
(ATMV1-N_REG-SP)
(ATMV1-N_REG-NEXT)
(ATMV1-N_REG-OUT_VALUE)
(ATMV1-N_REG-E_DETECT)
(ATMV1-N_REG-REACH_STATE)
(ATMV1-N_REG-ERROR)
(N_REGISTER
 (119 17 (:DEFINITION LEN))
 (54 54 (:REWRITE DEFAULT-CDR))
 (36 20 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (36 20 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (36 20 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (34 17 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (21 21 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (20 20 (:REWRITE |(equal (- x) (- y))|))
 (17 17 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (17 17 (:REWRITE NORMALIZE-ADDENDS))
 (17 17 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (11 11 (:REWRITE SIMPLIFY-SUMS-<))
 (11 11 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (11 11 (:REWRITE REDUCE-INTEGERP-+))
 (11 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (11 11 (:REWRITE INTEGERP-MINUS-X))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE |(< (- x) 0)|))
 (11 11 (:REWRITE |(< (- x) (- y))|))
 (11 11 (:META META-INTEGERP-CORRECT))
 (10 10 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (10 10 (:REWRITE |(equal (- x) 0)|))
 (2 2 (:REWRITE REG-DET-THM-ERROR-TYPE2))
 )
(ATMV1-OK_REG-SP)
(ATMV1-OK_REG-NEXT)
(ATMV1-OK_REG-OUT_VALUE)
(ATMV1-OK_REG-E_DETECT)
(ATMV1-OK_REG-REACH_STATE)
(ATMV1-OK_REG-ERROR)
(OK_REGISTER
 (173 4 (:REWRITE REG-DET-THM-NEXT-TYPE2))
 (161 23 (:DEFINITION LEN))
 (74 74 (:REWRITE DEFAULT-CDR))
 (48 28 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (48 28 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (48 28 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (46 23 (:REWRITE DEFAULT-+-2))
 (39 1 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 (39 1 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (29 29 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (29 29 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (28 28 (:REWRITE |(equal (- x) (- y))|))
 (23 23 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (23 23 (:REWRITE NORMALIZE-ADDENDS))
 (23 23 (:REWRITE DEFAULT-+-1))
 (22 22 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (15 15 (:REWRITE SIMPLIFY-SUMS-<))
 (15 15 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (15 15 (:REWRITE REDUCE-INTEGERP-+))
 (15 15 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (15 15 (:REWRITE INTEGERP-MINUS-X))
 (15 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE |(< (- x) 0)|))
 (15 15 (:REWRITE |(< (- x) (- y))|))
 (15 15 (:META META-INTEGERP-CORRECT))
 (14 14 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (14 14 (:REWRITE |(equal (- x) 0)|))
 (2 2 (:REWRITE REG-DET-THM-ERROR-TYPE2))
 )
(ATMV1-CODE_REG-SP)
(ATMV1-CODE_REG-NEXT)
(ATMV1-CODE_REG-OUT_VALUE)
(ATMV1-CODE_REG-E_DETECT)
(ATMV1-CODE_REG-REACH_STATE)
(ATMV1-CODE_REG-ERROR)
(CODE_REGISTER
 (275 9 (:REWRITE N_REGISTER))
 (203 29 (:DEFINITION LEN))
 (173 4 (:REWRITE REG-DET-THM-NEXT-TYPE2))
 (94 94 (:REWRITE DEFAULT-CDR))
 (60 36 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (60 36 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (60 36 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (58 29 (:REWRITE DEFAULT-+-2))
 (39 1 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 (39 1 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (37 37 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (37 37 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (36 36 (:REWRITE |(equal (- x) (- y))|))
 (29 29 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (29 29 (:REWRITE NORMALIZE-ADDENDS))
 (29 29 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (19 19 (:REWRITE SIMPLIFY-SUMS-<))
 (19 19 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (19 19 (:REWRITE REDUCE-INTEGERP-+))
 (19 19 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (19 19 (:REWRITE INTEGERP-MINUS-X))
 (19 19 (:REWRITE DEFAULT-<-2))
 (19 19 (:REWRITE DEFAULT-<-1))
 (19 19 (:REWRITE |(< (- x) 0)|))
 (19 19 (:REWRITE |(< (- x) (- y))|))
 (19 19 (:META META-INTEGERP-CORRECT))
 (18 18 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (18 18 (:REWRITE |(equal (- x) 0)|))
 (2 2 (:REWRITE REG-DET-THM-ERROR-TYPE2))
 )
(ATMV1-SP)
(ATMV1-NEXT)
(ATMV1-START_OP)
(ATMV1-KEEP)
(ATMV1-OUTC)
(ATMV1-E_DETECT)
(ATMV1-REACH_STATE)
(ATMV1-INJECT1)
(ATMV1-INJECT2)
(ATMV1-INJECT3)
(ATMV1-ERROR)
(ATMV1-ERROR-TYPE1
 (122 122 (:REWRITE DEFAULT-CDR))
 (58 47 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (58 47 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (58 47 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (47 47 (:REWRITE |(equal (- x) (- y))|))
 (46 23 (:REWRITE DEFAULT-+-2))
 (23 23 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (23 23 (:REWRITE NORMALIZE-ADDENDS))
 (23 23 (:REWRITE DEFAULT-+-1))
 (21 21 (:REWRITE DEFAULT-CAR))
 (1 1 (:TYPE-PRESCRIPTION ATMV1-FSM_STATEP))
 )
(ATMV1-ERROR-TYPE2
 (20 20 (:REWRITE DEFAULT-CDR))
 (14 13 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (14 13 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (14 13 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (14 2 (:DEFINITION LEN))
 (13 13 (:REWRITE |(equal (- x) (- y))|))
 (6 6 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2 2 (:REWRITE NORMALIZE-ADDENDS))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(ATMV1-ERROR-DEF1
 (196 196 (:REWRITE DEFAULT-CDR))
 (90 66 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (90 66 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (90 66 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (84 42 (:REWRITE DEFAULT-+-2))
 (79 79 (:REWRITE DEFAULT-CAR))
 (66 66 (:REWRITE |(equal (- x) (- y))|))
 (42 42 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (42 42 (:REWRITE NORMALIZE-ADDENDS))
 (42 42 (:REWRITE DEFAULT-+-1))
 )
(ATMV1-ERROR-DEF2)
(ATMV1-THM-SP-TYPE)
(ATMV1-THM-SP-ERROR)
(ATMV1-THM-NEXT-TYPE1
 (4199 1142 (:REWRITE OK_REGISTER))
 (4199 1142 (:REWRITE N_REGISTER))
 (3497 3497 (:REWRITE DEFAULT-CDR))
 (3091 483 (:REWRITE REG-DET-THM-NEXT-TYPE2))
 (769 479 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 (720 720 (:TYPE-PRESCRIPTION REG-DET-THM-REACH_STATE-TYPE))
 (483 483 (:REWRITE DEFAULT-CAR))
 (446 231 (:REWRITE DEFAULT-+-2))
 (396 261 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (396 261 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (396 261 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (270 90 (:REWRITE REG-DET-THM-HARDENED-2))
 (261 261 (:REWRITE |(equal (- x) (- y))|))
 (231 231 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (231 231 (:REWRITE NORMALIZE-ADDENDS))
 (231 231 (:REWRITE DEFAULT-+-1))
 (180 90 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (135 135 (:REWRITE SIMPLIFY-SUMS-<))
 (135 135 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (135 135 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (135 135 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (135 135 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (135 135 (:REWRITE DEFAULT-<-2))
 (135 135 (:REWRITE DEFAULT-<-1))
 (135 135 (:REWRITE |(< (- x) (- y))|))
 (116 116 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (116 116 (:REWRITE REDUCE-INTEGERP-+))
 (116 116 (:REWRITE INTEGERP-MINUS-X))
 (116 116 (:REWRITE |(< (- x) 0)|))
 (116 116 (:META META-INTEGERP-CORRECT))
 )
(ATMV1-THM-NEXT-TYPE2
 (1302 1302 (:REWRITE DEFAULT-CDR))
 (397 272 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (397 272 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (397 272 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (282 141 (:REWRITE DEFAULT-+-2))
 (272 272 (:REWRITE |(equal (- x) (- y))|))
 (231 231 (:REWRITE DEFAULT-CAR))
 (141 141 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (141 141 (:REWRITE NORMALIZE-ADDENDS))
 (141 141 (:REWRITE DEFAULT-+-1))
 (129 129 (:REWRITE REDUCE-INTEGERP-+))
 (129 129 (:REWRITE INTEGERP-MINUS-X))
 (129 129 (:META META-INTEGERP-CORRECT))
 (124 124 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (124 124 (:REWRITE SIMPLIFY-SUMS-<))
 (124 124 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (124 124 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (124 124 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (124 124 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (124 124 (:REWRITE DEFAULT-<-2))
 (124 124 (:REWRITE DEFAULT-<-1))
 (124 124 (:REWRITE |(< (- x) 0)|))
 (124 124 (:REWRITE |(< (- x) (- y))|))
 )
(ATMV1-THM-START_OP-TYPE1
 (88 88 (:REWRITE DEFAULT-CDR))
 (48 48 (:TYPE-PRESCRIPTION REG-DET-THM-REACH_STATE-TYPE))
 (48 24 (:REWRITE DEFAULT-+-2))
 (43 25 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (43 25 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (43 25 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (32 14 (:REWRITE OK_REGISTER))
 (32 14 (:REWRITE N_REGISTER))
 (32 14 (:REWRITE CODE_REGISTER))
 (26 13 (:DEFINITION TRUE-LISTP))
 (25 25 (:REWRITE |(equal (- x) (- y))|))
 (24 24 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (24 24 (:REWRITE NORMALIZE-ADDENDS))
 (24 24 (:REWRITE DEFAULT-+-1))
 (22 22 (:REWRITE DEFAULT-CAR))
 (18 6 (:REWRITE REG-DET-THM-HARDENED-2))
 (12 6 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (4 2 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 )
(ATMV1-THM-START_OP-TYPE2
 (273 39 (:DEFINITION LEN))
 (210 210 (:REWRITE DEFAULT-CDR))
 (78 39 (:REWRITE DEFAULT-+-2))
 (66 39 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (66 39 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (66 39 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (56 56 (:REWRITE DEFAULT-CAR))
 (39 39 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (39 39 (:REWRITE NORMALIZE-ADDENDS))
 (39 39 (:REWRITE DEFAULT-+-1))
 (39 39 (:REWRITE |(equal (- x) (- y))|))
 )
(ATMV1-THM-KEEP-TYPE1
 (68 68 (:REWRITE DEFAULT-CDR))
 (48 24 (:REWRITE DEFAULT-+-2))
 (43 25 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (43 25 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (43 25 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (26 13 (:DEFINITION TRUE-LISTP))
 (25 25 (:REWRITE |(equal (- x) (- y))|))
 (24 24 (:TYPE-PRESCRIPTION REG-DET-THM-REACH_STATE-TYPE))
 (24 24 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (24 24 (:REWRITE NORMALIZE-ADDENDS))
 (24 24 (:REWRITE DEFAULT-+-1))
 (18 9 (:REWRITE OK_REGISTER))
 (18 9 (:REWRITE N_REGISTER))
 (18 9 (:REWRITE CODE_REGISTER))
 (12 12 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (12 12 (:REWRITE |(equal (- x) 0)|))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 3 (:REWRITE REG-DET-THM-HARDENED-2))
 (6 3 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 (6 3 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (1 1 (:REWRITE SIMPLIFY-SUMS-<))
 (1 1 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (1 1 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE |(< (- x) (- y))|))
 )
(ATMV1-THM-KEEP-TYPE2
 (189 27 (:DEFINITION LEN))
 (124 124 (:REWRITE DEFAULT-CDR))
 (54 27 (:REWRITE DEFAULT-+-2))
 (42 27 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (42 27 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (42 27 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (27 27 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (27 27 (:REWRITE NORMALIZE-ADDENDS))
 (27 27 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE |(equal (- x) (- y))|))
 (24 24 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (1 1 (:REWRITE |(equal (- x) 0)|))
 )
(ATMV1-THM-OUTC-TYPE1
 (312 312 (:TYPE-PRESCRIPTION REG-DET-THM-REACH_STATE-TYPE))
 (227 227 (:REWRITE DEFAULT-CDR))
 (189 78 (:REWRITE OK_REGISTER))
 (189 78 (:REWRITE N_REGISTER))
 (117 39 (:REWRITE REG-DET-THM-HARDENED-2))
 (114 69 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (114 69 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (114 69 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (102 51 (:REWRITE DEFAULT-+-2))
 (72 72 (:REWRITE DEFAULT-CAR))
 (72 39 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (69 69 (:REWRITE |(equal (- x) (- y))|))
 (51 51 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (51 51 (:REWRITE NORMALIZE-ADDENDS))
 (51 51 (:REWRITE DEFAULT-+-1))
 )
(ATMV1-THM-OUTC-TYPE2
 (273 39 (:DEFINITION LEN))
 (210 210 (:REWRITE DEFAULT-CDR))
 (78 39 (:REWRITE DEFAULT-+-2))
 (66 39 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (66 39 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (66 39 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (56 56 (:REWRITE DEFAULT-CAR))
 (39 39 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (39 39 (:REWRITE NORMALIZE-ADDENDS))
 (39 39 (:REWRITE DEFAULT-+-1))
 (39 39 (:REWRITE |(equal (- x) (- y))|))
 )
(ATMV1-THM-E_DETECT-TYPE1
 (624 624 (:TYPE-PRESCRIPTION REG-DET-THM-REACH_STATE-TYPE))
 (378 156 (:REWRITE OK_REGISTER))
 (378 156 (:REWRITE N_REGISTER))
 (234 78 (:REWRITE REG-DET-THM-HARDENED-2))
 (226 226 (:REWRITE DEFAULT-CDR))
 (144 78 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (132 78 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (132 78 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (132 78 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (120 60 (:REWRITE DEFAULT-+-2))
 (98 49 (:DEFINITION TRUE-LISTP))
 (78 78 (:REWRITE |(equal (- x) (- y))|))
 (61 61 (:REWRITE DEFAULT-CAR))
 (60 60 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (60 60 (:REWRITE NORMALIZE-ADDENDS))
 (60 60 (:REWRITE DEFAULT-+-1))
 (30 30 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (30 30 (:REWRITE |(equal (- x) 0)|))
 )
(ATMV1-THM-E_DETECT-TYPE2
 (189 27 (:DEFINITION LEN))
 (124 124 (:REWRITE DEFAULT-CDR))
 (54 27 (:REWRITE DEFAULT-+-2))
 (42 27 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (42 27 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (42 27 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (27 27 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (27 27 (:REWRITE NORMALIZE-ADDENDS))
 (27 27 (:REWRITE DEFAULT-+-1))
 (27 27 (:REWRITE |(equal (- x) (- y))|))
 (24 24 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (1 1 (:REWRITE |(equal (- x) 0)|))
 )
(ATMV1-THM-REACH_STATE-TYPE)
(ATMV1-THM-ERROR-TYPE1)
(ATMV1-THM-ERROR-TYPE2)
(ATMV1-THM-REACH_STATE
 (2488 592 (:REWRITE OK_REGISTER))
 (2488 592 (:REWRITE N_REGISTER))
 (2419 2419 (:REWRITE DEFAULT-CDR))
 (1998 309 (:REWRITE REG-DET-THM-NEXT-TYPE2))
 (906 6 (:REWRITE ATMV1-THM-NEXT-TYPE2))
 (490 283 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 (364 364 (:REWRITE DEFAULT-CAR))
 (274 140 (:REWRITE DEFAULT-+-2))
 (270 176 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (270 176 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (270 176 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (176 176 (:REWRITE |(equal (- x) (- y))|))
 (140 140 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (140 140 (:REWRITE NORMALIZE-ADDENDS))
 (140 140 (:REWRITE DEFAULT-+-1))
 (133 133 (:REWRITE SIMPLIFY-SUMS-<))
 (133 133 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (133 133 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (133 133 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (133 133 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (133 133 (:REWRITE DEFAULT-<-2))
 (133 133 (:REWRITE DEFAULT-<-1))
 (133 133 (:REWRITE |(< (- x) (- y))|))
 (124 124 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (124 124 (:REWRITE REDUCE-INTEGERP-+))
 (124 124 (:REWRITE INTEGERP-MINUS-X))
 (124 124 (:REWRITE |(< (- x) 0)|))
 (124 124 (:META META-INTEGERP-CORRECT))
 )
(ATMV1-THM-ERROR
 (144 6 (:REWRITE ATMV1-THM-ERROR-TYPE2))
 (144 6 (:REWRITE ATMV1-ERROR-TYPE2))
 (82 82 (:REWRITE DEFAULT-CDR))
 (48 24 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (24 24 (:REWRITE NORMALIZE-ADDENDS))
 (24 24 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE DEFAULT-CAR))
 (18 12 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (18 12 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (18 12 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (12 12 (:REWRITE |(equal (- x) (- y))|))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(ATMV1-THM-SYMBOLICSTATE-UNCHANGED
 (4524 165 (:REWRITE ATMV1-THM-ERROR-TYPE2))
 (4524 165 (:REWRITE ATMV1-ERROR-TYPE2))
 (1904 1904 (:REWRITE DEFAULT-CDR))
 (882 441 (:REWRITE DEFAULT-+-2))
 (600 456 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (600 456 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (600 456 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (536 536 (:REWRITE DEFAULT-CAR))
 (456 456 (:REWRITE |(equal (- x) (- y))|))
 (441 441 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (441 441 (:REWRITE NORMALIZE-ADDENDS))
 (441 441 (:REWRITE DEFAULT-+-1))
 (144 144 (:REWRITE NTH-0-CONS))
 (43 31 (:REWRITE OK_REGISTER))
 (43 31 (:REWRITE CODE_REGISTER))
 (31 31 (:REWRITE N_REGISTER))
 )
(ATMV1-THM-HARDENED-1
 (5166 225 (:REWRITE ATMV1-THM-ERROR-TYPE2))
 (5166 225 (:REWRITE ATMV1-ERROR-TYPE2))
 (2732 2732 (:REWRITE DEFAULT-CDR))
 (1206 603 (:REWRITE DEFAULT-+-2))
 (1008 144 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (827 827 (:REWRITE DEFAULT-CAR))
 (603 603 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (603 603 (:REWRITE NORMALIZE-ADDENDS))
 (603 603 (:REWRITE DEFAULT-+-1))
 (594 18 (:REWRITE ATMV1-THM-START_OP-TYPE2))
 (456 315 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (456 315 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (456 315 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (432 144 (:REWRITE REG-DET-THM-HARDENED-2))
 (315 315 (:REWRITE |(equal (- x) (- y))|))
 (310 48 (:REWRITE REG-DET-THM-OUT_VALUE-TYPE2))
 )
(ATMV1-THM-HARDENED-2
 (168 6 (:REWRITE ATMV1-THM-E_DETECT-TYPE2))
 (106 106 (:REWRITE DEFAULT-CDR))
 (72 36 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (36 36 (:REWRITE NORMALIZE-ADDENDS))
 (36 36 (:REWRITE DEFAULT-+-1))
 (30 18 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (30 18 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (30 18 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (25 25 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE |(equal (- x) (- y))|))
 (14 7 (:DEFINITION TRUE-LISTP))
 (6 6 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (6 6 (:REWRITE |(equal (- x) 0)|))
 )
(ATMV1-THM-HARDENED-3
 (7836 309 (:REWRITE ATMV1-THM-ERROR-TYPE2))
 (7836 309 (:REWRITE ATMV1-ERROR-TYPE2))
 (3740 3740 (:REWRITE DEFAULT-CDR))
 (1890 270 (:REWRITE REG-DET-THM-E_DETECT-TYPE2))
 (1602 801 (:REWRITE DEFAULT-+-2))
 (1152 18 (:REWRITE ATMV1-THM-HARDENED-2))
 (1112 1112 (:REWRITE DEFAULT-CAR))
 (810 270 (:REWRITE REG-DET-THM-HARDENED-2))
 (801 801 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (801 801 (:REWRITE NORMALIZE-ADDENDS))
 (801 801 (:REWRITE DEFAULT-+-1))
 (726 474 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (726 474 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (726 474 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (522 18 (:REWRITE ATMV1-THM-E_DETECT-TYPE2))
 (474 474 (:REWRITE |(equal (- x) (- y))|))
 (108 108 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (108 108 (:REWRITE |(equal (- x) 0)|))
 )
(SPEC-ATMV1-IP)
(SPEC-ATMV1-TRACE-IP)
(SPEC-ATMV1-REC-NEXT
 (70 70 (:REWRITE DEFAULT-CDR))
 (61 26 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-CAR))
 (35 26 (:REWRITE DEFAULT-+-1))
 (35 5 (:DEFINITION LEN))
 (26 26 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (22 14 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (22 14 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (15 15 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (15 15 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (14 14 (:REWRITE |(< (- x) (- y))|))
 (14 12 (:REWRITE DEFAULT-<-2))
 (13 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE |(+ c (+ d x))|))
 (10 10 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (10 10 (:REWRITE REDUCE-INTEGERP-+))
 (10 10 (:REWRITE INTEGERP-MINUS-X))
 (10 10 (:REWRITE |(< (- x) 0)|))
 (10 10 (:META META-INTEGERP-CORRECT))
 (10 5 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (10 5 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (10 5 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (9 9 (:REWRITE FOLD-CONSTS-IN-+))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE |(equal (- x) (- y))|))
 (2 1 (:REWRITE |(< d (+ c x y))|))
 )
(SPEC-ATMV1-THM-REC-NEXT-TYPE1
 (589 6 (:REWRITE ATMV1-THM-NEXT-TYPE2))
 (312 312 (:REWRITE DEFAULT-CDR))
 (110 110 (:REWRITE DEFAULT-CAR))
 (60 60 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (60 60 (:REWRITE SIMPLIFY-SUMS-<))
 (60 60 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (60 60 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (60 60 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (60 60 (:REWRITE REDUCE-INTEGERP-+))
 (60 60 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (60 60 (:REWRITE INTEGERP-MINUS-X))
 (60 60 (:REWRITE DEFAULT-<-2))
 (60 60 (:REWRITE DEFAULT-<-1))
 (60 60 (:REWRITE |(< (- x) 0)|))
 (60 60 (:REWRITE |(< (- x) (- y))|))
 (60 60 (:META META-INTEGERP-CORRECT))
 (46 23 (:REWRITE DEFAULT-+-2))
 (44 24 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (44 24 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (44 24 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (24 24 (:REWRITE |(equal (- x) (- y))|))
 (23 23 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (23 23 (:REWRITE NORMALIZE-ADDENDS))
 (23 23 (:REWRITE DEFAULT-+-1))
 )
(SPEC-ATMV1-THM-REC-NEXT-REACH_STATE
 (730 3 (:REWRITE ATMV1-THM-NEXT-TYPE2))
 (179 179 (:REWRITE DEFAULT-CDR))
 (40 40 (:REWRITE DEFAULT-CAR))
 (34 17 (:REWRITE DEFAULT-+-2))
 (32 32 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (32 32 (:REWRITE SIMPLIFY-SUMS-<))
 (32 32 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (32 32 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (32 32 (:REWRITE REDUCE-INTEGERP-+))
 (32 32 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (32 32 (:REWRITE INTEGERP-MINUS-X))
 (32 32 (:REWRITE DEFAULT-<-2))
 (32 32 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE |(< (- x) 0)|))
 (32 32 (:REWRITE |(< (- x) (- y))|))
 (32 32 (:META META-INTEGERP-CORRECT))
 (30 16 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (30 16 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (30 16 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (28 28 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (17 17 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (17 17 (:REWRITE NORMALIZE-ADDENDS))
 (17 17 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE |(equal (- x) (- y))|))
 )
(SPEC-ATMV1-THM-REC-NEXT-TYPE2
 (20 20 (:REWRITE DEFAULT-CDR))
 (14 2 (:DEFINITION LEN))
 (8 4 (:DEFINITION TRUE-LISTP))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (4 4 (:REWRITE SIMPLIFY-SUMS-<))
 (4 4 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (4 4 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (4 4 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (4 4 (:REWRITE REDUCE-INTEGERP-+))
 (4 4 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (4 4 (:REWRITE INTEGERP-MINUS-X))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE |(< (- x) 0)|))
 (4 4 (:REWRITE |(< (- x) (- y))|))
 (4 4 (:META META-INTEGERP-CORRECT))
 (4 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (4 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (4 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2 2 (:REWRITE NORMALIZE-ADDENDS))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 )
(SPEC-ATMV1-TEST1
 (576 1 (:DEFINITION SPEC-ATMV1-REC-NEXT))
 (353 1 (:REWRITE ATMV1-THM-NEXT-TYPE2))
 (155 2 (:REWRITE SPEC-ATMV1-THM-REC-NEXT-TYPE2))
 (109 109 (:REWRITE DEFAULT-CDR))
 (86 1 (:REWRITE ATMV1-THM-ERROR-TYPE2))
 (77 11 (:DEFINITION LEN))
 (69 21 (:DEFINITION TRUE-LISTP))
 (23 23 (:REWRITE DEFAULT-CAR))
 (23 12 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (23 12 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (23 12 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (22 22 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (22 22 (:REWRITE SIMPLIFY-SUMS-<))
 (22 22 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (22 22 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (22 22 (:REWRITE REDUCE-INTEGERP-+))
 (22 22 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (22 22 (:REWRITE INTEGERP-MINUS-X))
 (22 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE |(< (- x) 0)|))
 (22 22 (:REWRITE |(< (- x) (- y))|))
 (22 22 (:META META-INTEGERP-CORRECT))
 (22 11 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (12 12 (:REWRITE |(equal (- x) (- y))|))
 (11 11 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (11 11 (:REWRITE NORMALIZE-ADDENDS))
 (11 11 (:REWRITE DEFAULT-+-1))
 )
(SPEC-ATMV1-TEST2
 (576 1 (:DEFINITION SPEC-ATMV1-REC-NEXT))
 (353 1 (:REWRITE ATMV1-THM-NEXT-TYPE2))
 (155 2 (:REWRITE SPEC-ATMV1-THM-REC-NEXT-TYPE2))
 (96 96 (:REWRITE DEFAULT-CDR))
 (63 9 (:DEFINITION LEN))
 (57 18 (:DEFINITION TRUE-LISTP))
 (20 20 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (20 20 (:REWRITE SIMPLIFY-SUMS-<))
 (20 20 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (20 20 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (20 20 (:REWRITE REDUCE-INTEGERP-+))
 (20 20 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (20 20 (:REWRITE INTEGERP-MINUS-X))
 (20 20 (:REWRITE DEFAULT-<-2))
 (20 20 (:REWRITE DEFAULT-<-1))
 (20 20 (:REWRITE |(< (- x) 0)|))
 (20 20 (:REWRITE |(< (- x) (- y))|))
 (20 20 (:META META-INTEGERP-CORRECT))
 (19 19 (:REWRITE DEFAULT-CAR))
 (19 10 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (19 10 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (19 10 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (18 9 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (10 10 (:REWRITE |(equal (- x) (- y))|))
 (9 9 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (9 9 (:REWRITE NORMALIZE-ADDENDS))
 (9 9 (:REWRITE DEFAULT-+-1))
 )
(SPEC-ATMV1-TEST3
 (576 1 (:DEFINITION SPEC-ATMV1-REC-NEXT))
 (353 1 (:REWRITE ATMV1-THM-NEXT-TYPE2))
 (155 2 (:REWRITE SPEC-ATMV1-THM-REC-NEXT-TYPE2))
 (106 106 (:REWRITE DEFAULT-CDR))
 (86 1 (:REWRITE ATMV1-THM-ERROR-TYPE2))
 (70 10 (:DEFINITION LEN))
 (67 20 (:DEFINITION TRUE-LISTP))
 (22 22 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
 (22 22 (:REWRITE SIMPLIFY-SUMS-<))
 (22 22 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (22 22 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (22 22 (:REWRITE REDUCE-INTEGERP-+))
 (22 22 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (22 22 (:REWRITE INTEGERP-MINUS-X))
 (22 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE |(< (- x) 0)|))
 (22 22 (:REWRITE |(< (- x) (- y))|))
 (22 22 (:META META-INTEGERP-CORRECT))
 (21 21 (:REWRITE DEFAULT-CAR))
 (21 11 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (21 11 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (21 11 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (20 10 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (11 11 (:REWRITE |(equal (- x) (- y))|))
 (10 10 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (10 10 (:REWRITE NORMALIZE-ADDENDS))
 (10 10 (:REWRITE DEFAULT-+-1))
 )
