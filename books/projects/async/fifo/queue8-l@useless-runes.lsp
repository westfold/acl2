(ADE::QUEUE8-L$DATA-INS-LEN
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$INS-LEN)
(ADE::QUEUE8-L*
 (25 25 (:TYPE-PRESCRIPTION POSP))
 )
(ADE::QUEUE8-L*$DESTRUCTURE
 (180 18 (:DEFINITION BINARY-APPEND))
 (153 36 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (105 105 (:TYPE-PRESCRIPTION POSP))
 (28 28 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE DEFAULT-CAR))
 )
(ADE::NOT-PRIMP-QUEUE8-L)
(ADE::QUEUE8-L$NETLIST)
(ADE::QUEUE8-L&)
(ADE::CHECK-QUEUE8-L$NETLIST-64)
(ADE::QUEUE8-L$ST-FORMAT)
(ADE::QUEUE8-L$ST-FORMAT=>CONSTRAINT
 (2 2 (:REWRITE NTH-WHEN-PREFIXP))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$VALID-ST)
(ADE::QUEUE8-L$VALID-ST=>CONSTRAINT
 (2 2 (:REWRITE NTH-WHEN-PREFIXP))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$VALID-ST=>ST-FORMAT
 (4 4 (:REWRITE NTH-WHEN-PREFIXP))
 )
(ADE::QUEUE8-L$IN-ACT)
(ADE::QUEUE8-L$OUT-ACT)
(ADE::QUEUE8-L$DATA-IN
 (6 2 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (5 1 (:DEFINITION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION ADE::BVP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(ADE::LEN-QUEUE8-L$DATA-IN)
(ADE::QUEUE8-L$Q4-L0-INPUTS
 (30 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-JOINT-ACT))
 (15 15 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 (9 9 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-IN-))
 (6 6 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(ADE::QUEUE8-L$Q4-L1-INPUTS
 (30 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-JOINT-ACT))
 (15 15 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 (9 9 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-IN-))
 (6 6 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(ADE::QUEUE8-L$READY-IN-
 (5 5 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-IN-))
 )
(ADE::BOOLEANP-QUEUE8-L$READY-IN-
 (2 2 (:REWRITE NTH-WHEN-PREFIXP))
 )
(ADE::QUEUE8-L$READY-OUT
 (5 5 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 )
(ADE::BOOLEANP-QUEUE8-L$READY-OUT
 (2 2 (:REWRITE NTH-WHEN-PREFIXP))
 )
(ADE::QUEUE8-L$DATA-OUT)
(ADE::LEN-QUEUE8-L$DATA-OUT-1
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (3 3 (:REWRITE NTH-WHEN-PREFIXP))
 (2 2 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (1 1 (:REWRITE ADE::LEN-QUEUE4-L$DATA-OUT-2))
 )
(ADE::LEN-QUEUE8-L$DATA-OUT-2
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (3 3 (:REWRITE NTH-WHEN-PREFIXP))
 (2 2 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 )
(ADE::BVP-QUEUE8-L$DATA-OUT
 (4 4 (:REWRITE NTH-WHEN-PREFIXP))
 )
(ADE::QUEUE8-L$OUTPUTS
 (1 1 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-OUT))
 (1 1 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-IN-))
 )
(ADE::QUEUE8-L$VALUE
 (274 44 (:DEFINITION BINARY-APPEND))
 (185 185 (:TYPE-PRESCRIPTION POSP))
 (160 88 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (143 11 (:REWRITE LEN-OF-APPEND))
 (128 79 (:REWRITE DEFAULT-+-2))
 (112 14 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (109 3 (:REWRITE ADE::ASSOC-EQ-VALUE-OF-SI-PAIRLIS$-SIS))
 (92 4 (:REWRITE ADE::LEN-NTHCDR))
 (85 79 (:REWRITE DEFAULT-+-1))
 (80 23 (:REWRITE ADE::ASSOC-EQ-VALUES-ATOM))
 (75 4 (:REWRITE ADE::ASSOC-EQ-VALUES-ARGS-PAIRLIS$-ARGS))
 (73 9 (:REWRITE TAKE-WHEN-ATOM))
 (64 8 (:REWRITE ADE::NTHCDR-APPEND))
 (63 53 (:REWRITE DEFAULT-<-1))
 (60 12 (:REWRITE ADE::DISJOINT-SIS-SAME-SYM-2))
 (60 6 (:DEFINITION ATOM))
 (58 53 (:REWRITE DEFAULT-<-2))
 (55 10 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (54 12 (:REWRITE ADE::DISJOINT-SIS-SAME-SYM-1))
 (52 52 (:TYPE-PRESCRIPTION PAIRLIS$))
 (47 47 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (47 5 (:REWRITE ADE::PAIRLIS$-APPEND))
 (42 42 (:LINEAR LEN-WHEN-PREFIXP))
 (40 10 (:REWRITE CAR-OF-APPEND))
 (36 12 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (30 30 (:TYPE-PRESCRIPTION NATP))
 (30 6 (:REWRITE ADE::CONSP-ASSOC-EQ-VALUES))
 (21 21 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (21 7 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 3 (:REWRITE ADE::ALL-UNBOUND-IN-BODY-ATOM-NAMES))
 (18 2 (:REWRITE ADE::V-BUF$VALUE))
 (15 15 (:REWRITE NATP-RW))
 (12 12 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-IN-))
 (12 3 (:REWRITE ADE::SIS-SUBSET-SIS))
 (12 2 (:REWRITE ADE::LEN-ASSOC-EQ-VALUES))
 (10 10 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 (8 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (6 3 (:REWRITE CAR-OF-TAKE))
 (5 5 (:REWRITE ADE::LEN-QUEUE4-L$DATA-OUT-2))
 (4 4 (:TYPE-PRESCRIPTION NO-DUPLICATESP-EQUAL))
 (4 4 (:REWRITE ADE::NO-DUPLICATESP-SIS))
 (3 3 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:REWRITE ADE::SUBSETP-TRANSITIVITY))
 (3 3 (:REWRITE EQUAL-CONSTANT-+))
 (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
 (2 2 (:REWRITE ADE::SI-MEMBER-SIS))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE CONSP-OF-APPEND))
 )
(ADE::QUEUE8-L$STEP)
(ADE::QUEUE8-L$STEP-V-THREEFIX-OF-DATA-IN-CANCELED
 (289 12 (:REWRITE TAKE-OF-TOO-MANY))
 (196 36 (:DEFINITION LEN))
 (128 4 (:DEFINITION TAKE))
 (112 56 (:REWRITE DEFAULT-+-2))
 (65 53 (:REWRITE DEFAULT-CDR))
 (64 56 (:REWRITE DEFAULT-+-1))
 (64 32 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (55 12 (:REWRITE TAKE-WHEN-ATOM))
 (42 7 (:DEFINITION BINARY-APPEND))
 (32 32 (:LINEAR LEN-WHEN-PREFIXP))
 (32 16 (:REWRITE DEFAULT-<-2))
 (32 2 (:REWRITE ADE::LEN-NTHCDR))
 (31 2 (:REWRITE LEN-OF-APPEND))
 (24 12 (:REWRITE DEFAULT-CAR))
 (23 14 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (22 22 (:REWRITE NTH-WHEN-PREFIXP))
 (20 16 (:REWRITE DEFAULT-<-1))
 (16 16 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (12 12 (:TYPE-PRESCRIPTION NFIX))
 (12 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$DATA-OUT))
 (10 4 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (8 8 (:TYPE-PRESCRIPTION ADE::BVP))
 (8 2 (:REWRITE ADE::CAR-V-THREEFIX))
 (8 1 (:DEFINITION ADE::V-THREEFIX))
 (6 3 (:DEFINITION ADE::3V-FIX))
 (6 2 (:REWRITE ADE::V-THREEFIX-BVP))
 (6 2 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (5 2 (:REWRITE CONSP-OF-APPEND))
 (5 1 (:DEFINITION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (4 2 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (3 3 (:TYPE-PRESCRIPTION ADE::3VP))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (2 2 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (2 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (2 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 )
(ADE::QUEUE8-L$STATE
 (476 72 (:DEFINITION BINARY-APPEND))
 (433 223 (:REWRITE DEFAULT-+-2))
 (357 27 (:REWRITE ADE::DISJOINT-ATOM))
 (239 223 (:REWRITE DEFAULT-+-1))
 (170 27 (:REWRITE ADE::DISJOINT-SIS-SAME-SYM-2))
 (170 27 (:REWRITE ADE::DISJOINT-SIS-SAME-SYM-1))
 (165 11 (:DEFINITION ATOM))
 (160 13 (:REWRITE LEN-OF-APPEND))
 (154 44 (:REWRITE ADE::ASSOC-EQ-VALUES-ATOM))
 (100 100 (:TYPE-PRESCRIPTION PAIRLIS$))
 (72 24 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (64 1 (:DEFINITION SUBSETP-EQUAL))
 (52 13 (:REWRITE COMMUTATIVITY-OF-+))
 (46 23 (:REWRITE DEFAULT-<-2))
 (45 9 (:TYPE-PRESCRIPTION ADE::BOOLEANP-JOINT-ACT))
 (36 36 (:LINEAR LEN-WHEN-PREFIXP))
 (34 34 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 (34 20 (:REWRITE TAKE-WHEN-ATOM))
 (27 27 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-IN-))
 (23 23 (:REWRITE DEFAULT-<-1))
 (22 3 (:REWRITE ADE::CONSP-ASSOC-EQ-VALUES))
 (22 1 (:DEFINITION MEMBER-EQUAL))
 (18 18 (:TYPE-PRESCRIPTION ADE::UPDATE-ALIST))
 (18 18 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (15 1 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (12 4 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (11 1 (:REWRITE CAR-OF-APPEND))
 (10 10 (:TYPE-PRESCRIPTION ADE::ASSOC-EQ-VALUES))
 (9 9 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 8 (:TYPE-PRESCRIPTION ADE::BVP))
 (8 8 (:REWRITE ADE::LEN-QUEUE4-L$DATA-OUT-2))
 (8 2 (:DEFINITION TRUE-LISTP))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE ADE::SUBSETP-TRANSITIVITY))
 (2 2 (:REWRITE DEFAULT-SYMBOL-NAME))
 (2 1 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (1 1 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (1 1 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (1 1 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (1 1 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 (1 1 (:REWRITE CONSP-OF-APPEND))
 )
(ADE::QUEUE8-L$INPUT-FORMAT
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-OUT))
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-IN-))
 )
(ADE::QUEUE8-L$INPUT-FORMAT=>Q4-L0$INPUT-FORMAT
 (449 179 (:REWRITE DEFAULT-CDR))
 (384 114 (:REWRITE DEFAULT-CAR))
 (264 18 (:REWRITE ADE::LEN-NTHCDR))
 (231 39 (:DEFINITION LEN))
 (156 24 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (129 3 (:DEFINITION TAKE))
 (126 21 (:DEFINITION BINARY-APPEND))
 (116 77 (:REWRITE DEFAULT-+-2))
 (108 12 (:DEFINITION TRUE-LISTP))
 (88 14 (:DEFINITION NTHCDR))
 (78 10 (:REWRITE TAKE-WHEN-ATOM))
 (77 77 (:REWRITE DEFAULT-+-1))
 (65 65 (:REWRITE NTH-WHEN-PREFIXP))
 (57 39 (:REWRITE DEFAULT-<-1))
 (48 39 (:REWRITE DEFAULT-<-2))
 (48 24 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
 (43 11 (:REWRITE COMMUTATIVITY-OF-+))
 (42 42 (:LINEAR LEN-WHEN-PREFIXP))
 (36 12 (:REWRITE ADE::BVP-NTHCDR))
 (21 21 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (14 14 (:TYPE-PRESCRIPTION BOOLEANP))
 (9 1 (:REWRITE LEN-OF-APPEND))
 (6 1 (:REWRITE CONSP-OF-APPEND))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE CONSP-OF-TAKE))
 )
(ADE::QUEUE8-L$INPUT-FORMAT=>Q4-L1$INPUT-FORMAT
 (984 63 (:REWRITE ADE::LEN-NTHCDR))
 (867 147 (:DEFINITION LEN))
 (705 21 (:DEFINITION TAKE))
 (528 381 (:REWRITE DEFAULT-+-2))
 (528 78 (:REWRITE TAKE-WHEN-ATOM))
 (493 325 (:REWRITE DEFAULT-CDR))
 (450 75 (:DEFINITION BINARY-APPEND))
 (381 381 (:REWRITE DEFAULT-+-1))
 (357 150 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (312 48 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (288 120 (:REWRITE DEFAULT-CAR))
 (248 34 (:DEFINITION NTHCDR))
 (245 182 (:REWRITE DEFAULT-<-1))
 (242 182 (:REWRITE DEFAULT-<-2))
 (234 234 (:LINEAR LEN-WHEN-PREFIXP))
 (216 24 (:DEFINITION TRUE-LISTP))
 (178 178 (:REWRITE NTH-WHEN-PREFIXP))
 (174 48 (:REWRITE COMMUTATIVITY-OF-+))
 (144 18 (:REWRITE LEN-OF-APPEND))
 (117 117 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (108 18 (:REWRITE CONSP-OF-APPEND))
 (96 48 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
 (72 24 (:REWRITE ADE::BVP-NTHCDR))
 (54 54 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 18 (:REWRITE CONSP-OF-TAKE))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::BOOLEANP-QUEUE8-L$IN-ACT
 (8 1 (:DEFINITION NTHCDR))
 (4 1 (:REWRITE ADE::NFIX-OF-NAT))
 (4 1 (:REWRITE COMMUTATIVITY-OF-+))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-IN-))
 (1 1 (:REWRITE NTH-WHEN-PREFIXP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(ADE::BOOLEANP-QUEUE8-L$OUT-ACT
 (8 1 (:DEFINITION NTHCDR))
 (4 1 (:REWRITE ADE::NFIX-OF-NAT))
 (4 1 (:REWRITE COMMUTATIVITY-OF-+))
 (3 3 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-OUT))
 (1 1 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-IN-))
 (1 1 (:REWRITE NTH-WHEN-PREFIXP))
 (1 1 (:REWRITE NATP-RW))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 )
(ADE::QUEUE8-L$ST-FORMAT-PRESERVED
 (7 7 (:REWRITE NTH-WHEN-PREFIXP))
 )
(ADE::QUEUE8-L$VALUE-ALT
 (712 89 (:DEFINITION NTHCDR))
 (584 584 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-OUT))
 (419 367 (:REWRITE DEFAULT-+-2))
 (416 26 (:REWRITE ADE::LEN-NTHCDR))
 (390 60 (:DEFINITION BINARY-APPEND))
 (373 373 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-IN-))
 (367 367 (:REWRITE DEFAULT-+-1))
 (356 89 (:REWRITE COMMUTATIVITY-OF-+))
 (338 52 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (282 120 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (260 52 (:DEFINITION LEN))
 (234 26 (:DEFINITION TRUE-LISTP))
 (227 227 (:REWRITE DEFAULT-CDR))
 (104 52 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
 (92 92 (:LINEAR LEN-WHEN-PREFIXP))
 (78 26 (:REWRITE ADE::BVP-NTHCDR))
 (60 60 (:REWRITE DEFAULT-CAR))
 (60 12 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (52 26 (:REWRITE DEFAULT-<-1))
 (46 46 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (26 26 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (7 7 (:REWRITE ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 )
(ADE::QUEUE8-L$STATE-ALT
 (760 95 (:DEFINITION NTHCDR))
 (584 584 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-OUT))
 (437 385 (:REWRITE DEFAULT-+-2))
 (426 66 (:DEFINITION BINARY-APPEND))
 (416 26 (:REWRITE ADE::LEN-NTHCDR))
 (385 385 (:REWRITE DEFAULT-+-1))
 (380 95 (:REWRITE COMMUTATIVITY-OF-+))
 (373 373 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-IN-))
 (338 52 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (294 132 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (260 52 (:DEFINITION LEN))
 (239 239 (:REWRITE DEFAULT-CDR))
 (234 26 (:DEFINITION TRUE-LISTP))
 (104 52 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
 (92 92 (:LINEAR LEN-WHEN-PREFIXP))
 (78 26 (:REWRITE ADE::BVP-NTHCDR))
 (66 66 (:REWRITE DEFAULT-CAR))
 (60 12 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (52 26 (:REWRITE DEFAULT-<-1))
 (46 46 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (26 26 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (7 7 (:REWRITE ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 )
(ADE::QUEUE8-L$RUN
 (4 4 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(DEFOPENER-HINT
 (5 5 (:TYPE-PRESCRIPTION LAST))
 )
(DEFOPENER-TEMP)
(ADE::OPEN-QUEUE8-L$RUN-ZP)
(DEFOPENER-HINT
 (5 5 (:TYPE-PRESCRIPTION LAST))
 )
(DEFOPENER-TEMP)
(ADE::OPEN-QUEUE8-L$RUN)
(ADE::QUEUE8-L$RUN-PLUS
 (115 25 (:REWRITE ZP-OPEN))
 (57 57 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (42 14 (:REWRITE <-0-+-NEGATIVE-1))
 (38 15 (:REWRITE DEFAULT-CDR))
 (36 12 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (33 10 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 (20 18 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE DEFAULT-+-2))
 (16 8 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (2 2 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$INPUT-FORMAT-N
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(DEFOPENER-HINT
 (5 5 (:TYPE-PRESCRIPTION LAST))
 )
(DEFOPENER-TEMP)
(ADE::OPEN-QUEUE8-L$INPUT-FORMAT-N-ZP)
(DEFOPENER-HINT
 (5 5 (:TYPE-PRESCRIPTION LAST))
 )
(DEFOPENER-TEMP)
(ADE::OPEN-QUEUE8-L$INPUT-FORMAT-N)
(ADE::QUEUE8-L$INPUT-FORMAT-PLUS
 (63 27 (:REWRITE DEFAULT-CAR))
 (54 18 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (39 39 (:REWRITE DEFAULT-<-2))
 (39 39 (:REWRITE DEFAULT-<-1))
 (35 17 (:REWRITE DEFAULT-CDR))
 (26 24 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE DEFAULT-+-2))
 (18 18 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:REWRITE NATP-RW))
 (2 2 (:REWRITE ADE::QUEUE8-L$RUN-PLUS))
 )
(ADE::QUEUE8-L$DE-N
 (114 30 (:REWRITE ZP-OPEN))
 (36 36 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (36 12 (:REWRITE <-0-+-NEGATIVE-1))
 (36 2 (:DEFINITION ADE::QUEUE8-L$RUN))
 (24 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-+-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE ADE::QUEUE8-L$INPUT-FORMAT-PLUS))
 (2 2 (:REWRITE ADE::DE-PLUS))
 )
(ADE::QUEUE8-L$EXTRACT)
(ADE::QUEUE8-L$EXTRACT-NOT-EMPTY
 (21 3 (:DEFINITION LEN))
 (17 17 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$EXTRACT))
 (10 1 (:DEFINITION BINARY-APPEND))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (5 5 (:REWRITE NTH-WHEN-PREFIXP))
 (5 4 (:REWRITE DEFAULT-+-1))
 (5 2 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (4 4 (:REWRITE DEFAULT-CDR))
 (3 3 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(ADE::QUEUE8-L$EXTRACTED-STEP
 (12 12 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 )
(ADE::QUEUE4-L$READY-OUT-LEMMA
 (304 76 (:DEFINITION STRIP-CARS))
 (294 294 (:REWRITE NTH-WHEN-PREFIXP))
 (200 200 (:REWRITE DEFAULT-CAR))
 (163 163 (:REWRITE DEFAULT-CDR))
 (34 17 (:REWRITE DEFAULT-+-2))
 (17 17 (:REWRITE DEFAULT-+-1))
 (13 13 (:TYPE-PRESCRIPTION ADE::F-BUF))
 (4 4 (:TYPE-PRESCRIPTION BOOLEANP))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (3 1 (:REWRITE ADE::F-GATES=B-GATES))
 (3 1 (:REWRITE ADE::F-BUF-OF-NOT-BOOLEANP))
 (3 1 (:REWRITE ADE::F-BUF-OF-3VP))
 (2 2 (:TYPE-PRESCRIPTION ADE::3VP))
 (2 2 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 )
(ADE::QUEUE8-L$Q4-L0-DATA-IN-REWRITE
 (468 7 (:DEFINITION TAKE))
 (386 129 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (209 19 (:DEFINITION LEN))
 (173 16 (:REWRITE TAKE-WHEN-ATOM))
 (132 35 (:REWRITE DEFAULT-CDR))
 (118 6 (:REWRITE ADE::LEN-NTHCDR))
 (113 113 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (86 8 (:REWRITE DEFAULT-CAR))
 (57 38 (:REWRITE DEFAULT-+-2))
 (57 19 (:TYPE-PRESCRIPTION ADE::BOOLEANP-JOINT-ACT))
 (45 8 (:DEFINITION NTHCDR))
 (43 30 (:REWRITE DEFAULT-<-2))
 (42 30 (:REWRITE DEFAULT-<-1))
 (38 38 (:REWRITE DEFAULT-+-1))
 (38 38 (:LINEAR LEN-WHEN-PREFIXP))
 (25 21 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (24 24 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (24 1 (:DEFINITION BINARY-APPEND))
 (21 21 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (20 11 (:REWRITE ZP-OPEN))
 (19 19 (:TYPE-PRESCRIPTION ADE::JOINT-ACT))
 (19 19 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (19 19 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 (19 19 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-IN-))
 (19 19 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (17 7 (:REWRITE CONSP-OF-TAKE))
 (15 4 (:REWRITE COMMUTATIVITY-OF-+))
 (12 2 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (11 1 (:REWRITE CONSP-OF-APPEND))
 (10 1 (:REWRITE CAR-OF-TAKE))
 (9 1 (:REWRITE LEN-OF-APPEND))
 (6 1 (:REWRITE ADE::NTHCDR-APPEND))
 (5 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (3 3 (:REWRITE NTH-WHEN-PREFIXP))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$Q4-L1-DATA-IN-REWRITE
 (688 16 (:DEFINITION TAKE))
 (672 336 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (576 64 (:REWRITE TAKE-WHEN-ATOM))
 (520 340 (:REWRITE DEFAULT-+-2))
 (512 32 (:REWRITE ADE::LEN-NTHCDR))
 (416 320 (:REWRITE DEFAULT-CDR))
 (340 340 (:REWRITE DEFAULT-+-1))
 (336 336 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (320 32 (:DEFINITION ADE::V-THREEFIX))
 (272 152 (:REWRITE DEFAULT-CAR))
 (256 32 (:DEFINITION NTHCDR))
 (216 16 (:REWRITE LEN-OF-APPEND))
 (176 128 (:REWRITE DEFAULT-<-2))
 (176 48 (:REWRITE COMMUTATIVITY-OF-+))
 (176 44 (:DEFINITION STRIP-CARS))
 (168 16 (:REWRITE ADE::NTHCDR-APPEND))
 (160 160 (:LINEAR LEN-WHEN-PREFIXP))
 (160 128 (:REWRITE DEFAULT-<-1))
 (160 16 (:DEFINITION BINARY-APPEND))
 (145 145 (:REWRITE NTH-WHEN-PREFIXP))
 (96 32 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (96 16 (:REWRITE CONSP-OF-APPEND))
 (80 80 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (80 40 (:DEFINITION ADE::3V-FIX))
 (80 32 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (80 32 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (56 8 (:REWRITE ADE::CAR-V-THREEFIX))
 (40 40 (:TYPE-PRESCRIPTION ADE::3VP))
 (32 32 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (32 32 (:REWRITE LEN-OF-TAKE))
 (32 32 (:REWRITE DEFAULT-UNARY-MINUS))
 (32 32 (:REWRITE CONSP-OF-TAKE))
 (16 16 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 )
(ADE::QUEUE8-L$Q4-L1-IN-ACT-=-Q4-L0-OUT-ACT
 (348 12 (:REWRITE TAKE-OF-TOO-MANY))
 (258 6 (:DEFINITION TAKE))
 (192 96 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (138 18 (:DEFINITION LEN))
 (108 108 (:TYPE-PRESCRIPTION LEN))
 (96 96 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (96 6 (:REWRITE ADE::LEN-NTHCDR))
 (84 12 (:REWRITE TAKE-WHEN-ATOM))
 (80 44 (:REWRITE DEFAULT-CDR))
 (64 14 (:DEFINITION NTHCDR))
 (54 36 (:REWRITE DEFAULT-+-2))
 (48 12 (:REWRITE DEFAULT-CAR))
 (42 6 (:DEFINITION BINARY-APPEND))
 (36 36 (:REWRITE DEFAULT-+-1))
 (36 36 (:LINEAR LEN-WHEN-PREFIXP))
 (34 22 (:REWRITE DEFAULT-<-2))
 (30 12 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (30 12 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (29 29 (:REWRITE NTH-WHEN-PREFIXP))
 (29 22 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (18 18 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (15 15 (:TYPE-PRESCRIPTION ADE::QUEUE8-L$DATA-IN))
 (15 15 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$DATA-OUT))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (12 12 (:TYPE-PRESCRIPTION NFIX))
 (6 6 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (6 6 (:REWRITE CONSP-OF-TAKE))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE NATP-RW))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(ADE::QUEUE8-L$Q4-L0-IN-ACT-REWRITE
 (174 6 (:REWRITE TAKE-OF-TOO-MANY))
 (129 3 (:DEFINITION TAKE))
 (96 48 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (69 9 (:DEFINITION LEN))
 (54 54 (:TYPE-PRESCRIPTION LEN))
 (48 48 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (48 3 (:REWRITE ADE::LEN-NTHCDR))
 (42 6 (:REWRITE TAKE-WHEN-ATOM))
 (40 22 (:REWRITE DEFAULT-CDR))
 (32 7 (:DEFINITION NTHCDR))
 (27 18 (:REWRITE DEFAULT-+-2))
 (24 6 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE NTH-WHEN-PREFIXP))
 (21 3 (:DEFINITION BINARY-APPEND))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 18 (:LINEAR LEN-WHEN-PREFIXP))
 (18 12 (:REWRITE DEFAULT-<-2))
 (16 12 (:REWRITE DEFAULT-<-1))
 (15 15 (:TYPE-PRESCRIPTION ADE::QUEUE8-L$DATA-IN))
 (15 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (15 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (12 3 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (6 6 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (3 3 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (3 3 (:REWRITE CONSP-OF-TAKE))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$Q4-L1-OUT-ACT-REWRITE
 (174 6 (:REWRITE TAKE-OF-TOO-MANY))
 (129 3 (:DEFINITION TAKE))
 (96 48 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (69 9 (:DEFINITION LEN))
 (54 54 (:TYPE-PRESCRIPTION LEN))
 (48 48 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (48 3 (:REWRITE ADE::LEN-NTHCDR))
 (42 6 (:REWRITE TAKE-WHEN-ATOM))
 (40 22 (:REWRITE DEFAULT-CDR))
 (32 7 (:DEFINITION NTHCDR))
 (27 18 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE NTH-WHEN-PREFIXP))
 (24 6 (:REWRITE DEFAULT-CAR))
 (21 3 (:DEFINITION BINARY-APPEND))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 18 (:LINEAR LEN-WHEN-PREFIXP))
 (18 12 (:REWRITE DEFAULT-<-2))
 (16 12 (:REWRITE DEFAULT-<-1))
 (15 15 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$DATA-OUT))
 (15 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (15 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (12 3 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (6 6 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (3 3 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (3 3 (:REWRITE CONSP-OF-TAKE))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$EXTRACTED-STEP-CORRECT-AUX-1)
(ADE::QUEUE8-L$EXTRACTED-STEP-CORRECT-AUX-2
 (80 2 (:DEFINITION TAKE))
 (78 4 (:REWRITE TAKE-OF-TOO-MANY))
 (27 27 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$EXTRACT))
 (21 3 (:DEFINITION LEN))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (13 4 (:REWRITE TAKE-WHEN-ATOM))
 (11 5 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (8 5 (:REWRITE DEFAULT-+-2))
 (8 3 (:REWRITE ADE::NFIX-OF-NAT))
 (8 2 (:REWRITE DEFAULT-CAR))
 (7 4 (:REWRITE DEFAULT-<-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 4 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (3 1 (:LINEAR ADE::QUEUE4-L$EXTRACT-NOT-EMPTY))
 (3 1 (:DEFINITION NFIX))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE4-L$READY-OUT))
 (2 2 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$EXTRACTED-STEP-CORRECT
 (4791 81 (:DEFINITION TAKE))
 (3376 217 (:REWRITE ADE::LEN-NTHCDR))
 (2786 1540 (:REWRITE DEFAULT-+-2))
 (2067 318 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (1974 1672 (:REWRITE DEFAULT-CDR))
 (1840 279 (:DEFINITION BINARY-APPEND))
 (1804 567 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (1666 1540 (:REWRITE DEFAULT-+-1))
 (1593 159 (:DEFINITION TRUE-LISTP))
 (1372 685 (:REWRITE DEFAULT-<-1))
 (1277 1277 (:REWRITE NTH-WHEN-PREFIXP))
 (1242 108 (:REWRITE ZP-OPEN))
 (1162 1162 (:LINEAR LEN-WHEN-PREFIXP))
 (1060 685 (:REWRITE DEFAULT-<-2))
 (916 140 (:DEFINITION NTHCDR))
 (864 177 (:REWRITE TAKE-WHEN-ATOM))
 (657 39 (:REWRITE POSP-RW))
 (639 364 (:REWRITE DEFAULT-CAR))
 (636 318 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
 (581 581 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (561 241 (:REWRITE FOLD-CONSTS-IN-+))
 (477 159 (:REWRITE ADE::BVP-NTHCDR))
 (432 108 (:REWRITE <-0-+-NEGATIVE-1))
 (311 9 (:REWRITE REPEAT-WHEN-ZP))
 (261 9 (:REWRITE CONSP-OF-TAKE))
 (162 81 (:REWRITE POSP-NATP))
 (90 15 (:REWRITE CONSP-OF-APPEND))
 (48 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (39 39 (:TYPE-PRESCRIPTION POSP))
 (9 9 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE-QUOTED-CONSTANT FIX-UNDER-NUMBER-EQUIV))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$VALID-ST-PRESERVED
 (17 17 (:REWRITE NTH-WHEN-PREFIXP))
 )
(ADE::QUEUE8-L$Q4-L1-OUT-ACT-FIRE
 (174 6 (:REWRITE TAKE-OF-TOO-MANY))
 (129 3 (:DEFINITION TAKE))
 (96 48 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (69 9 (:DEFINITION LEN))
 (54 54 (:TYPE-PRESCRIPTION LEN))
 (48 48 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (48 3 (:REWRITE ADE::LEN-NTHCDR))
 (42 6 (:REWRITE TAKE-WHEN-ATOM))
 (40 22 (:REWRITE DEFAULT-CDR))
 (32 7 (:DEFINITION NTHCDR))
 (27 18 (:REWRITE DEFAULT-+-2))
 (24 24 (:REWRITE NTH-WHEN-PREFIXP))
 (24 6 (:REWRITE DEFAULT-CAR))
 (21 3 (:DEFINITION BINARY-APPEND))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 18 (:LINEAR LEN-WHEN-PREFIXP))
 (18 12 (:REWRITE DEFAULT-<-2))
 (16 12 (:REWRITE DEFAULT-<-1))
 (15 15 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$DATA-OUT))
 (15 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (15 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (12 3 (:REWRITE COMMUTATIVITY-OF-+))
 (9 9 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (6 6 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (3 3 (:REWRITE CONSP-OF-TAKE))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$EXTRACT-LEMMA-1
 (1015 50 (:DEFINITION NTHCDR))
 (750 411 (:REWRITE DEFAULT-+-2))
 (688 46 (:REWRITE ADE::LEN-NTHCDR))
 (582 85 (:DEFINITION BINARY-APPEND))
 (546 84 (:REWRITE ADE::BV-IS-TRUE-LIST))
 (537 411 (:REWRITE DEFAULT-+-1))
 (519 387 (:REWRITE DEFAULT-CDR))
 (425 170 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (378 42 (:DEFINITION TRUE-LISTP))
 (342 33 (:REWRITE ZP-OPEN))
 (247 247 (:REWRITE NTH-WHEN-PREFIXP))
 (186 102 (:REWRITE FOLD-CONSTS-IN-+))
 (168 84 (:TYPE-PRESCRIPTION ADE::BVP-NTHCDR))
 (151 96 (:REWRITE DEFAULT-<-1))
 (144 36 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (135 96 (:REWRITE DEFAULT-<-2))
 (135 33 (:REWRITE <-0-+-NEGATIVE-1))
 (126 42 (:REWRITE ADE::BVP-NTHCDR))
 (111 17 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (88 88 (:LINEAR LEN-WHEN-PREFIXP))
 (85 85 (:REWRITE DEFAULT-CAR))
 (44 44 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (36 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (18 3 (:REWRITE CONSP-OF-APPEND))
 (13 13 (:REWRITE ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (12 3 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:REWRITE NATP-RW))
 )
(ADE::QUEUE8-L$EXTRACT-LEMMA-2
 (52 2 (:DEFINITION NTHCDR))
 (49 7 (:DEFINITION LEN))
 (36 36 (:TYPE-PRESCRIPTION ADE::QUEUE4-L$EXTRACT))
 (31 17 (:REWRITE DEFAULT-+-2))
 (24 17 (:REWRITE DEFAULT-+-1))
 (20 2 (:REWRITE ZP-OPEN))
 (20 1 (:REWRITE ADE::QUEUE4-L$READY-OUT-LEMMA))
 (17 11 (:REWRITE DEFAULT-CDR))
 (16 2 (:DEFINITION BINARY-APPEND))
 (10 4 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (9 5 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE NTH-WHEN-PREFIXP))
 (8 2 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (8 2 (:REWRITE <-0-+-NEGATIVE-1))
 (4 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:LINEAR LEN-WHEN-PREFIXP))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 )
(ADE::QUEUE8-L$IN-SEQ
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ADE::QUEUE8-L$IN-SEQ-NETLIST
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ADE::QUEUE8-L$IN-SEQ-LEMMA
 (273 55 (:REWRITE ZP-OPEN))
 (146 24 (:DEFINITION BINARY-APPEND))
 (114 48 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (102 102 (:REWRITE DEFAULT-CAR))
 (102 34 (:REWRITE <-0-+-NEGATIVE-1))
 (92 92 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (68 68 (:REWRITE DEFAULT-CDR))
 (58 58 (:REWRITE DEFAULT-<-2))
 (58 58 (:REWRITE DEFAULT-<-1))
 (44 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (42 42 (:REWRITE NTH-WHEN-PREFIXP))
 (30 30 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (30 10 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:REWRITE ADE::QUEUE8-L$INPUT-FORMAT-PLUS))
 (4 4 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
(ADE::QUEUE8-L$OUT-SEQ
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ADE::QUEUE8-L$OUT-SEQ-NETLIST
 (6 6 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 )
(ADE::QUEUE8-L$OUT-SEQ-LEMMA
 (273 55 (:REWRITE ZP-OPEN))
 (146 24 (:DEFINITION BINARY-APPEND))
 (114 48 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (102 34 (:REWRITE <-0-+-NEGATIVE-1))
 (100 100 (:REWRITE DEFAULT-CAR))
 (92 92 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (84 72 (:REWRITE DEFAULT-CDR))
 (58 58 (:REWRITE DEFAULT-<-2))
 (58 58 (:REWRITE DEFAULT-<-1))
 (44 44 (:REWRITE DEFAULT-+-2))
 (44 44 (:REWRITE DEFAULT-+-1))
 (42 42 (:REWRITE NTH-WHEN-PREFIXP))
 (34 20 (:REWRITE ADE::QUEUE8-L$EXTRACT-LEMMA-1))
 (30 30 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (30 10 (:REWRITE FOLD-CONSTS-IN-+))
 (20 4 (:DEFINITION NTHCDR))
 (14 14 (:TYPE-PRESCRIPTION ADE::QUEUE8-L$VALID-ST))
 (12 12 (:TYPE-PRESCRIPTION ADE::SE))
 (12 12 (:REWRITE ADE::QUEUE8-L$INPUT-FORMAT-PLUS))
 (4 4 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
(ADE::QUEUE8-L$DATAFLOW-CORRECT-AUX
 (175 163 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (53 16 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (40 2 (:DEFINITION ADE::QUEUE8-L$IN-SEQ))
 (24 10 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (6 2 (:REWRITE CAR-OF-APPEND))
 (5 5 (:REWRITE CONSP-OF-APPEND))
 (4 4 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(ADE::QUEUE8-L$DATAFLOW-CORRECT
 (589 103 (:REWRITE ZP-OPEN))
 (382 61 (:DEFINITION BINARY-APPEND))
 (222 70 (:REWRITE <-0-+-NEGATIVE-1))
 (220 4 (:REWRITE TAKE-OF-TOO-MANY))
 (208 8 (:DEFINITION NTHCDR))
 (173 143 (:REWRITE DEFAULT-CDR))
 (172 166 (:REWRITE DEFAULT-CAR))
 (144 124 (:REWRITE DEFAULT-<-2))
 (134 124 (:REWRITE DEFAULT-<-1))
 (132 102 (:REWRITE DEFAULT-+-2))
 (126 18 (:DEFINITION LEN))
 (118 2 (:DEFINITION TAKE))
 (110 102 (:REWRITE DEFAULT-+-1))
 (88 4 (:REWRITE ADE::NFIX-OF-NAT))
 (72 24 (:REWRITE FOLD-CONSTS-IN-+))
 (64 2 (:REWRITE NATP-POSP--1))
 (58 2 (:REWRITE CONSP-OF-TAKE))
 (32 32 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (30 2 (:REWRITE POSP-RW))
 (26 2 (:REWRITE NATP-POSP))
 (24 8 (:LINEAR ADE::QUEUE8-L$EXTRACT-NOT-EMPTY))
 (20 20 (:LINEAR LEN-WHEN-PREFIXP))
 (18 2 (:DEFINITION NFIX))
 (16 16 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$READY-OUT))
 (16 4 (:REWRITE TAKE-WHEN-ATOM))
 (12 12 (:REWRITE ADE::QUEUE8-L$RUN-PLUS))
 (10 10 (:REWRITE ADE::QUEUE8-L$INPUT-FORMAT-PLUS))
 (10 10 (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
 (8 2 (:REWRITE <-+-NEGATIVE-0-1))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 2 (:REWRITE POSP-NATP))
 (3 3 (:TYPE-PRESCRIPTION ADE::QUEUE8-L$RUN))
 (2 2 (:TYPE-PRESCRIPTION POSP))
 )
(ADE::QUEUE8-L$FUNCTIONALLY-CORRECT
 (80 32 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (80 4 (:DEFINITION ADE::QUEUE8-L$IN-SEQ))
 (76 4 (:DEFINITION ADE::QUEUE8-L$OUT-SEQ))
 (44 44 (:TYPE-PRESCRIPTION ZP))
 (30 30 (:REWRITE ZP-OPEN))
 (24 24 (:REWRITE DEFAULT-CDR))
 (24 24 (:REWRITE DEFAULT-CAR))
 (20 5 (:REWRITE ADE::OPEN-QUEUE8-L$INPUT-FORMAT-N-ZP))
 (20 5 (:REWRITE ADE::OPEN-QUEUE8-L$INPUT-FORMAT-N))
 (12 3 (:REWRITE ADE::OPEN-QUEUE8-L$RUN-ZP))
 (12 3 (:REWRITE ADE::OPEN-QUEUE8-L$RUN))
 (12 3 (:REWRITE ADE::OPEN-DE-N-ZP))
 (12 3 (:REWRITE ADE::OPEN-DE-N))
 (8 8 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$OUT-ACT))
 (8 8 (:TYPE-PRESCRIPTION ADE::BOOLEANP-QUEUE8-L$IN-ACT))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (4 4 (:REWRITE ADE::QUEUE8-L$EXTRACT-LEMMA-1))
 (3 3 (:TYPE-PRESCRIPTION ADE::QUEUE8-L$RUN))
 (3 3 (:TYPE-PRESCRIPTION ADE::DE-N))
 )
