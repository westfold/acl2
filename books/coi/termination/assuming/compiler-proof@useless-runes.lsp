(FOO-DONE)
(FOO-TAIL)
(FOO-BASE-STEP)
(FOO-STK-STEP)
(FOO-STEP)
(FOO-STEP-TAIL)
(FOO-CONT)
(FOO-STKBASE_BODY_1)
(FOO-STKTEST_BODY_1)
(FOO-STKTEST_BODY_1_TYPE)
(FOO-STKSTEP_BODY_1)
(FOO-STKBASE_BODY)
(FOO-STKTEST_BODY)
(FOO-STKSTEP_BODY)
(|FOO-STK_1_MINTERM-pun-stn|)
(|FOO-STK_1_MINTERM-pun-fch-prop|)
(FOO-STK_1_MINTERM_TERM
 (3 3 (:TYPE-PRESCRIPTION |FOO-STK_1_MINTERM-pun-stn|))
 )
(FOO-STK_1_MINTERM_TERM_TYPE)
(|FOO-STK_1_MINTERM-xtesq|)
(|FOO-STK_1_MINTERM-xbasq|)
(|FOO-STK_1_MINTERM-xsteq|)
(|FOO-STK_1_MINTERM-xun-stn|)
(|FOO-STK_1_MINTERM-xun-fch-fn|)
(|FOO-STK_1_MINTERM-xun-fn|
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(|FOO-STK_1_MINTERM-xun|
 (1 1 (:TYPE-PRESCRIPTION |FOO-STK_1_MINTERM-xun-stn|))
 )
(|FOO-STK_1_MINTERM_pun|)
(FOO-STK_1_MINTERM)
(|FOO-STK_1_MINTERM_FOO-STK_1_MINTERM_pun_reduction|
 (102 96 (:REWRITE DEFAULT-CAR))
 (101 38 (:REWRITE ZP-OPEN))
 (69 69 (:REWRITE DEFAULT-CDR))
 (69 69 (:REWRITE DEFAULT-+-2))
 (69 69 (:REWRITE DEFAULT-+-1))
 (66 22 (:REWRITE FOLD-CONSTS-IN-+))
 (47 45 (:REWRITE DEFAULT-<-1))
 (45 45 (:REWRITE DEFAULT-<-2))
 (35 35 (:REWRITE CAR-CONS))
 (28 28 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(|FOO-STK_1_MINTERM_pun_def|)
(FOO-STK_1_MINTERM_PROP
 (14 2 (:DEFINITION |FOO-STK_1_MINTERM-pun-stn|))
 (8 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE |FOO-STK_1_MINTERM-pun-fch-prop|))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:DEFINITION NOT))
 )
(OPEN-FOO-STK_1_MINTERM)
(NATP_FOO-STK_1_MINTERM)
(FOO-STK_1_MINTERM_TERM_PROP)
(FOO-STK_1_MEASURE)
(FOO-STK_1_TERMINATES)
(FOO-STK_1_TERMINATES_TYPE)
(OPEN_FOO-STK_1_MEASURE
 (16 16 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-CDR))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(OPEN_FOO-STK_1_TERMINATES)
(FOO-STK_MEASURE)
(FOO-STK_TERMINATES)
(FOO-STK_TERMINATES_TYPE)
(OPEN_FOO-STK_MEASURE
 (38 6 (:REWRITE OPEN_FOO-STK_1_TERMINATES))
 (25 25 (:REWRITE DEFAULT-CAR))
 (14 14 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(OPEN_FOO-STK_MEASURE!)
(OPEN_FOO-STK_TERMINATES
 (43 43 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 )
(OPEN_FOO-STK_TERMINATES_ARG
 (43 43 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 )
(OPEN_FOO-STK_TERMINATES_STK
 (43 43 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 )
(OPEN_FOO-STK_TERMINATES!
 (43 43 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 )
(FOO-STK
 (123 123 (:REWRITE DEFAULT-CAR))
 (65 65 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (6 3 (:REWRITE DEFAULT-<-2))
 (6 3 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(OPEN_FOO-STK_REC_TERM
 (97 97 (:REWRITE DEFAULT-CAR))
 (58 58 (:REWRITE DEFAULT-CDR))
 )
(FOO-STK_MEASURE-DEFINITION
 (168 168 (:REWRITE DEFAULT-CAR))
 (91 91 (:REWRITE DEFAULT-CDR))
 (22 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 )
(NATP-FOO-STK_MEASURE)
(FOO-STK_TERMINATES-DEFINITION
 (26 26 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE DEFAULT-CDR))
 )
(FOO-STK
 (42 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(FOO-STK_INDUCTION
 (42 26 (:REWRITE DEFAULT-+-2))
 (26 26 (:REWRITE DEFAULT-+-1))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(FOO-STK_TERMINATES_FROM_FOO-STK_TERMINATES
 (83 83 (:REWRITE DEFAULT-CDR))
 (82 42 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-+-1))
 (39 39 (:REWRITE DEFAULT-CAR))
 (29 29 (:REWRITE NOT-CONSP-IMPLICATION))
 (24 12 (:REWRITE DEFAULT-<-1))
 (19 12 (:REWRITE DEFAULT-<-2))
 )
(FOO-STK_TERMINATES_LIST_EQUAL
 (3 3 (:REWRITE FOO-STK_TERMINATES-DEFINITION))
 (1 1 (:REWRITE OPEN-LIST-EQUAL))
 )
(NOT_FOO-STK_TERMINATES_LIST_EQUAL)
(LIST-EQUAL-IMPLIES-IFF-FOO-STK_TERMINATES-2
 (3 3 (:REWRITE FOO-STK_TERMINATES-DEFINITION))
 (1 1 (:REWRITE OPEN-LIST-EQUAL))
 (1 1 (:REWRITE FOO-STK_TERMINATES_FROM_FOO-STK_TERMINATES))
 )
(FOO-STK_TERMINATES_NIL
 (5 1 (:DEFINITION LEN))
 (3 3 (:REWRITE FOO-STK_TERMINATES-DEFINITION))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(LIST-EQUAL-IMPLIES-EQUAL-FOO-STK-2
 (335 37 (:REWRITE FOO-STK_TERMINATES_FROM_FOO-STK_TERMINATES))
 (254 26 (:DEFINITION HEAD-EQUAL))
 (78 78 (:REWRITE DEFAULT-CDR))
 (72 72 (:REWRITE DEFAULT-CAR))
 (50 50 (:REWRITE NOT-CONSP-IMPLICATION))
 )
(CAR-APPEND
 (70 35 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (35 35 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (35 35 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (35 35 (:TYPE-PRESCRIPTION APPEND-CONSP-TYPE-TWO))
 (21 9 (:REWRITE DEFAULT-CAR))
 (8 2 (:DEFINITION BINARY-APPEND))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(FOO-STK_TERMINATES_ON_FOO-STK
 (273 225 (:REWRITE DEFAULT-CDR))
 (254 113 (:REWRITE NOT-CONSP-IMPLICATION))
 (228 114 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (225 105 (:REWRITE DEFAULT-+-2))
 (176 149 (:REWRITE DEFAULT-CAR))
 (127 105 (:REWRITE DEFAULT-+-1))
 (114 114 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(FOO-STK_TERMIANTES_REDUCTION)
(FOO-STK_MEASURE_BOUND
 (15 15 (:REWRITE FOO-STK_TERMINATES-DEFINITION))
 (14 1 (:REWRITE FOO-STK_TERMIANTES_REDUCTION))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE FOO-STK_TERMINATES_FROM_FOO-STK_TERMINATES))
 (5 1 (:DEFINITION FOO-STK))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(FOO-STK_MEASURE_ON_FOO-STK
 (366 195 (:REWRITE DEFAULT-+-2))
 (212 195 (:REWRITE DEFAULT-+-1))
 (163 127 (:REWRITE DEFAULT-CDR))
 (126 63 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (95 59 (:REWRITE DEFAULT-CAR))
 (63 63 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (59 59 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (26 26 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(FOO-STK_MEASURE_REDUCTION
 (117 6 (:DEFINITION FOO-STK_MEASURE-DEFINITION))
 (47 24 (:REWRITE DEFAULT-+-2))
 (25 5 (:DEFINITION FOO-STK))
 (24 24 (:REWRITE DEFAULT-+-1))
 (23 23 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (20 4 (:DEFINITION HEAD-EQUAL))
 (12 12 (:REWRITE FOO-STK_TERMINATES-DEFINITION))
 (9 9 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE NOT-CONSP-IMPLICATION))
 )
(FOO-STK_ON_FOO-STK
 (182 91 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (153 99 (:REWRITE DEFAULT-CDR))
 (117 55 (:REWRITE DEFAULT-+-2))
 (115 61 (:REWRITE DEFAULT-CAR))
 (91 91 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (64 55 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(FOO-STK_REDUCTION
 (31 4 (:DEFINITION FOO-STK))
 (10 2 (:DEFINITION HEAD-EQUAL))
 (9 9 (:REWRITE FOO-STK_TERMINATES-DEFINITION))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE NOT-CONSP-IMPLICATION))
 )
(FOO)
(FOO_TERMINATES)
(FOO_MEASURE)
(FOO_SPEC
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE CDR-CONS))
 (1 1 (:REWRITE CAR-CONS))
 )
(FOO_MEASURE_SPEC
 (50 10 (:DEFINITION FOO-STK))
 (35 23 (:REWRITE DEFAULT-+-2))
 (23 23 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(FOO_MEASURE-BOUND)
(FOO_TERMINATES_SPEC
 (18 15 (:REWRITE FOO-STK_TERMINATES_FROM_FOO-STK_TERMINATES))
 (15 3 (:DEFINITION FOO-STK))
 (2 2 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:TYPE-PRESCRIPTION HEAD-EQUAL))
 )
(TRUE)
(FOO_TRUE)
(REV)
(VSTK-POP)
(VSTK-PUSH)
(SPEC-ARGS)
(GOO-SPEC)
(GOO-COMP-STEP)
(GOO-BASE-STEP)
(GOO-DONE)
(GOO-STK-1BASE_BODY_1)
(GOO-STK-1TEST_BODY_1)
(GOO-STK-1TEST_BODY_1_TYPE)
(GOO-STK-1STEP_BODY_1)
(GOO-STK-1BASE_BODY)
(GOO-STK-1TEST_BODY)
(GOO-STK-1STEP_BODY)
(|GOO-STK-1_1_MINTERM-pun-stn|)
(|GOO-STK-1_1_MINTERM-pun-fch-prop|)
(GOO-STK-1_1_MINTERM_TERM
 (3 3 (:TYPE-PRESCRIPTION |GOO-STK-1_1_MINTERM-pun-stn|))
 )
(GOO-STK-1_1_MINTERM_TERM_TYPE)
(|GOO-STK-1_1_MINTERM-xtesq|)
(|GOO-STK-1_1_MINTERM-xbasq|)
(|GOO-STK-1_1_MINTERM-xsteq|)
(|GOO-STK-1_1_MINTERM-xun-stn|)
(|GOO-STK-1_1_MINTERM-xun-fch-fn|)
(|GOO-STK-1_1_MINTERM-xun-fn|
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(|GOO-STK-1_1_MINTERM-xun|
 (1 1 (:TYPE-PRESCRIPTION |GOO-STK-1_1_MINTERM-xun-stn|))
 )
(|GOO-STK-1_1_MINTERM_pun|)
(GOO-STK-1_1_MINTERM)
(|GOO-STK-1_1_MINTERM_GOO-STK-1_1_MINTERM_pun_reduction|
 (102 96 (:REWRITE DEFAULT-CAR))
 (101 38 (:REWRITE ZP-OPEN))
 (69 69 (:REWRITE DEFAULT-CDR))
 (69 69 (:REWRITE DEFAULT-+-2))
 (69 69 (:REWRITE DEFAULT-+-1))
 (66 22 (:REWRITE FOLD-CONSTS-IN-+))
 (47 45 (:REWRITE DEFAULT-<-1))
 (45 45 (:REWRITE DEFAULT-<-2))
 (35 35 (:REWRITE CAR-CONS))
 (28 28 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(|GOO-STK-1_1_MINTERM_pun_def|)
(GOO-STK-1_1_MINTERM_PROP
 (14 2 (:DEFINITION |GOO-STK-1_1_MINTERM-pun-stn|))
 (8 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE |GOO-STK-1_1_MINTERM-pun-fch-prop|))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:DEFINITION NOT))
 )
(OPEN-GOO-STK-1_1_MINTERM)
(NATP_GOO-STK-1_1_MINTERM)
(GOO-STK-1_1_MINTERM_TERM_PROP)
(GOO-STK-1_1_MEASURE)
(GOO-STK-1_1_TERMINATES)
(GOO-STK-1_1_TERMINATES_TYPE)
(OPEN_GOO-STK-1_1_MEASURE
 (117 117 (:REWRITE DEFAULT-CDR))
 (83 83 (:REWRITE DEFAULT-CAR))
 (12 4 (:DEFINITION REVAPPEND))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(OPEN_GOO-STK-1_1_TERMINATES)
(GOO-STK-1_MEASURE)
(GOO-STK-1_TERMINATES)
(GOO-STK-1_TERMINATES_TYPE)
(OPEN_GOO-STK-1_MEASURE
 (172 171 (:REWRITE DEFAULT-CDR))
 (127 123 (:REWRITE DEFAULT-CAR))
 (70 6 (:REWRITE OPEN_GOO-STK-1_1_TERMINATES))
 (18 6 (:DEFINITION REVAPPEND))
 (4 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(OPEN_GOO-STK-1_MEASURE!)
(OPEN_GOO-STK-1_TERMINATES
 (460 456 (:REWRITE DEFAULT-CDR))
 (360 344 (:REWRITE DEFAULT-CAR))
 (45 15 (:DEFINITION REVAPPEND))
 )
(OPEN_GOO-STK-1_TERMINATES_LIST
 (460 456 (:REWRITE DEFAULT-CDR))
 (360 344 (:REWRITE DEFAULT-CAR))
 (45 15 (:DEFINITION REVAPPEND))
 )
(OPEN_GOO-STK-1_TERMINATES_STK
 (460 456 (:REWRITE DEFAULT-CDR))
 (360 344 (:REWRITE DEFAULT-CAR))
 (45 15 (:DEFINITION REVAPPEND))
 )
(OPEN_GOO-STK-1_TERMINATES!
 (460 456 (:REWRITE DEFAULT-CDR))
 (360 344 (:REWRITE DEFAULT-CAR))
 (45 15 (:DEFINITION REVAPPEND))
 )
(GOO-STK-1
 (788 785 (:REWRITE DEFAULT-CDR))
 (562 550 (:REWRITE DEFAULT-CAR))
 (27 9 (:DEFINITION REVAPPEND))
 (18 9 (:REWRITE DEFAULT-+-2))
 (14 7 (:REWRITE DEFAULT-<-2))
 (14 7 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-+-1))
 )
(OPEN_GOO-STK-1_REC_TERM
 (2523 2509 (:REWRITE DEFAULT-CDR))
 (1719 1699 (:REWRITE DEFAULT-CAR))
 (450 78 (:DEFINITION REVAPPEND))
 )
(NATP-GOO-STK-1_MEASURE)
(GOO-STK-1_MEASURE_DEFINITION
 (1492 1488 (:REWRITE DEFAULT-CDR))
 (1053 1043 (:REWRITE DEFAULT-CAR))
 (60 20 (:DEFINITION REVAPPEND))
 (38 19 (:REWRITE DEFAULT-+-2))
 (19 19 (:REWRITE DEFAULT-+-1))
 )
(GOO-STK-1_TERMINATES_DEFINTION
 (477 475 (:REWRITE DEFAULT-CDR))
 (316 308 (:REWRITE DEFAULT-CAR))
 (24 8 (:DEFINITION REVAPPEND))
 )
(GOO-STK-1
 (3291 3291 (:REWRITE DEFAULT-CDR))
 (1816 1816 (:REWRITE DEFAULT-CAR))
 (1644 1644 (:REWRITE CDR-CONS))
 (702 702 (:REWRITE CAR-CONS))
 (279 49 (:DEFINITION REVAPPEND))
 (178 99 (:REWRITE DEFAULT-+-2))
 (99 99 (:REWRITE DEFAULT-+-1))
 (85 85 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (22 16 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-<-2))
 )
(GOO)
(GOO_TERMINATES)
(GOO_MEASURE)
(GOO-DONE-1)
(GOO-BASE-STEP-1)
(GOO-TAIL-1)
(GOO-STK-STEP-1)
(GOO-STEP-1)
(GOO-STEP-TAIL-1)
(GOO-CONT-1)
(GOO-CALL)
(GOO-1-IMP)
(GOO-IMP)
(GOO_TERMINATES-1)
(GOO_MEASURE-1)
(GOO-1)
(GOO_TRUE
 (7266 7266 (:REWRITE DEFAULT-CDR))
 (3983 3983 (:REWRITE CDR-CONS))
 (3879 3879 (:REWRITE DEFAULT-CAR))
 (1804 1804 (:REWRITE CAR-CONS))
 (638 110 (:DEFINITION REVAPPEND))
 (103 59 (:REWRITE DEFAULT-+-2))
 (59 59 (:REWRITE DEFAULT-+-1))
 (44 44 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GOO_DEFINITION
 (2411 2411 (:REWRITE DEFAULT-CDR))
 (1200 1200 (:REWRITE DEFAULT-CAR))
 )
(GOO_TERMINATES-CALL)
(GOO_TERMINATES_DEFINITION
 (37706 218 (:DEFINITION GOO-STK-1))
 (14610 14610 (:TYPE-PRESCRIPTION GOO-STEP-1))
 (8343 8343 (:TYPE-PRESCRIPTION GOO-STEP-TAIL-1))
 (6798 6798 (:TYPE-PRESCRIPTION GOO-STK-STEP-1))
 (1479 397 (:DEFINITION REVAPPEND))
 )
(GOO_MEASURE-CALL)
(GOO_MEASURE_DEFINITION
 (9892 8953 (:REWRITE DEFAULT-CDR))
 (4989 4452 (:REWRITE DEFAULT-CAR))
 (2466 36 (:DEFINITION GOO-STK-1))
 (1300 1300 (:TYPE-PRESCRIPTION GOO-STEP-1))
 (1133 1133 (:TYPE-PRESCRIPTION GOO-STEP-TAIL-1))
 (1030 1030 (:TYPE-PRESCRIPTION GOO-STK-STEP-1))
 (354 232 (:REWRITE DEFAULT-+-2))
 (324 88 (:DEFINITION REVAPPEND))
 (238 232 (:REWRITE DEFAULT-+-1))
 (128 128 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (36 36 (:REWRITE FOLD-CONSTS-IN-+))
 )
(GOO_MEASURE_NATP)
(GOO_MEASURE_BOUND)
(PRED)
