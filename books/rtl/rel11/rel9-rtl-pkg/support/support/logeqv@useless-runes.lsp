(RTL::FL)
(RTL::LOGEQV-BOUND
 (37 6 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (26 26 (:REWRITE RTL::POWER2-INTEGER))
 (26 26 (:REWRITE RTL::INTEGERP-MINUS))
 (24 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 12 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (12 12 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (12 12 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (12 12 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (12 12 (:REWRITE RTL::EXPT-COMPARE))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (12 12 (:META CANCEL_PLUS-LESSP-CORRECT))
 (11 11 (:TYPE-PRESCRIPTION RTL::LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 )
(RTL::LOGEQV-WITH-ZERO
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE RTL::POWER2-INTEGER))
 (5 5 (:REWRITE RTL::INTEGERP-MINUS))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(RTL::LOGEQV-COMMUTATIVE
 (51 3 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (24 8 (:REWRITE RTL::LOGIOR-WITH-NON-INTEGER-ARG))
 (20 10 (:TYPE-PRESCRIPTION RTL::NONNEG-+-TYPE))
 (18 18 (:TYPE-PRESCRIPTION RTL::INTEGERP-PROD))
 (18 6 (:TYPE-PRESCRIPTION RTL::LOGIOR-POSITIVE))
 (12 12 (:REWRITE RTL::POWER2-INTEGER))
 (12 12 (:REWRITE RTL::INTEGERP-MINUS))
 (12 8 (:REWRITE DEFAULT-+-2))
 (12 8 (:REWRITE DEFAULT-+-1))
 (12 4 (:REWRITE RTL::LOGNOT-OF-NON-INTEGER))
 (6 6 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP-TYPE))
 (6 6 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP))
 (6 6 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-2))
 (6 6 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-1))
 (6 6 (:TYPE-PRESCRIPTION BINARY-LOGIOR))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 )
(RTL::LOGEQV-WITH-MINUS-1
 (1 1 (:REWRITE RTL::POWER2-INTEGER))
 (1 1 (:REWRITE RTL::LOGNOT-OF-NON-INTEGER))
 (1 1 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (1 1 (:REWRITE RTL::INTEGERP-MINUS))
 )
(RTL::LOGEQV-EVEN
 (61 19 (:REWRITE DEFAULT-*-2))
 (30 2 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (22 8 (:REWRITE RTL::EVEN-MEANS-HALF-IS-INTEGER))
 (19 19 (:REWRITE DEFAULT-*-1))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP-TYPE))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-2))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-1))
 (14 14 (:TYPE-PRESCRIPTION RTL::EVEN))
 (10 10 (:REWRITE RTL::POWER2-INTEGER))
 (10 10 (:REWRITE RTL::INTEGERP-MINUS))
 (8 8 (:REWRITE RTL::INTEGERP-PROD))
 (6 4 (:REWRITE RTL::LOGIOR-WITH-NON-INTEGER-ARG))
 (2 2 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (2 2 (:TYPE-PRESCRIPTION RTL::LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (2 2 (:REWRITE RTL::LOGNOT-OF-NON-INTEGER))
 (1 1 (:REWRITE RTL::EXPT-COMPARE-EQUAL))
 (1 1 (:REWRITE RTL::EQUAL-OF-PREDS-REWRITE))
 (1 1 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (1 1 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1 1 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(RTL::LOGEQV-WITH-NON-INTEGER-ARG
 (74 4 (:LINEAR RTL::LOGAND-BND))
 (34 5 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (34 4 (:REWRITE RTL::LOGNOT-BOUND-GEN))
 (32 32 (:TYPE-PRESCRIPTION RTL::LOGIOR-POSITIVE))
 (32 32 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP-TYPE))
 (32 32 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP))
 (32 32 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-2))
 (28 28 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (28 28 (:TYPE-PRESCRIPTION RTL::LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (18 18 (:REWRITE RTL::POWER2-INTEGER))
 (18 18 (:REWRITE RTL::INTEGERP-MINUS))
 (6 4 (:REWRITE DEFAULT-<-2))
 (6 4 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE RTL::INTEGER-TIGHTEN-BOUND))
 (4 4 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (4 4 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (4 4 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (4 4 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (4 4 (:REWRITE RTL::EXPT-COMPARE))
 (4 4 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE RTL::LOGNOT-<-0))
 (2 2 (:REWRITE RTL::EXPT-COMPARE-EQUAL))
 (2 2 (:REWRITE RTL::EQUAL-OF-PREDS-REWRITE))
 (2 2 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL))
 (2 2 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (2 2 (:META CANCEL_PLUS-EQUAL-CORRECT))
 )
(RTL::LOGEQV-SELF
 (5 5 (:REWRITE RTL::POWER2-INTEGER))
 (5 5 (:REWRITE RTL::INTEGERP-MINUS))
 )
(RTL::FLOOR-LOGEQV-BY-2
 (93 5 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (58 24 (:REWRITE DEFAULT-*-2))
 (44 24 (:REWRITE DEFAULT-*-1))
 (34 6 (:REWRITE RTL::FL-OF-EVEN/2))
 (30 12 (:REWRITE RTL::LOGIOR-WITH-NON-INTEGER-ARG))
 (30 2 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-POSITIVE-INTEGER-TYPE-PRESCRIPTION))
 (24 6 (:REWRITE RTL::FL-OF-ODD/2))
 (20 6 (:REWRITE RTL::FL-INT))
 (20 6 (:REWRITE RTL::A10))
 (18 18 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP-TYPE))
 (18 18 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP))
 (18 18 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-2))
 (18 18 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-1))
 (18 6 (:REWRITE RTL::LOGNOT-OF-NON-INTEGER))
 (12 8 (:REWRITE RTL::EVEN-MEANS-HALF-IS-INTEGER))
 (12 6 (:REWRITE RTL::FL-OF-NON-RATIONAL))
 (10 10 (:REWRITE RTL::POWER2-INTEGER))
 (10 10 (:REWRITE RTL::INTEGERP-MINUS))
 (10 4 (:REWRITE RTL::LOGEQV-WITH-NON-INTEGER-ARG))
 (8 8 (:REWRITE RTL::INTEGERP-PROD))
 (6 6 (:REWRITE RTL::FL-MINUS-GEN))
 (4 4 (:TYPE-PRESCRIPTION RTL::EVEN))
 (2 2 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (2 2 (:TYPE-PRESCRIPTION RTL::LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (2 2 (:TYPE-PRESCRIPTION RTL::LOGAND-INTEGER-TYPE-PRESCRIPTION))
 )
(RTL::FL-LOGEQV-BY-2
 (93 5 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (55 21 (:REWRITE DEFAULT-*-2))
 (34 6 (:REWRITE RTL::FL-OF-EVEN/2))
 (30 12 (:REWRITE RTL::LOGIOR-WITH-NON-INTEGER-ARG))
 (24 6 (:REWRITE RTL::FL-OF-ODD/2))
 (23 21 (:REWRITE DEFAULT-*-1))
 (20 6 (:REWRITE RTL::FL-INT))
 (20 6 (:REWRITE RTL::A10))
 (18 6 (:REWRITE RTL::LOGNOT-OF-NON-INTEGER))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP-TYPE))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NON-NEGATIVE-INTEGERP))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-2))
 (16 16 (:TYPE-PRESCRIPTION RTL::LOGIOR-NEGATIVE-1))
 (15 1 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-POSITIVE-INTEGER-TYPE-PRESCRIPTION))
 (12 8 (:REWRITE RTL::EVEN-MEANS-HALF-IS-INTEGER))
 (12 6 (:REWRITE RTL::FL-OF-NON-RATIONAL))
 (10 10 (:REWRITE RTL::POWER2-INTEGER))
 (10 10 (:REWRITE RTL::INTEGERP-MINUS))
 (10 4 (:REWRITE RTL::LOGEQV-WITH-NON-INTEGER-ARG))
 (8 8 (:REWRITE RTL::INTEGERP-PROD))
 (6 6 (:REWRITE RTL::FL-MINUS-GEN))
 (4 4 (:TYPE-PRESCRIPTION RTL::EVEN))
 (1 1 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (1 1 (:TYPE-PRESCRIPTION RTL::LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (1 1 (:TYPE-PRESCRIPTION RTL::LOGAND-INTEGER-TYPE-PRESCRIPTION))
 )
(RTL::LOGNOT-LOGEQV
 (7689 2118 (:REWRITE DEFAULT-+-2))
 (6631 2118 (:REWRITE DEFAULT-+-1))
 (6023 3363 (:REWRITE DEFAULT-*-2))
 (5772 180 (:REWRITE RTL::LOGAND-0-WHEN-ONE-ARG-IS-ODD))
 (5352 460 (:REWRITE RTL::FL-INT))
 (3916 3363 (:REWRITE DEFAULT-*-1))
 (3307 3307 (:TYPE-PRESCRIPTION RTL::LOGAND-NON-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (3307 3307 (:TYPE-PRESCRIPTION RTL::LOGAND-NEGATIVE-INTEGER-TYPE-PRESCRIPTION))
 (3078 1062 (:REWRITE RTL::INTEGERP-SUM-TAKE-OUT-KNOWN-INTEGER))
 (2828 2828 (:REWRITE RTL::POWER2-INTEGER))
 (2333 2333 (:REWRITE RTL::INTEGERP-MINUS))
 (2176 469 (:REWRITE RTL::LOGAND-WITH-NON-INTEGER-ARG))
 (2072 1152 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL))
 (1976 52 (:REWRITE RTL::FL-EQUAL-0))
 (1762 1762 (:REWRITE RTL::INTEGERP-PROD))
 (1352 231 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (1236 68 (:REWRITE RTL::FL-SHIFT-FL-BY-1))
 (1091 464 (:REWRITE RTL::FL-OF-NON-RATIONAL))
 (1050 18 (:LINEAR RTL::LOGAND-BND))
 (1026 1026 (:REWRITE RTL::INTEGERP-+))
 (985 985 (:REWRITE RTL::EXPT-COMPARE-EQUAL))
 (961 163 (:REWRITE RTL::FL+INT-REWRITE))
 (923 5 (:REWRITE RTL::LOGNOT-BOUND-GEN))
 (840 404 (:REWRITE RTL::EVEN-MEANS-HALF-IS-INTEGER))
 (743 5 (:REWRITE RTL::INTEGER-TIGHTEN-BOUND))
 (670 67 (:REWRITE RTL::PRODUCT-LESS-THAN-ZERO))
 (528 528 (:REWRITE RTL::FL-MINUS-GEN))
 (475 475 (:REWRITE RTL::EQUAL-OF-PREDS-REWRITE))
 (475 475 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (475 475 (:REWRITE RTL::EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (467 467 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (467 467 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (436 436 (:TYPE-PRESCRIPTION RTL::EVEN))
 (404 4 (:REWRITE RTL::LOGAND-NON-NEGATIVE))
 (298 298 (:REWRITE RTL::NON-INTEGERP-<-INTEGERP))
 (298 298 (:REWRITE RTL::INTEGERP-<-NON-INTEGERP))
 (298 298 (:REWRITE RTL::EXPT-COMPARE))
 (298 298 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-<))
 (295 295 (:REWRITE RTL::CANCEL-COMMON-FACTORS-IN-EQUAL-WITH-0))
 (260 4 (:REWRITE RTL::LOGAND-NEGATIVE-REWRITE))
 (231 231 (:REWRITE RTL::LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (170 17 (:REWRITE RTL::COLLECT-CONSTANTS-IN-<-OF-SUMS))
 (163 163 (:REWRITE RTL::PULL-CONSTANT-OUT-OF-FL))
 (145 145 (:REWRITE DEFAULT-<-2))
 (145 145 (:REWRITE DEFAULT-<-1))
 (145 145 (:META CANCEL_PLUS-LESSP-CORRECT))
 (124 124 (:REWRITE RTL::UNARY-DIVIDE-EQUAL-NON-ZERO-CONSTANT))
 (104 44 (:REWRITE RTL::LOGIOR-WITH-NON-INTEGER-ARG))
 (34 34 (:REWRITE RTL::NONNEG-+))
 (6 2 (:REWRITE RTL::LOGIOR-0))
 )
