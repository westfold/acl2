(POWERLISTS::EVAL-POLY-U-UNARY---U
 (4378 28 (:DEFINITION POWERLISTS::EVAL-POLY-AT-POINT))
 (1866 39 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (1822 37 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (1674 558 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (1116 1116 (:TYPE-PRESCRIPTION BOOLEANP))
 (798 798 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (730 730 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (308 132 (:REWRITE DEFAULT-*-2))
 (266 132 (:REWRITE DEFAULT-*-1))
 (186 172 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (84 28 (:DEFINITION FIX))
 (77 7 (:DEFINITION POWERLISTS::P-UNARY--))
 (71 33 (:REWRITE DEFAULT-+-1))
 (67 33 (:REWRITE DEFAULT-+-2))
 (60 4 (:REWRITE COMMUTATIVITY-2-OF-*))
 (48 3 (:DEFINITION POWERLISTS::P--))
 (33 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 4 (:REWRITE COMMUTATIVITY-OF-*))
 (18 14 (:REWRITE POWERLISTS::UNTIE-R-SIMILAR))
 (18 14 (:REWRITE POWERLISTS::UNTIE-L-SIMILAR))
 (16 16 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (16 2 (:REWRITE ASSOCIATIVITY-OF-*))
 (14 14 (:REWRITE FOLD-CONSTS-IN-*))
 )
(POWERLISTS::P-OMEGA
 (2 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(POWERLISTS::P-OMEGA-SQRT)
(POWERLISTS::P-UNARY---OMEGA
 (12 4 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (9 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (5 5 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (3 3 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 )
(POWERLISTS::NUMBERP-OMEGA-0)
(POWERLISTS::P-OMEGA->TIE-MINUS
 (25 5 (:REWRITE ZP-OPEN))
 (24 8 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 4 (:REWRITE <-0-+-NEGATIVE-1))
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(POWERLISTS::P-OMEGA-SQRT**2
 (12 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 4 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (10 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 3 (:REWRITE DEFAULT-*-2))
 (9 3 (:REWRITE DEFAULT-*-1))
 (8 8 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 8 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (5 5 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (5 5 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 )
(POWERLISTS::EVAL-POLY-OMEGA-N-AUX
 (1296 8 (:DEFINITION POWERLISTS::EVAL-POLY))
 (1232 8 (:DEFINITION POWERLISTS::EVAL-POLY-AT-POINT))
 (770 210 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (616 56 (:DEFINITION POWERLISTS::P-SIMILAR-P))
 (552 12 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (552 12 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (462 154 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (308 308 (:TYPE-PRESCRIPTION BOOLEANP))
 (308 154 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (221 221 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (196 196 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (112 112 (:TYPE-PRESCRIPTION POWERLISTS::P-SIMILAR-P))
 (64 28 (:REWRITE DEFAULT-*-2))
 (60 4 (:DEFINITION POWERLISTS::P-*))
 (52 28 (:REWRITE DEFAULT-*-1))
 (51 42 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (37 20 (:REWRITE DEFAULT-+-2))
 (36 20 (:REWRITE DEFAULT-+-1))
 (32 2 (:DEFINITION POWERLISTS::P--))
 (30 2 (:DEFINITION POWERLISTS::P-+))
 (24 24 (:TYPE-PRESCRIPTION POWERLISTS::EVAL-POLY-AT-POINT))
 (24 8 (:DEFINITION FIX))
 (11 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 1 (:DEFINITION POWERLISTS::P-UNARY--))
 (10 8 (:REWRITE POWERLISTS::EVAL-POLY-LEMMA))
 )
(POWERLISTS::EVAL-POLY-OMEGA-N
 (160 56 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (126 6 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (126 6 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (108 56 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (104 104 (:TYPE-PRESCRIPTION BOOLEANP))
 (90 6 (:DEFINITION POWERLISTS::P-*))
 (81 81 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (68 68 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (56 56 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (55 5 (:DEFINITION POWERLISTS::P-UNARY--))
 (48 3 (:DEFINITION POWERLISTS::P--))
 (45 3 (:DEFINITION POWERLISTS::P-+))
 (41 29 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (41 29 (:REWRITE DEFAULT-+-1))
 (38 29 (:REWRITE DEFAULT-+-2))
 (27 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (24 6 (:REWRITE DEFAULT-*-2))
 (22 22 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (18 6 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE ZP-OPEN))
 )
(POWERLISTS::P-DEPTH
 (106 2 (:DEFINITION ACL2-COUNT))
 (32 16 (:REWRITE DEFAULT-+-2))
 (22 16 (:REWRITE DEFAULT-+-1))
 (16 4 (:REWRITE COMMUTATIVITY-OF-+))
 (16 4 (:DEFINITION INTEGER-ABS))
 (16 2 (:DEFINITION LENGTH))
 (10 2 (:DEFINITION LEN))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (2 2 (:TYPE-PRESCRIPTION LEN))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (2 2 (:REWRITE DEFAULT-REALPART))
 (2 2 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE DEFAULT-IMAGPART))
 (2 2 (:REWRITE DEFAULT-DENOMINATOR))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (1 1 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (1 1 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(POWERLISTS::POWERLIST->NON-ZERO-DEPTH
 (39 13 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (35 15 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (26 26 (:TYPE-PRESCRIPTION BOOLEANP))
 (26 13 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (22 2 (:DEFINITION POWERLISTS::P-SIMILAR-P))
 (15 15 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (13 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION POWERLISTS::P-SIMILAR-P))
 (2 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(POWERLISTS::EVAL-POLY-OMEGA-DEPTH
 (3402 21 (:DEFINITION POWERLISTS::EVAL-POLY))
 (3234 21 (:DEFINITION POWERLISTS::EVAL-POLY-AT-POINT))
 (1617 147 (:DEFINITION POWERLISTS::P-SIMILAR-P))
 (1432 31 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (1432 31 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (1257 423 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (840 423 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (834 834 (:TYPE-PRESCRIPTION BOOLEANP))
 (601 601 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (536 536 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (294 294 (:TYPE-PRESCRIPTION POWERLISTS::P-SIMILAR-P))
 (262 18 (:DEFINITION POWERLISTS::P-*))
 (190 81 (:REWRITE DEFAULT-*-2))
 (159 81 (:REWRITE DEFAULT-*-1))
 (139 119 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (123 56 (:REWRITE DEFAULT-+-2))
 (105 7 (:DEFINITION POWERLISTS::P-+))
 (97 56 (:REWRITE DEFAULT-+-1))
 (63 63 (:TYPE-PRESCRIPTION POWERLISTS::EVAL-POLY-AT-POINT))
 (63 21 (:DEFINITION FIX))
 (48 3 (:DEFINITION POWERLISTS::P--))
 (23 23 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (12 3 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(POWERLISTS::P-FT-OMEGA)
(POWERLISTS::P-DEPTH-UNZIP
 (564 192 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (378 192 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (372 372 (:TYPE-PRESCRIPTION BOOLEANP))
 (186 186 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (94 47 (:REWRITE DEFAULT-+-2))
 (53 1 (:REWRITE POWERLISTS::ZIP-REGULAR))
 (47 47 (:REWRITE DEFAULT-+-1))
 (36 35 (:REWRITE POWERLISTS::UNTIE-R-SIMILAR))
 (36 35 (:REWRITE POWERLISTS::UNTIE-L-SIMILAR))
 (30 2 (:DEFINITION POWERLISTS::P-ZIP))
 (7 7 (:REWRITE EQUAL-CONSTANT-+))
 )
(POWERLISTS::FT-OMEGA-LEMMA
 (1582 10 (:DEFINITION POWERLISTS::EVAL-POLY))
 (1502 10 (:DEFINITION POWERLISTS::EVAL-POLY-AT-POINT))
 (921 258 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (755 67 (:DEFINITION POWERLISTS::P-SIMILAR-P))
 (726 310 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (648 14 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (648 14 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (560 192 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (376 192 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (368 368 (:TYPE-PRESCRIPTION BOOLEANP))
 (228 228 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (88 8 (:DEFINITION POWERLISTS::P-DEPTH))
 (76 34 (:REWRITE DEFAULT-*-2))
 (62 34 (:REWRITE DEFAULT-*-1))
 (60 44 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (60 29 (:REWRITE DEFAULT-+-2))
 (60 4 (:DEFINITION POWERLISTS::P-*))
 (47 29 (:REWRITE DEFAULT-+-1))
 (44 1 (:DEFINITION POWERLISTS::P-REGULAR-P))
 (32 8 (:DEFINITION FIX))
 (32 2 (:DEFINITION POWERLISTS::P--))
 (30 30 (:TYPE-PRESCRIPTION POWERLISTS::EVAL-POLY-AT-POINT))
 (30 2 (:DEFINITION POWERLISTS::P-+))
 (15 15 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (8 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE POWERLISTS::SIMILAR-REGULAR))
 (3 3 (:REWRITE POWERLISTS::UNTIE-R-SIMILAR))
 (3 3 (:REWRITE POWERLISTS::UNTIE-L-SIMILAR))
 )
(POWERLISTS::P-FFT-OMEGA
 (212 4 (:DEFINITION ACL2-COUNT))
 (64 32 (:REWRITE DEFAULT-+-2))
 (44 32 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (24 8 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (22 1 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (22 1 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (20 4 (:DEFINITION LEN))
 (16 16 (:TYPE-PRESCRIPTION BOOLEANP))
 (16 8 (:REWRITE POWERLISTS::NUMERIC-NON-POWERLIST))
 (8 8 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (8 8 (:REWRITE POWERLISTS::SIMILAR-NON-POWERLISTS))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 4 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(POWERLISTS::FFT-OMEGA->FT-OMEGA
 (2698 908 (:REWRITE POWERLISTS::BOOLEAN-NON-POWERLIST))
 (2060 87 (:DEFINITION POWERLISTS::P-UNZIP-R))
 (2060 87 (:DEFINITION POWERLISTS::P-UNZIP-L))
 (2010 92 (:DEFINITION POWERLISTS::P-*))
 (1790 1790 (:TYPE-PRESCRIPTION BOOLEANP))
 (1744 1180 (:REWRITE POWERLISTS::SIMILAR-POWERLIST))
 (1316 1316 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (656 191 (:REWRITE DEFAULT-*-2))
 (630 90 (:REWRITE COMMUTATIVITY-OF-*))
 (591 294 (:REWRITE DEFAULT-+-2))
 (561 191 (:REWRITE DEFAULT-*-1))
 (531 421 (:REWRITE POWERLISTS::POWERLIST-NON-NUMERIC))
 (510 34 (:DEFINITION POWERLISTS::P-ZIP))
 (309 294 (:REWRITE DEFAULT-+-1))
 (285 285 (:TYPE-PRESCRIPTION POWERLISTS::P-DEPTH))
 (159 3 (:REWRITE POWERLISTS::ZIP-REGULAR))
 (96 24 (:REWRITE FOLD-CONSTS-IN-+))
 (48 3 (:DEFINITION POWERLISTS::P--))
 (45 3 (:DEFINITION POWERLISTS::P-+))
 (43 40 (:REWRITE POWERLISTS::UNTIE-R-SIMILAR))
 (43 40 (:REWRITE POWERLISTS::UNTIE-L-SIMILAR))
 (12 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:TYPE-PRESCRIPTION POWERLISTS::EVAL-POLY-AT-POINT))
 (7 4 (:REWRITE POWERLISTS::EVAL-POLY-LEMMA))
 )
