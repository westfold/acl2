(IND
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(HACK1A)
(HACK1B)
(ODD-AND-EVEN
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(EXPT-X-2
 (27 27 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-2))
 (27 27 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (27 27 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (6 2 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (6 2 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (6 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (6 2 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (5 5 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (3 1 (:LINEAR EXPT->-1-2))
 (3 1 (:LINEAR EXPT->-1-1))
 (3 1 (:LINEAR EXPT-<-1-2))
 (3 1 (:LINEAR EXPT-<-1-1))
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(<-0-EXPT-X-2
 (123 123 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-2))
 (123 123 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (100 26 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (100 26 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (100 26 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (100 26 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (62 12 (:REWRITE DEFAULT-<-2))
 (51 13 (:LINEAR EXPT->-1-2))
 (51 13 (:LINEAR EXPT->-1-1))
 (51 13 (:LINEAR EXPT-<-1-2))
 (51 13 (:LINEAR EXPT-<-1-1))
 (22 12 (:REWRITE DEFAULT-<-1))
 (9 9 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (9 9 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 )
(EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT
 (66 2 (:DEFINITION EXPT))
 (49 49 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-2))
 (49 49 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (28 8 (:REWRITE DEFAULT-*-2))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-*-1))
 (6 1 (:REWRITE 0-<-*))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE ZIP-OPEN))
 (3 1 (:DEFINITION IFF))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (2 2 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (2 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (2 2 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (2 1 (:REWRITE EQUAL-*-X-Y-0))
 (1 1 (:LINEAR EXPT->-1-2))
 (1 1 (:LINEAR EXPT->-1-1))
 (1 1 (:LINEAR EXPT-<-1-2))
 (1 1 (:LINEAR EXPT-<-1-1))
 )
(REDUCE
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-2))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (58 58 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (37 7 (:REWRITE DEFAULT-*-2))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (7 7 (:REWRITE DEFAULT-*-1))
 (4 4 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (3 3 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE ZIP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE FOLD-CONSTS-IN-*))
 )
(EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT
 (41 41 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (35 35 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-2))
 (35 35 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (19 7 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE DEFAULT-*-1))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (2 2 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (2 2 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (2 2 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (1 1 (:REWRITE ZIP-OPEN))
 (1 1 (:LINEAR EXPT->-1-2))
 (1 1 (:LINEAR EXPT->-1-1))
 (1 1 (:LINEAR EXPT-<-1-2))
 (1 1 (:LINEAR EXPT-<-1-1))
 )
(EXPT-NEGATIVE-BASE-EVEN-EXPONENT
 (582 582 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (582 582 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (572 572 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (336 336 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (333 64 (:REWRITE DEFAULT-*-2))
 (300 84 (:REWRITE <-0-MINUS))
 (234 186 (:REWRITE DEFAULT-<-1))
 (186 186 (:REWRITE DEFAULT-<-2))
 (149 64 (:REWRITE DEFAULT-*-1))
 (128 28 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (128 28 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (109 109 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (84 28 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (84 28 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (64 14 (:LINEAR EXPT->-1-2))
 (64 14 (:LINEAR EXPT-<-1-1))
 (52 22 (:REWRITE DEFAULT-UNARY-/))
 (42 42 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-+-1))
 (42 14 (:LINEAR EXPT->-1-1))
 (42 14 (:LINEAR EXPT-<-1-2))
 (10 4 (:REWRITE EXPONENTS-ADD-2))
 (8 8 (:REWRITE FOLD-CONSTS-IN-*))
 (4 4 (:REWRITE EXPONENTS-ADD-FOR-NONPOS-EXPONENTS))
 (4 4 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 )
(EXPT-NEGATIVE-BASE-ODD-EXPONENT-HACK
 (383 383 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (383 383 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (356 356 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (326 326 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (135 135 (:REWRITE DEFAULT-<-2))
 (135 135 (:REWRITE DEFAULT-<-1))
 (129 70 (:REWRITE DEFAULT-*-1))
 (80 20 (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE<1))
 (80 20 (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE<1))
 (60 60 (:REWRITE 0-<-*))
 (60 20 (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE>1))
 (60 20 (:LINEAR EXPT-IS-INCREASING-FOR-BASE>1))
 (54 54 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (44 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (42 12 (:REWRITE DEFAULT-UNARY-/))
 (40 10 (:LINEAR EXPT->-1-2))
 (40 10 (:LINEAR EXPT-<-1-1))
 (30 10 (:LINEAR EXPT->-1-1))
 (30 10 (:LINEAR EXPT-<-1-2))
 (23 23 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-LEFT))
 (20 6 (:REWRITE EXPT-NEGATIVE-BASE-EVEN-EXPONENT))
 (4 4 (:REWRITE EXPONENTS-ADD-FOR-NONPOS-EXPONENTS))
 (4 4 (:REWRITE EXPONENTS-ADD-FOR-NONNEG-EXPONENTS))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(HACK654)
(EXPT-NEGATIVE-BASE-ODD-EXPONENT
 (26 26 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-RATIONALP))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-2))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-1))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (26 26 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 )
