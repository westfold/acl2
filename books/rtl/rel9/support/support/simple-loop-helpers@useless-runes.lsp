(BITS-31-0
 (108 9 (:REWRITE BITS-REDUCE-EXACTP))
 (54 54 (:TYPE-PRESCRIPTION EXPO))
 (36 2 (:LINEAR BITS-UPPER-BOUND-TIGHTER))
 (36 2 (:LINEAR BITS-UPPER-BOUND))
 (36 2 (:LINEAR BITS-LESS-THAN-X-GEN))
 (36 2 (:LINEAR BITS-LESS-THAN-X))
 (18 18 (:LINEAR EXPO>=))
 (9 9 (:REWRITE EXPO-OF-NOT-RATIONALP))
 (9 9 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (9 9 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (9 9 (:REWRITE BITS-WITH-J-NOT-AN-INTEGER-2))
 (9 9 (:REWRITE BITS-WITH-I-NOT-AN-INTEGER-2))
 (9 9 (:REWRITE BITS-EXPT-CONSTANT))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (2 2 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(BVECP-BITN)
(BITN-SETBITN-NOT-EQUAL
 (493 52 (:REWRITE BITN-TOO-SMALL))
 (383 24 (:REWRITE BITS-REDUCE-EXACTP))
 (212 14 (:REWRITE BITS-SPLIT-AROUND-ZERO))
 (192 9 (:REWRITE BVECP-TIGHTEN))
 (168 6 (:REWRITE BITS-TAIL-SPECIAL))
 (161 125 (:REWRITE DEFAULT-<-2))
 (156 156 (:REWRITE DEFAULT-+-2))
 (156 156 (:REWRITE DEFAULT-+-1))
 (147 1 (:REWRITE EXPO-BITS-WHEN-TOP-BIT-IS-1))
 (141 141 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (141 141 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (141 125 (:REWRITE DEFAULT-<-1))
 (132 12 (:REWRITE CAT-WITH-M-NOT-A-NATURAL))
 (116 116 (:TYPE-PRESCRIPTION EXPO))
 (100 2 (:LINEAR BITS-UPPER-BOUND))
 (99 5 (:REWRITE BITN-BITS))
 (67 67 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-RATIONAL-TYPE))
 (62 14 (:REWRITE BITS-FORCE-WITH-A-CHOSEN-NEG))
 (59 59 (:REWRITE BITS-0-MEANS-TOP-BIT-0))
 (56 10 (:REWRITE BITN-BVECP-1))
 (55 49 (:REWRITE DEFAULT-*-2))
 (52 52 (:REWRITE BITN-BVECP-0-ERIC))
 (52 24 (:LINEAR EXPT-2-TYPE-LINEAR))
 (49 49 (:REWRITE DEFAULT-*-1))
 (48 40 (:REWRITE BITN-OF-NON-RATIONAL))
 (42 42 (:REWRITE EXPT-2-EVALUATOR))
 (40 40 (:REWRITE BITN-WITH-N-NOT-AN-INTEGER))
 (40 40 (:REWRITE BITN-MINUS))
 (38 38 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (38 38 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (38 38 (:LINEAR EXPO>=))
 (33 12 (:REWRITE BITN-SPLIT-AROUND-ZERO))
 (24 24 (:REWRITE BITS-WITH-J-NOT-AN-INTEGER-2))
 (24 24 (:REWRITE BITS-WITH-I-NOT-AN-INTEGER-2))
 (24 24 (:REWRITE BITS-EXPT-CONSTANT))
 (23 23 (:REWRITE BITS-IGNORE-NEGATIVE-BITS-OF-INTEGER))
 (22 22 (:REWRITE BITS-WITH-X-NOT-RATIONAL))
 (22 22 (:REWRITE BITS-WITH-J-NOT-AN-INTEGER))
 (22 22 (:REWRITE BITS-WITH-I-NOT-AN-INTEGER))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (20 19 (:REWRITE EXPO-OF-NOT-RATIONALP))
 (13 13 (:REWRITE BITN-EQUAL-TO-SILLY-VALUE))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 12 (:REWRITE CAT-WITH-N-NOT-A-NATURAL))
 (12 12 (:REWRITE CAT-TIGHTEN-X))
 (12 12 (:REWRITE BITN-OF-EXPT-EQUAL-0))
 (11 11 (:REWRITE BITN-CAT-CONSTANTS))
 (10 2 (:REWRITE BITS-UPPER-BOUND-2))
 (6 6 (:REWRITE SETBITN-REWRITE))
 (6 6 (:REWRITE CAT-COMBINE-CONSTANTS-GEN))
 (6 6 (:REWRITE CAT-COMBINE-CONSTANTS))
 (6 6 (:REWRITE BITS-WITH-BAD-INDEX-2))
 (5 5 (:REWRITE BITN-BITS-CONSTANTS))
 (2 2 (:REWRITE BITS-DROP-SILLY-LOWER-BOUND))
 (2 2 (:LINEAR BITS-UPPER-BOUND-TIGHTER))
 (2 2 (:LINEAR BITS-LESS-THAN-X-GEN))
 (1 1 (:REWRITE BITN-OF-EXPT-EQUAL-1))
 )
($$LOOP_0$HIGH)
(NATP-$$LOOP_0$HIGH)
($$LOOP_0$ADJ)
(BITN-$$LOOP_0$ADJ)
(BITN-$$LOOP_0$ADJ-$$LOOP_0$ADJ)
($$LOOP_0
 (59 37 (:REWRITE DEFAULT-+-2))
 (44 37 (:REWRITE DEFAULT-+-1))
 (31 15 (:REWRITE DEFAULT-<-1))
 (20 15 (:REWRITE DEFAULT-<-2))
 (19 19 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (19 19 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (8 8 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BITN-$$LOOP_0
 (1028 191 (:REWRITE BITN-TOO-SMALL))
 (465 441 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (240 152 (:REWRITE DEFAULT-<-2))
 (191 191 (:REWRITE BITS-0-MEANS-TOP-BIT-0))
 (191 191 (:REWRITE BITN-BVECP-0-ERIC))
 (182 152 (:REWRITE DEFAULT-<-1))
 (180 170 (:REWRITE BITN-WITH-N-NOT-AN-INTEGER))
 (170 170 (:REWRITE BITN-OF-NON-RATIONAL))
 (170 170 (:REWRITE BITN-MINUS))
 (152 152 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (152 152 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (119 58 (:REWRITE BITN-SPLIT-AROUND-ZERO))
 (98 98 (:REWRITE EXPT-2-EVALUATOR))
 (71 71 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (71 71 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (69 69 (:REWRITE BITN-EQUAL-TO-SILLY-VALUE))
 (58 58 (:REWRITE BITN-OF-EXPT-EQUAL-0))
 (57 19 (:LINEAR EXPT-2-TYPE-LINEAR))
 (34 32 (:REWRITE DEFAULT-+-2))
 (33 32 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE A4))
 )
($$LOOP_1$LOW)
($$LOOP_1$HIGH)
(NATP-$$LOOP_1$LOW)
($$LOOP_1$ADJ)
(BITN-$$LOOP_1$ADJ)
(BITN-$$LOOP_1$ADJ-$$LOOP_1$ADJ)
($$LOOP_1
 (7 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BITN-$$LOOP_1
 (1252 234 (:REWRITE BITN-TOO-SMALL))
 (549 525 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (344 210 (:REWRITE DEFAULT-<-2))
 (234 234 (:REWRITE BITS-0-MEANS-TOP-BIT-0))
 (234 234 (:REWRITE BITN-BVECP-0-ERIC))
 (223 210 (:REWRITE DEFAULT-<-1))
 (212 202 (:REWRITE BITN-WITH-N-NOT-AN-INTEGER))
 (212 202 (:REWRITE BITN-OF-NON-RATIONAL))
 (210 210 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (210 210 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (202 202 (:REWRITE BITN-MINUS))
 (141 68 (:REWRITE BITN-SPLIT-AROUND-ZERO))
 (119 119 (:REWRITE EXPT-2-EVALUATOR))
 (99 17 (:REWRITE BITN-BVECP-1))
 (87 29 (:LINEAR EXPT-2-TYPE-LINEAR))
 (83 83 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (83 83 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (80 80 (:REWRITE BITN-EQUAL-TO-SILLY-VALUE))
 (75 5 (:REWRITE BVECP-TIGHTEN))
 (68 68 (:REWRITE BITN-OF-EXPT-EQUAL-0))
 (23 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE A4))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
($$LOOP_2$HIGH)
(NATP-$$LOOP_2$HIGH)
($$LOOP_2$ADJ)
(AG-$$LOOP_2$ADJ)
(AG-$$LOOP_2$ADJ-$$LOOP_2$ADJ)
($$LOOP_2
 (59 37 (:REWRITE DEFAULT-+-2))
 (44 37 (:REWRITE DEFAULT-+-1))
 (31 15 (:REWRITE DEFAULT-<-1))
 (20 15 (:REWRITE DEFAULT-<-2))
 (19 19 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (19 19 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (8 8 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(AG-$$LOOP_2
 (103 73 (:REWRITE DEFAULT-<-1))
 (77 73 (:REWRITE DEFAULT-<-2))
 (73 73 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (73 73 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (34 32 (:REWRITE DEFAULT-+-2))
 (33 32 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (12 12 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (6 2 (:REWRITE A4))
 )
($$LOOP_3$LOW)
($$LOOP_3$HIGH)
(NATP-$$LOOP_3$LOW)
($$LOOP_3$ADJ)
(AG-$$LOOP_3$ADJ)
(AG-$$LOOP_3$ADJ-$$LOOP_3$ADJ)
($$LOOP_3
 (7 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (6 6 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (6 6 (:REWRITE DEFAULT-<-1))
 (5 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(AG-$$LOOP_3
 (154 115 (:REWRITE DEFAULT-<-2))
 (126 115 (:REWRITE DEFAULT-<-1))
 (115 115 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (115 115 (:REWRITE LESS-THAN-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (23 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-RIGHT-HAND-SIDE))
 (14 14 (:REWRITE EQUAL-MULTIPLY-THROUGH-BY-INVERTED-FACTOR-FROM-LEFT-HAND-SIDE))
 (6 2 (:REWRITE A4))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
