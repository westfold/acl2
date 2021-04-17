(GL::GOBJ-TO-PARAM-SPACE
 (276 8 (:DEFINITION ACL2-COUNT))
 (84 40 (:REWRITE DEFAULT-+-2))
 (56 56 (:TYPE-PRESCRIPTION ACL2-COUNT))
 (56 40 (:REWRITE DEFAULT-+-1))
 (40 4 (:DEFINITION LENGTH))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (28 4 (:DEFINITION LEN))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (8 8 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE GL::TAG-WHEN-ATOM))
 (4 4 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (4 4 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(GL::GOBJ-TO-PARAM-SPACE)
(GL::NTH-OPEN-CONST-IDX
 (15 5 (:REWRITE ZP-OPEN))
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (7 5 (:REWRITE DEFAULT-CDR))
 (7 5 (:REWRITE DEFAULT-CAR))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:REWRITE <-0-+-NEGATIVE-1))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (3 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(GL::BFR-EVAL-LIST-NIL)
(GL::BFR-EVAL-LIST-T)
(GL::FLAG-LEMMA-FOR-GOBJ-TO-PARAM-SPACE-CORRECT
 (646 646 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (560 280 (:REWRITE DEFAULT-CAR))
 (469 469 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (417 417 (:REWRITE GL::TAG-WHEN-ATOM))
 (375 207 (:REWRITE DEFAULT-CDR))
 (110 5 (:DEFINITION GL::BFR-LIST->S))
 (70 70 (:REWRITE GL::BFR-EVAL-BOOLEANP))
 (68 17 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (60 5 (:DEFINITION LOGCONS$INLINE))
 (34 17 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (25 5 (:DEFINITION GL::FIRST/REST/END))
 (20 5 (:REWRITE BFIX-BITP))
 (18 3 (:DEFINITION KWOTE-LST))
 (17 17 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (17 17 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (17 17 (:REWRITE ALISTP-WHEN-ATOM))
 (15 5 (:DEFINITION BITP))
 (11 11 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (10 10 (:REWRITE GL::BFR-LIST->S-WHEN-S-ENDP))
 (10 5 (:DEFINITION BFIX$INLINE))
 (9 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-IF-CALL))
 (9 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-CONS-CALL))
 (7 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-QUOTE))
 (7 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-LAMBDA))
 (5 5 (:REWRITE GL::SCDR-WHEN-S-ENDP))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (5 5 (:DEFINITION IFIX))
 (5 5 (:DEFINITION GL::BOOL->SIGN))
 (5 3 (:REWRITE HONS-ASSOC-EQUAL-WHEN-ATOM))
 (3 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-VARIABLE))
 (3 3 (:DEFINITION KWOTE))
 (2 1 (:REWRITE CONSP-OF-HONS-ASSOC-EQUAL))
 (1 1 (:REWRITE GL::BFR-LIST->S-TO-PARAM-SPACE-LIST-WITH-UNPARAM-ENV))
 (1 1 (:REWRITE GL::BFR-EVAL-TO-PARAM-SPACE-WITH-UNPARAM-ENV))
 )
(GL::GOBJ-TO-PARAM-SPACE-CORRECT)
(GL::GOBJ-LIST-TO-PARAM-SPACE-CORRECT)
(GL::FLAG-LEMMA-FOR-GOBJ-TO-PARAM-SPACE-CORRECT-WITH-UNPARAM-ENV
 (714 714 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (599 309 (:REWRITE DEFAULT-CAR))
 (571 571 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (519 519 (:REWRITE GL::TAG-WHEN-ATOM))
 (426 236 (:REWRITE DEFAULT-CDR))
 (110 5 (:DEFINITION GL::BFR-LIST->S))
 (108 54 (:REWRITE GL::P-TRUE-IMPLIES-BDD-MODE-OR-P-TRUE))
 (80 20 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (70 70 (:REWRITE GL::BFR-EVAL-BOOLEANP))
 (60 5 (:DEFINITION LOGCONS$INLINE))
 (40 20 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (25 5 (:DEFINITION GL::FIRST/REST/END))
 (20 20 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (20 20 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (20 20 (:REWRITE ALISTP-WHEN-ATOM))
 (20 5 (:REWRITE BFIX-BITP))
 (18 3 (:DEFINITION KWOTE-LST))
 (15 5 (:DEFINITION BITP))
 (11 11 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (10 10 (:REWRITE GL::BFR-LIST->S-WHEN-S-ENDP))
 (10 5 (:DEFINITION BFIX$INLINE))
 (9 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-IF-CALL))
 (9 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-CONS-CALL))
 (7 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-QUOTE))
 (7 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-LAMBDA))
 (5 5 (:REWRITE GL::SCDR-WHEN-S-ENDP))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (5 5 (:DEFINITION IFIX))
 (5 5 (:DEFINITION GL::BOOL->SIGN))
 (5 3 (:REWRITE HONS-ASSOC-EQUAL-WHEN-ATOM))
 (3 3 (:REWRITE GL::GENERIC-GEVAL-EV-OF-VARIABLE))
 (3 3 (:DEFINITION KWOTE))
 (2 1 (:REWRITE CONSP-OF-HONS-ASSOC-EQUAL))
 )
(GL::GOBJ-TO-PARAM-SPACE-CORRECT-WITH-UNPARAM-ENV)
(GL::GOBJ-LIST-TO-PARAM-SPACE-CORRECT-WITH-UNPARAM-ENV)
(GL::EVAL-BFR-TO-PARAM-SPACE-SELF
 (170 2 (:REWRITE AIG-EVAL-APPEND-WHEN-NOT-INTERSECTING-ALIST-KEYS))
 (144 4 (:DEFINITION AIG-EXTRACT-ITERATED-ASSIGNS-ALIST))
 (142 8 (:DEFINITION BINARY-APPEND))
 (128 128 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (124 2 (:DEFINITION AIG-VARS))
 (116 4 (:REWRITE MAKE-FAL-ALIST-EQUIV-APPEND))
 (90 2 (:REWRITE SET::UNION-UNDER-SET-EQUIV))
 (78 17 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (72 18 (:REWRITE AIG-ATOM-P-WHEN-AIG-VAR-P))
 (56 6 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (45 15 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (45 9 (:REWRITE AIG-VAR-P-WHEN-AIG-ATOM-P))
 (44 40 (:REWRITE DEFAULT-CDR))
 (43 43 (:TYPE-PRESCRIPTION AIG-EXTRACT-ITERATED-ASSIGNS-ALIST))
 (36 36 (:TYPE-PRESCRIPTION TRUE-LISTP-AIG-VARS))
 (35 35 (:TYPE-PRESCRIPTION BOOLEANP))
 (35 1 (:DEFINITION TO-PARAM-SPACE))
 (30 2 (:REWRITE INTERSECTP-EQUAL-COMMUTE))
 (30 1 (:DEFINITION PARAM-ENV))
 (28 6 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (27 27 (:TYPE-PRESCRIPTION AIG-VAR-P$INLINE))
 (20 20 (:TYPE-PRESCRIPTION AIG-EXTRACT-ASSIGNS-ALIST))
 (20 4 (:REWRITE SET::SFIX-SET-IDENTITY))
 (18 18 (:TYPE-PRESCRIPTION AIG-ATOM-P$INLINE))
 (17 1 (:REWRITE EVAL-BDD-WHEN-NON-CONSP-VALUES))
 (16 4 (:DEFINITION HONS-EQUAL))
 (15 5 (:REWRITE TO-PARAM-SPACE-SELF))
 (12 12 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (12 12 (:TYPE-PRESCRIPTION ALISTP))
 (12 6 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (12 4 (:REWRITE SET::SFIX-WHEN-EMPTY))
 (12 2 (:REWRITE INTERSECTP-EQUAL-NON-CONS-1))
 (12 2 (:REWRITE INTERSECTP-EQUAL-NON-CONS))
 (12 2 (:REWRITE ALIST-KEYS-WHEN-ATOM))
 (10 10 (:TYPE-PRESCRIPTION UBDDP))
 (10 6 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (10 6 (:REWRITE ALISTP-WHEN-ATOM))
 (10 1 (:DEFINITION QCONS$INLINE))
 (8 8 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (8 4 (:DEFINITION FLUSH-HONS-GET-HASH-TABLE-LINK))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-ALIST-KEYS))
 (6 6 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (6 3 (:REWRITE GL::BFR-EVAL-BOOLEANP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:TYPE-PRESCRIPTION INTERSECTP-EQUAL))
 (4 4 (:REWRITE SETP-AIG-VARS))
 (4 4 (:DEFINITION FAST-ALIST-FREE))
 (3 3 (:DEFINITION HONS))
 (3 1 (:REWRITE QS-SUBSET-WHEN-BOOLEANS))
 (3 1 (:REWRITE EVAL-BDD-WHEN-NOT-CONSP))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 1))
 (2 2 (:REWRITE SET::INSERT-UNDER-SET-EQUIV))
 (2 2 (:REWRITE EVAL-BDD-WHEN-QS-SUBSET . 4))
 (2 2 (:REWRITE EVAL-BDD-WHEN-QS-SUBSET . 3))
 (1 1 (:TYPE-PRESCRIPTION AIG-ENV-LOOKUP))
 (1 1 (:REWRITE TRANSITIVITY-OF-QS-SUBSET . 2))
 (1 1 (:REWRITE TRANSITIVITY-OF-QS-SUBSET . 1))
 (1 1 (:REWRITE EVAL-BDD-WHEN-QS-SUBSET . 1))
 (1 1 (:REWRITE EVAL-BDD-OF-NON-CONSP-CHEAP))
 )
(GL::GOBJ-ALIST-TO-PARAM-SPACE)
(GL::ALISTP-GOBJ-ALIST-TO-PARAM-SPACE
 (87 3 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (68 10 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (54 18 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (48 48 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (38 10 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (38 10 (:REWRITE ALISTP-WHEN-ATOM))
 (36 36 (:TYPE-PRESCRIPTION BOOLEANP))
 (32 4 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (20 20 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (18 18 (:REWRITE GL::TAG-WHEN-ATOM))
 (18 18 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-CDR))
 (8 4 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 )
(GL::PARAMETRIZE-BVAR-DB-AUX
 (39 31 (:REWRITE DEFAULT-<-1))
 (38 31 (:REWRITE DEFAULT-<-2))
 (28 24 (:REWRITE DEFAULT-+-2))
 (28 24 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (7 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (4 4 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (3 3 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (2 2 (:REWRITE NATP-RW))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 1 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 )
(GL::PARAMETRIZE-TERM-EQUIVS
 (4 1 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (2 2 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (1 1 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE ALISTP-WHEN-ATOM))
 )
(GL::PARAMETRIZE-BVAR-DB)
(GL::ALISTP-WHEN-TERM-EQUIVSP
 (196 7 (:DEFINITION GL::BVAR-LISTP$A-DEF))
 (66 66 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (44 9 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (41 41 (:REWRITE DEFAULT-CAR))
 (35 21 (:REWRITE DEFAULT-<-2))
 (28 28 (:TYPE-PRESCRIPTION GL::TYPE-OF-NEXT-BVAR$A))
 (28 28 (:TYPE-PRESCRIPTION GL::TYPE-OF-BASE-BVAR$A))
 (28 10 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (28 7 (:REWRITE NATP-WHEN-GTE-0))
 (25 24 (:REWRITE DEFAULT-CDR))
 (21 21 (:REWRITE DEFAULT-<-1))
 (21 21 (:META CANCEL_PLUS-LESSP-CORRECT))
 (18 18 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (18 2 (:REWRITE ALISTP-OF-CDR))
 (17 9 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (17 9 (:REWRITE ALISTP-WHEN-ATOM))
 (16 8 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (7 7 (:REWRITE NATP-WHEN-INTEGERP))
 (7 7 (:REWRITE NATP-RW))
 (7 7 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 )
(GL::GET-BVAR->TERM-OF-PARAMETRIZE-BVAR-DB-AUX
 (1025 25 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (482 161 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (479 94 (:REWRITE NFIX-WHEN-NOT-NATP))
 (375 150 (:REWRITE NATP-WHEN-GTE-0))
 (320 320 (:TYPE-PRESCRIPTION BOOLEANP))
 (300 300 (:TYPE-PRESCRIPTION NATP))
 (236 140 (:REWRITE DEFAULT-<-2))
 (233 11 (:REWRITE ZP-WHEN-GT-0))
 (230 97 (:REWRITE DEFAULT-+-2))
 (187 42 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (180 140 (:REWRITE DEFAULT-<-1))
 (161 161 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (161 161 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (150 150 (:REWRITE GL::TAG-WHEN-ATOM))
 (150 150 (:REWRITE NATP-WHEN-INTEGERP))
 (150 150 (:REWRITE NATP-RW))
 (140 97 (:REWRITE DEFAULT-+-1))
 (89 44 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (76 8 (:REWRITE <-0-+-NEGATIVE-1))
 (70 35 (:REWRITE DEFAULT-UNARY-MINUS))
 (50 50 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (44 44 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (41 1 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (33 33 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (30 30 (:TYPE-PRESCRIPTION GL::BVAR-DB-EXTENSION-P))
 (25 25 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-CAR))
 (20 10 (:REWRITE GL::BVAR-DB-EXTENSION-P-TRANSITIVE))
 (13 13 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (9 9 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (9 9 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (5 1 (:REWRITE GL::BVAR-DB-EXTENSION-P-OF-ADD-TERM-BVAR))
 (2 2 (:TYPE-PRESCRIPTION GL::TYPE-OF-GET-TERM->BVAR$A))
 (1 1 (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (1 1 (:REWRITE GL::BVAR-DB-TERM->BVAR-EXTENSION-P-NECC))
 (1 1 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-TERM->BVAR))
 )
(GL::BASE-BVAR-OF-PARAMETRIZE-BVAR-DB-AUX
 (287 7 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (149 7 (:REWRITE ZP-WHEN-GT-0))
 (132 45 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (124 36 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (99 15 (:REWRITE NFIX-WHEN-NATP))
 (93 93 (:TYPE-PRESCRIPTION GL::BVAR-DB-EXTENSION-P))
 (84 84 (:TYPE-PRESCRIPTION BOOLEANP))
 (69 15 (:REWRITE NFIX-WHEN-NOT-NATP))
 (62 31 (:REWRITE GL::BVAR-DB-EXTENSION-P-TRANSITIVE))
 (50 20 (:REWRITE NATP-WHEN-GTE-0))
 (49 13 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (45 45 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (45 45 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (42 42 (:REWRITE GL::TAG-WHEN-ATOM))
 (42 24 (:REWRITE DEFAULT-<-2))
 (40 40 (:TYPE-PRESCRIPTION NATP))
 (40 19 (:REWRITE DEFAULT-+-2))
 (38 38 (:META CANCEL_PLUS-LESSP-CORRECT))
 (38 4 (:REWRITE <-0-+-NEGATIVE-1))
 (34 24 (:REWRITE DEFAULT-<-1))
 (24 19 (:REWRITE DEFAULT-+-1))
 (24 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (20 20 (:REWRITE NATP-WHEN-INTEGERP))
 (20 20 (:REWRITE NATP-RW))
 (18 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (13 13 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (13 13 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (12 6 (:REWRITE FOLD-CONSTS-IN-+))
 (12 2 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (10 10 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (7 7 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 )
(GL::NEXT-BVAR-OF-PARAMETRIZE-BVAR-DB-AUX
 (328 8 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (323 32 (:REWRITE NFIX-WHEN-NOT-NATP))
 (306 42 (:REWRITE NATP-WHEN-INTEGERP))
 (191 9 (:REWRITE ZP-WHEN-GT-0))
 (185 42 (:REWRITE NATP-WHEN-GTE-0))
 (152 52 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (104 12 (:REWRITE <-+-NEGATIVE-0-2))
 (97 55 (:REWRITE DEFAULT-<-2))
 (96 96 (:TYPE-PRESCRIPTION BOOLEANP))
 (91 41 (:REWRITE DEFAULT-+-2))
 (89 55 (:REWRITE DEFAULT-<-1))
 (85 85 (:META CANCEL_PLUS-LESSP-CORRECT))
 (76 76 (:TYPE-PRESCRIPTION NATP))
 (59 41 (:REWRITE DEFAULT-+-1))
 (59 15 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (53 53 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (48 48 (:REWRITE GL::TAG-WHEN-ATOM))
 (38 4 (:REWRITE <-0-+-NEGATIVE-1))
 (36 36 (:TYPE-PRESCRIPTION GL::BVAR-DB-EXTENSION-P))
 (34 34 (:REWRITE NATP-RW))
 (32 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (26 17 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (24 12 (:REWRITE GL::BVAR-DB-EXTENSION-P-TRANSITIVE))
 (20 20 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (20 14 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (15 15 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (14 14 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (8 8 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (5 1 (:REWRITE GL::BVAR-DB-EXTENSION-P-OF-ADD-TERM-BVAR))
 (4 4 (:REWRITE EQUAL-CONSTANT-+))
 (2 2 (:TYPE-PRESCRIPTION GL::TYPE-OF-GET-TERM->BVAR$A))
 (1 1 (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (1 1 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (1 1 (:REWRITE GL::BVAR-DB-TERM->BVAR-EXTENSION-P-NECC))
 (1 1 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-TERM->BVAR))
 (1 1 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 )
(GL::BVAR-LISTP-WHEN-SAME-NEXT/BASE
 (32 20 (:REWRITE DEFAULT-<-2))
 (24 6 (:REWRITE NATP-WHEN-GTE-0))
 (21 21 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (20 20 (:REWRITE DEFAULT-<-1))
 (20 20 (:META CANCEL_PLUS-LESSP-CORRECT))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (7 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (6 6 (:REWRITE NATP-WHEN-INTEGERP))
 (6 6 (:REWRITE NATP-RW))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (4 4 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (4 4 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 )
(GL::TERM-EQUIVSP-WHEN-SAME-NEXT/BASE
 (174 6 (:DEFINITION GL::BVAR-LISTP$A-DEF))
 (69 8 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (34 22 (:REWRITE DEFAULT-CDR))
 (32 32 (:REWRITE DEFAULT-CAR))
 (30 30 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (30 18 (:REWRITE DEFAULT-<-2))
 (24 6 (:REWRITE NATP-WHEN-GTE-0))
 (21 5 (:REWRITE ALISTP-OF-CDR))
 (20 20 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (20 5 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (18 18 (:TYPE-PRESCRIPTION ALISTP))
 (18 18 (:REWRITE DEFAULT-<-1))
 (18 18 (:META CANCEL_PLUS-LESSP-CORRECT))
 (13 13 (:REWRITE GL::ALISTP-WHEN-TERM-EQUIVSP))
 (10 10 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (8 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (8 4 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (6 6 (:REWRITE NATP-WHEN-INTEGERP))
 (6 6 (:REWRITE NATP-RW))
 (5 5 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (5 5 (:REWRITE ALISTP-WHEN-ATOM))
 (4 4 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (4 4 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (4 4 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (4 4 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (4 4 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (4 4 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 )
(GL::TERM-EQUIVSP-OF-PARAMETRIZE-TERM-EQUIVS
 (398 13 (:DEFINITION GL::BVAR-LISTP$A-DEF))
 (317 29 (:REWRITE CONSP-OF-CAR-WHEN-ALISTP))
 (315 3 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (183 29 (:REWRITE GL::ALISTP-WHEN-TERM-EQUIVSP))
 (87 79 (:REWRITE DEFAULT-CAR))
 (74 74 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (70 26 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (69 50 (:REWRITE DEFAULT-CDR))
 (65 39 (:REWRITE DEFAULT-<-2))
 (58 13 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (55 13 (:REWRITE NATP-WHEN-GTE-0))
 (45 45 (:TYPE-PRESCRIPTION ALISTP))
 (41 41 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (39 39 (:REWRITE DEFAULT-<-1))
 (39 39 (:META CANCEL_PLUS-LESSP-CORRECT))
 (36 36 (:TYPE-PRESCRIPTION BOOLEANP))
 (27 12 (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
 (26 26 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (26 26 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (26 26 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (19 13 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (19 13 (:REWRITE ALISTP-WHEN-ATOM))
 (18 18 (:REWRITE GL::TAG-WHEN-ATOM))
 (16 3 (:REWRITE ALISTP-OF-CDR))
 (13 13 (:REWRITE NATP-WHEN-INTEGERP))
 (13 13 (:REWRITE NATP-RW))
 (12 12 (:TYPE-PRESCRIPTION ATOM-LISTP))
 (10 10 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (10 10 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (10 10 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 )
(GL::PARAMETRIZE-BVAR-DB
 (143 1 (:DEFINITION GL::PARAMETRIZE-BVAR-DB-AUX))
 (46 1 (:REWRITE ZP-WHEN-GT-0))
 (41 1 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (30 6 (:REWRITE NFIX-WHEN-NOT-NATP))
 (30 2 (:REWRITE <-0-+-NEGATIVE-1))
 (18 6 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (18 1 (:REWRITE ZP-WHEN-INTEGERP))
 (13 6 (:REWRITE DEFAULT-+-1))
 (12 12 (:TYPE-PRESCRIPTION BOOLEANP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (8 1 (:REWRITE NATP-WHEN-INTEGERP))
 (6 6 (:REWRITE GL::TAG-WHEN-ATOM))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 1 (:DEFINITION LNFIX$INLINE))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 (3 3 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (3 1 (:REWRITE <-+-NEGATIVE-0-1))
 (3 1 (:DEFINITION GL::GET-BVAR->TERM))
 (2 2 (:REWRITE GL::TERM-EQUIVSP-WHEN-SAME-NEXT/BASE))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (2 2 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (2 2 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (1 1 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (1 1 (:DEFINITION GL::ADD-TERM-BVAR))
 )
(GL::NORMALIZE-PARAMETRIZE-BVAR-DB
 (286 2 (:DEFINITION GL::PARAMETRIZE-BVAR-DB-AUX))
 (92 2 (:REWRITE ZP-WHEN-GT-0))
 (82 2 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (60 4 (:REWRITE <-0-+-NEGATIVE-1))
 (56 56 (:TYPE-PRESCRIPTION GL::TYPE-OF-BASE-BVAR$A))
 (48 48 (:TYPE-PRESCRIPTION GL::TYPE-OF-NEXT-BVAR$A))
 (36 12 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (36 8 (:LINEAR GL::NEXT-BVAR-GTE-BASE-BVAR$A))
 (36 2 (:REWRITE ZP-WHEN-INTEGERP))
 (24 24 (:TYPE-PRESCRIPTION BOOLEANP))
 (24 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (14 2 (:DEFINITION NOT))
 (12 12 (:REWRITE GL::TAG-WHEN-ATOM))
 (12 12 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (12 12 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (12 6 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (10 6 (:REWRITE DEFAULT-+-1))
 (10 2 (:REWRITE COMMUTATIVITY-OF-+))
 (10 2 (:DEFINITION LNFIX$INLINE))
 (8 8 (:META CANCEL_PLUS-LESSP-CORRECT))
 (8 4 (:REWRITE NFIX-WHEN-NOT-NATP))
 (8 4 (:REWRITE NFIX-WHEN-NATP))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (6 2 (:DEFINITION GL::GET-BVAR->TERM))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (4 4 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (4 4 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (4 4 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (2 2 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (2 2 (:DEFINITION GL::NEXT-BVAR))
 (2 2 (:DEFINITION GL::ADD-TERM-BVAR))
 )
(GL::BASE-BVAR-OF-PARAMETRIZE-BVAR-DB
 (143 1 (:DEFINITION GL::PARAMETRIZE-BVAR-DB-AUX))
 (46 1 (:REWRITE ZP-WHEN-GT-0))
 (41 1 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (34 14 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (30 2 (:REWRITE <-0-+-NEGATIVE-1))
 (21 21 (:TYPE-PRESCRIPTION GL::BVAR-DB-EXTENSION-P))
 (18 6 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (18 1 (:REWRITE ZP-WHEN-INTEGERP))
 (14 7 (:REWRITE GL::BVAR-DB-EXTENSION-P-TRANSITIVE))
 (13 5 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (12 12 (:TYPE-PRESCRIPTION BOOLEANP))
 (12 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (7 1 (:DEFINITION NOT))
 (6 6 (:REWRITE GL::TAG-WHEN-ATOM))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (6 3 (:REWRITE NFIX-WHEN-NOT-NATP))
 (6 3 (:REWRITE DEFAULT-+-2))
 (5 5 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (5 5 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (5 3 (:REWRITE DEFAULT-+-1))
 (5 1 (:REWRITE COMMUTATIVITY-OF-+))
 (5 1 (:DEFINITION LNFIX$INLINE))
 (4 4 (:META CANCEL_PLUS-LESSP-CORRECT))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 (3 1 (:DEFINITION GL::GET-BVAR->TERM))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE GL::INIT-BVAR-DB$A-NORMALIZE))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (1 1 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (1 1 (:DEFINITION GL::NEXT-BVAR))
 (1 1 (:DEFINITION GL::ADD-TERM-BVAR))
 )
(GL::NEXT-BVAR-OF-PARAMETRIZE-BVAR-DB
 (143 1 (:DEFINITION GL::PARAMETRIZE-BVAR-DB-AUX))
 (46 1 (:REWRITE ZP-WHEN-GT-0))
 (41 1 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (30 2 (:REWRITE <-0-+-NEGATIVE-1))
 (28 5 (:REWRITE NFIX-WHEN-NOT-NATP))
 (18 6 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (18 1 (:REWRITE ZP-WHEN-INTEGERP))
 (13 6 (:REWRITE DEFAULT-+-1))
 (13 5 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (12 12 (:TYPE-PRESCRIPTION BOOLEANP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (8 1 (:REWRITE NATP-WHEN-INTEGERP))
 (7 1 (:DEFINITION NOT))
 (6 6 (:TYPE-PRESCRIPTION GL::BVAR-DB-EXTENSION-P))
 (6 6 (:REWRITE GL::TAG-WHEN-ATOM))
 (6 6 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (6 6 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 6 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (5 5 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (5 1 (:DEFINITION LNFIX$INLINE))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE GL::BVAR-DB-EXTENSION-P-TRANSITIVE))
 (3 3 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (3 1 (:REWRITE <-+-NEGATIVE-0-1))
 (3 1 (:DEFINITION GL::GET-BVAR->TERM))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (1 1 (:REWRITE GL::NEXT-BVAR-GTE-BASE-BVAR$A))
 (1 1 (:REWRITE GL::INIT-BVAR-DB$A-NORMALIZE))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (1 1 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (1 1 (:DEFINITION GL::NEXT-BVAR))
 (1 1 (:DEFINITION GL::ADD-TERM-BVAR))
 )
(GL::GET-BVAR->TERM-OF-PARAMETRIZE-BVAR-DB
 (123 3 (:DEFINITION GL::GOBJ-TO-PARAM-SPACE))
 (70 1 (:DEFINITION GL::PARAMETRIZE-BVAR-DB-AUX))
 (57 19 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (38 38 (:TYPE-PRESCRIPTION BOOLEANP))
 (37 14 (:REWRITE NFIX-WHEN-NOT-NATP))
 (19 19 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (19 19 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (18 18 (:REWRITE GL::TAG-WHEN-ATOM))
 (15 8 (:REWRITE DEFAULT-+-1))
 (15 6 (:REWRITE NATP-WHEN-GTE-0))
 (15 3 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (14 8 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION NATP))
 (11 7 (:REWRITE DEFAULT-<-2))
 (10 7 (:REWRITE DEFAULT-<-1))
 (8 4 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-GET-BVAR->TERM))
 (7 7 (:META CANCEL_PLUS-LESSP-CORRECT))
 (6 6 (:REWRITE NATP-WHEN-INTEGERP))
 (6 6 (:REWRITE NATP-RW))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE GL::BVAR-DB-EXTENSION-PRESERVES-BASE-BVAR))
 (5 2 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (5 1 (:DEFINITION LNFIX$INLINE))
 (4 4 (:REWRITE GL::BVAR-DB-BVAR->TERM-EXTENSION-P-NECC))
 (3 3 (:TYPE-PRESCRIPTION GL::BVAR-DB-EXTENSION-P))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 1 (:DEFINITION GL::GET-BVAR->TERM))
 (2 1 (:REWRITE GL::BVAR-DB-EXTENSION-P-TRANSITIVE))
 (1 1 (:REWRITE GL::INIT-BVAR-DB$A-NORMALIZE))
 (1 1 (:LINEAR GL::TERM-BVAR-LESS-THAN-NEXT-BVAR$A))
 (1 1 (:LINEAR GL::TERM-BVAR-GTE-BASE-BVAR$A))
 (1 1 (:LINEAR GL::BVAR-DB-EXTENSION-INCREASES))
 (1 1 (:DEFINITION GL::NEXT-BVAR))
 (1 1 (:DEFINITION GL::ADD-TERM-BVAR))
 )
