(FLAT::COMMUTATIVITY-2-OF-+)
(FLAT::ASSOCIATE-CONSTANTS-LEFT-+)
(FLAT::MINUS-INVERSE-+-A)
(FLAT::MINUS-INVERSE-+-B)
(FLAT::$BOTTOM$)
(FLAT::$<=$)
(FLAT::$F$1)
(FLAT::$F$2)
(FLAT::$F$1-$<=$-$F$2)
(FLAT::$F$1-$<=$-$F$2-A)
(FLAT::$F$1-$<=$-$F$2-B
 (1 1 (:REWRITE FLAT::$F$1-$<=$-$F$2-A))
 )
(FLAT::$F$1-$<=$-$F$2-C
 (7 5 (:REWRITE FLAT::$F$1-$<=$-$F$2-A))
 )
(FLAT::F$1)
(FLAT::UB-F$1)
(FLAT::F$1-$<=$-UB-F$1)
(FLAT::F$1-$<=$-UB-F$1-A)
(FLAT::F$1-$<=$-UB-F$1-B
 (1 1 (:REWRITE FLAT::F$1-$<=$-UB-F$1-A))
 )
(FLAT::F$1-$<=$-UB-F$1-C
 (6 4 (:REWRITE FLAT::F$1-$<=$-UB-F$1-A))
 )
(FLAT::$BOTTOM$-BASED-CHAIN)
(FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$)
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN)
(FLAT::$BOTTOM$-BASED-CHAIN-I>0)
(FLAT::INDUCT-NAT)
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-A
 (28 12 (:REWRITE ZP-OPEN))
 (25 25 (:REWRITE DEFAULT-+-2))
 (25 25 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE FLAT::ASSOCIATE-CONSTANTS-LEFT-+))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B
 (11 2 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (6 2 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-C
 (11 2 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (6 2 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-D
 (15 6 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (6 6 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (3 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-E
 (22 22 (:TYPE-PRESCRIPTION ZP))
 (18 18 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (11 11 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I)
(FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE
 (19 5 (:REWRITE ZP-OPEN))
 (8 8 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::LUB-$BOTTOM$-BASED-CHAIN)
(FLAT::LUB-$BOTTOM$-BASED-CHAIN-IS-UPPER-BOUND
 (75 9 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (51 6 (:REWRITE ZP-OPEN))
 (30 30 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (12 6 (:REWRITE DEFAULT-<-2))
 (9 9 (:TYPE-PRESCRIPTION ZP))
 (9 9 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::UB-$BOTTOM$-BASED-CHAIN)
(FLAT::UB-$BOTTOM$-BASED-CHAIN-IS-UPPER-BOUND)
(FLAT::LUB-$BOTTOM$-BASED-CHAIN-IS-LEAST-UPPER-BOUND
 (62 5 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (48 3 (:REWRITE ZP-OPEN))
 (30 30 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (12 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (5 5 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 )
(FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-F
 (71 8 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (50 5 (:REWRITE ZP-OPEN))
 (18 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (7 7 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::CHAIN$)
(FLAT::CHAIN$-IS-$<=$-CHAIN)
(FLAT::CHAIN$+$BOTTOM$-BASE)
(FLAT::LUB-CHAIN$-NAT-I)
(FLAT::LUB-CHAIN$)
(FLAT::LUB-CHAIN$-IS-UPPER-BOUND-CHAIN$+$BOTTOM$-BASE
 (14 6 (:REWRITE ZP-OPEN))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::LUB-CHAIN$-IS-UPPER-BOUND
 (14 13 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FLAT::UB-CHAIN$)
(FLAT::UB-CHAIN$-IS-UPPER-BOUND
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(FLAT::LUB-CHAIN$-IS-LEAST-UPPER-BOUND
 (24 21 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-<-2))
 (15 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::SHIFTED$-CHAIN)
(FLAT::SHIFTED$-CHAIN-REWRITE
 (25 4 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (23 4 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (16 1 (:REWRITE ZP-OPEN))
 (10 10 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (5 3 (:REWRITE DEFAULT-<-2))
 (5 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-C))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 )
(FLAT::SHIFTED$-CHAIN-IS-$<=$-CHAIN
 (100 16 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (91 15 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (64 4 (:REWRITE ZP-OPEN))
 (40 40 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (23 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-C))
 (19 11 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (14 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 )
(FLAT::SHIFTED$-CHAIN+$BOTTOM$-BASE)
(FLAT::LUB-SHIFTED$-CHAIN-NAT-I)
(FLAT::LUB-SHIFTED$-CHAIN)
(FLAT::LUB-SHIFTED$-CHAIN-IS-UPPER-BOUND
 (192 24 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (175 23 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (140 12 (:REWRITE ZP-OPEN))
 (80 80 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (39 23 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (23 23 (:REWRITE DEFAULT-<-1))
 (23 6 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-C))
 (18 18 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (8 8 (:TYPE-PRESCRIPTION ZP))
 )
(FLAT::LUB-SHIFTED$-CHAIN-IS-UPPER-BOUND-OF-$BOTTOM$-BASED-CHAIN-LEMMA
 (322 28 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (318 28 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (140 140 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (67 39 (:REWRITE DEFAULT-<-2))
 (40 39 (:REWRITE DEFAULT-<-1))
 (30 30 (:TYPE-PRESCRIPTION ZP))
 (28 28 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FLAT::$<=$-$BOTTOM$)
(FLAT::LUB-SHIFTED$-CHAIN-IS-UPPER-BOUND-OF-$BOTTOM$-BASED-CHAIN
 (46 4 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (34 4 (:REWRITE ZP-OPEN))
 (20 20 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (8 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::LUB-$BOTTOM$-BASED-CHAIN-IS-UPPER-BOUND-OF-SHIFTED$-CHAIN
 (24 3 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (22 3 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (16 1 (:REWRITE ZP-OPEN))
 (10 10 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (5 3 (:REWRITE DEFAULT-<-2))
 (4 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-C))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-F))
 )
(FLAT::LUB-$BOTTOM$-BASED-CHAIN-$<=$-LUB-SHIFTED$-CHAIN)
(FLAT::LUB-SHIFTED$-CHAIN-$<=$-LUB-$BOTTOM$-BASED-CHAIN
 (24 3 (:REWRITE FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I-REWRITE))
 (22 3 (:REWRITE FLAT::BASE-OF-$BOTTOM$-BASED-CHAIN=$BOTTOM$))
 (16 1 (:REWRITE ZP-OPEN))
 (10 10 (:TYPE-PRESCRIPTION FLAT::LUB-$BOTTOM$-BASED-CHAIN-NAT-I))
 (5 3 (:REWRITE DEFAULT-<-2))
 (4 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-C))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-B))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (1 1 (:TYPE-PRESCRIPTION ZP))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-IS-$<=$-CHAIN-F))
 )
(FLAT::LUB-SHIFTED$-CHAIN-=-LUB-$BOTTOM$-BASED-CHAIN)
(FLAT::$CHAIN$)
(FLAT::BASE-OF-$CHAIN$=$BOTTOM$)
(FLAT::$CHAIN$-IS-$<=$-CHAIN)
(FLAT::SHIFTED-$CHAIN$)
(FLAT::SHIFTED-$CHAIN$=$CHAIN$)
(FLAT::UB-SHIFTED-$CHAIN$)
(FLAT::SHIFTED-$CHAIN$-$<=$-UB-SHIFTED-$CHAIN$)
(FLAT::$F$)
(FLAT::NAT-$F$)
(FLAT::UB-SHIFTED-$CHAIN$-=-SHIFTED-$CHAIN$-$F$)
(FLAT::SHIFTED-$CHAIN$-IS-$<=$-CHAIN
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE FLAT::BASE-OF-$CHAIN$=$BOTTOM$))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(FLAT::LUB-$CHAIN$-I-REWRITE
 (14 2 (:REWRITE FLAT::BASE-OF-$CHAIN$=$BOTTOM$))
 (9 2 (:REWRITE ZP-OPEN))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::LUB-$CHAIN$-NAT-I)
(FLAT::LUB-$CHAIN$)
(FLAT::SHIFTED-$CHAIN$+$BOTTOM$-BASE)
(FLAT::SHIFTED-$CHAIN$+$BOTTOM$-BASE-REWRITE
 (24 4 (:REWRITE FLAT::LUB-$CHAIN$-I-REWRITE))
 (22 4 (:REWRITE FLAT::BASE-OF-$CHAIN$=$BOTTOM$))
 (18 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(FLAT::LUB-SHIFTED-$CHAIN$-I-REWRITE
 (96 16 (:REWRITE FLAT::LUB-$CHAIN$-I-REWRITE))
 (88 16 (:REWRITE FLAT::BASE-OF-$CHAIN$=$BOTTOM$))
 (31 31 (:REWRITE DEFAULT-<-2))
 (31 31 (:REWRITE DEFAULT-<-1))
 (31 31 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (30 30 (:TYPE-PRESCRIPTION ZP))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 )
(FLAT::LUB-SHIFTED-$CHAIN$-NAT-I)
(FLAT::LUB-SHIFTED-$CHAIN$)
(FLAT::LUB-SHIFTED-$CHAIN$-=-LUB-$CHAIN$
 (242 39 (:REWRITE ZP-OPEN))
 (64 64 (:REWRITE DEFAULT-<-2))
 (64 64 (:REWRITE DEFAULT-<-1))
 (58 58 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 )
(FLAT::LUB-SHIFTED-$CHAIN$-$<=$-UB-SHIFTED-$CHAIN$
 (151 25 (:REWRITE ZP-OPEN))
 (40 40 (:REWRITE DEFAULT-<-2))
 (40 40 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(FLAT::LUB-SHIFTED-$CHAIN$-IS-UPPER-BOUND)
(FLAT::UB-SHIFTED-$CHAIN$-$<=$-LUB-SHIFTED-$CHAIN$)
(FLAT::UB-SHIFTED-$CHAIN$=LUB-SHIFTED-$CHAIN$)
(FLAT::LUB-$CHAIN$=UB-SHIFTED-$CHAIN$)
(FLAT::MONO-CHAIN$)
(FLAT::MONO-CHAIN$-IS-$<=$-CHAIN)
(FLAT::MONO-CHAIN$-IS-CHAIN-OF-MONOTONIC-FUNCTIONS)
(FLAT::MONO-CHAIN$-IS-CHAIN-OF-MONOTONIC-FUNCTIONS-A)
(FLAT::MONO-CHAIN$+$BOTTOM$-BASE)
(FLAT::LUB-MONO-CHAIN$-I-REWRITE
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::LUB-MONO-CHAIN$-NAT-I)
(FLAT::LUB-MONO-CHAIN$)
(FLAT::LUB-MONO-CHAIN$-IS-UPPER-BOUND
 (27 7 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::UB-MONO-CHAIN$)
(FLAT::UB-MONO-CHAIN$-IS-UPPER-BOUND
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(FLAT::LUB-MONO-CHAIN$-IS-LEAST-UPPER-BOUND
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 )
(FLAT::MONO-CHAIN$+$BOTTOM$-BASE-IS-$<=$-CHAIN
 (22 6 (:REWRITE FLAT::LUB-MONO-CHAIN$-I-REWRITE))
 (12 4 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::MONO-CHAIN$+$BOTTOM$-BASE=$BOTTOM$
 (10 2 (:REWRITE FLAT::LUB-MONO-CHAIN$-I-REWRITE))
 (6 2 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 )
(FLAT::MONO-CHAIN$+$BOTTOM$-BASE-IS-$<=$-CHAIN-E
 (13 3 (:REWRITE FLAT::LUB-MONO-CHAIN$-I-REWRITE))
 (10 3 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(FLAT::MONO-CHAIN$+$BOTTOM$-BASE-IS-CHAIN-OF-MONOTONIC-FNS
 (80 8 (:REWRITE FLAT::LUB-MONO-CHAIN$-I-REWRITE))
 (59 15 (:REWRITE ZP-OPEN))
 (53 8 (:REWRITE FLAT::MONO-CHAIN$+$BOTTOM$-BASE=$BOTTOM$))
 (13 11 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 12 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (11 11 (:REWRITE DEFAULT-+-1))
 (10 10 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(FLAT::LUB-MONO-CHAIN$-IS-MONOTONIC
 (896 112 (:REWRITE ZP-OPEN))
 (358 358 (:REWRITE DEFAULT-<-2))
 (358 358 (:REWRITE DEFAULT-<-1))
 (224 224 (:REWRITE FLAT::$BOTTOM$-BASED-CHAIN-I>0))
 (112 112 (:TYPE-PRESCRIPTION ZP))
 )
