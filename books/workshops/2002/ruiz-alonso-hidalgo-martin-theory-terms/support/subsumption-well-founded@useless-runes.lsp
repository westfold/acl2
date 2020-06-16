(VAL-MAPCAR)
(VAL-MAP-CAR-APPEND (210 15 (:DEFINITION VAL))
                    (131 67 (:REWRITE DEFAULT-CAR))
                    (120 30 (:REWRITE O-P-O-INFP-CAR))
                    (113 49 (:REWRITE DEFAULT-CDR))
                    (30 30 (:REWRITE O-P-DEF-O-FINP-1))
                    (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP)))
(VAL-MAPCAR-ELIMINATION-1 (65 41 (:REWRITE DEFAULT-CAR))
                          (48 12 (:REWRITE O-P-O-INFP-CAR))
                          (47 23 (:REWRITE DEFAULT-CDR))
                          (12 12 (:REWRITE O-P-DEF-O-FINP-1)))
(VAL-MAPCAR-ELIMINATION-2 (48 12 (:REWRITE O-P-O-INFP-CAR))
                          (47 23 (:REWRITE DEFAULT-CDR))
                          (12 12 (:REWRITE O-P-DEF-O-FINP-1)))
(VAL-MAPCAR-MAIN-LEMMA (154 11 (:DEFINITION VAL))
                       (95 48 (:REWRITE DEFAULT-CAR))
                       (88 22 (:REWRITE O-P-O-INFP-CAR))
                       (75 30 (:REWRITE DEFAULT-CDR))
                       (44 44 (:TYPE-PRESCRIPTION O-P))
                       (22 22 (:REWRITE O-P-DEF-O-FINP-1)))
(VAL-MAPCAR-ONLY-ONE-MAKE-SET-IS-NEEDED-LEMMA-1
     (214 145 (:REWRITE DEFAULT-CDR))
     (211 142 (:REWRITE DEFAULT-CAR))
     (128 32 (:REWRITE O-P-O-INFP-CAR))
     (64 64 (:TYPE-PRESCRIPTION O-P))
     (32 32 (:REWRITE O-P-DEF-O-FINP-1)))
(VAL-MAPCAR-ONLY-ONE-MAKE-SET-IS-NEEDED-LEMMA-2
     (398 244 (:REWRITE DEFAULT-CAR))
     (374 221 (:REWRITE DEFAULT-CDR))
     (288 72 (:REWRITE O-P-O-INFP-CAR))
     (264 19 (:DEFINITION SETP))
     (144 144 (:TYPE-PRESCRIPTION O-P))
     (72 72 (:REWRITE O-P-DEF-O-FINP-1)))
(VAL-MAPCAR-ONLY-ONE-MAKE-SET-IS-NEEDED
     (1269 210 (:DEFINITION MEMBER-EQUAL))
     (1030 783 (:REWRITE DEFAULT-CDR))
     (906 664 (:REWRITE DEFAULT-CAR))
     (812 58 (:DEFINITION VAL))
     (464 116 (:REWRITE O-P-O-INFP-CAR))
     (118 4 (:REWRITE MAKE-SET-FIX-TRUE-LIST))
     (116 116 (:REWRITE O-P-DEF-O-FINP-1))
     (74 10 (:REWRITE MEMBER-MAKE-SET))
     (4 4 (:REWRITE SETP-MAKE-SET)))
(LENGTH-VAL-MAPCAR (42 3 (:DEFINITION VAL))
                   (27 14 (:REWRITE DEFAULT-CDR))
                   (24 12 (:REWRITE DEFAULT-CAR))
                   (24 6 (:REWRITE O-P-O-INFP-CAR))
                   (14 7 (:REWRITE DEFAULT-+-2))
                   (7 7 (:REWRITE DEFAULT-+-1))
                   (6 6 (:REWRITE O-P-DEF-O-FINP-1)))
(VARIABLE-SUBSTITUTION-MAKE-SET-APPEND
     (908 629 (:REWRITE DEFAULT-CDR))
     (724 548 (:REWRITE DEFAULT-CAR))
     (504 36 (:DEFINITION VAL))
     (380 95 (:REWRITE O-P-O-INFP-CAR))
     (278 139
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (190 190 (:TYPE-PRESCRIPTION O-P))
     (139 139 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (139 139 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (95 95 (:REWRITE O-P-DEF-O-FINP-1)))
(VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P (61 16 (:REWRITE O-P-O-INFP-CAR))
                                        (53 25 (:REWRITE DEFAULT-CAR))
                                        (46 13 (:REWRITE DEFAULT-CDR))
                                        (15 15 (:REWRITE O-P-DEF-O-FINP-1)))
(VARIABLE-P-VALUE (116 53 (:REWRITE DEFAULT-CAR))
                  (109 28 (:REWRITE O-P-O-INFP-CAR))
                  (79 28 (:REWRITE DEFAULT-CDR))
                  (78 6 (:REWRITE ASSOC-MEMBER-DOMAIN))
                  (60 6 (:DEFINITION ALISTP))
                  (30 30 (:TYPE-PRESCRIPTION ALISTP))
                  (27 27 (:REWRITE O-P-DEF-O-FINP-1))
                  (12 12 (:REWRITE CONSP-DOMAIN))
                  (9 3
                     (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P)))
(VARIABLES-APPLY-SUBST-VARIABLE-SUBSTITUTION
     (182 13 (:DEFINITION VAL))
     (158 77 (:REWRITE DEFAULT-CDR))
     (146 81 (:REWRITE DEFAULT-CAR))
     (140 35 (:REWRITE O-P-O-INFP-CAR))
     (50 1 (:REWRITE VARIABLE-P-VALUE))
     (48 6 (:DEFINITION VARIABLE-SUBSTITUTION))
     (45 9 (:DEFINITION BINARY-APPEND))
     (35 35 (:REWRITE O-P-DEF-O-FINP-1))
     (26 1 (:DEFINITION MEMBER-EQUAL))
     (17 2 (:DEFINITION DOMAIN))
     (13 1 (:REWRITE ASSOC-MEMBER-DOMAIN))
     (10 1 (:DEFINITION ALISTP))
     (9 9 (:TYPE-PRESCRIPTION DOMAIN))
     (9 3
        (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (6 6
        (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
     (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (5 5 (:TYPE-PRESCRIPTION ALISTP))
     (3 3 (:REWRITE CONSP-DOMAIN)))
(VAL-DOMAIN-IN-CO-DOMAIN (110 49 (:REWRITE DEFAULT-CAR))
                         (98 26 (:REWRITE O-P-O-INFP-CAR))
                         (78 6 (:REWRITE ASSOC-MEMBER-DOMAIN))
                         (76 31 (:REWRITE DEFAULT-CDR))
                         (60 6 (:DEFINITION ALISTP))
                         (48 48 (:TYPE-PRESCRIPTION O-P))
                         (30 30 (:TYPE-PRESCRIPTION ALISTP))
                         (24 24 (:REWRITE O-P-DEF-O-FINP-1))
                         (12 12 (:REWRITE CONSP-DOMAIN)))
(SIZE-INSTANCE-GEQ (55 31 (:REWRITE DEFAULT-CDR))
                   (42 21 (:REWRITE DEFAULT-+-2))
                   (42 3 (:DEFINITION VAL))
                   (41 25 (:REWRITE DEFAULT-CAR))
                   (32 21 (:REWRITE DEFAULT-+-1))
                   (32 8 (:REWRITE O-P-O-INFP-CAR))
                   (24 2 (:DEFINITION VARIABLE-SUBSTITUTION))
                   (17 8 (:REWRITE DEFAULT-<-1))
                   (16 16 (:TYPE-PRESCRIPTION O-P))
                   (16 8 (:REWRITE DEFAULT-<-2))
                   (15 1
                       (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
                   (15 1 (:REWRITE VARIABLE-P-VALUE))
                   (12 12
                       (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
                   (12 4
                       (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
                   (10 10
                       (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
                   (8 8 (:REWRITE O-P-DEF-O-FINP-1)))
(SIZE-EQUAL-VARIABLE-SUBSTITUTION
     (848 16 (:DEFINITION MAKE-SET))
     (684 444 (:REWRITE DEFAULT-CDR))
     (514 366 (:REWRITE DEFAULT-CAR))
     (434 31 (:DEFINITION VAL))
     (340 85 (:REWRITE O-P-O-INFP-CAR))
     (256 256 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (216 108 (:REWRITE DEFAULT-+-2))
     (172 172 (:TYPE-PRESCRIPTION VARIABLES))
     (167 108 (:REWRITE DEFAULT-+-1))
     (96 32
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (85 85 (:REWRITE O-P-DEF-O-FINP-1))
     (72 72
         (:REWRITE APPLY-CONSP-IS-CONSP-LIST-OF-TERMS))
     (65 6
         (:REWRITE VARIABLE-SUBSTITUTION-VALUE-VARIABLE-P))
     (65 6 (:REWRITE VARIABLE-P-VALUE))
     (63 21
         (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (32 32 (:TYPE-PRESCRIPTION MAKE-SET))
     (32 32 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (30 6 (:DEFINITION BINARY-APPEND))
     (12 6 (:REWRITE O-INFP->NEQ-0)))
(EQUAL-SIZE-AND-NOT-INVERSE-SUBSUMPTION-IMPLIES-NOT-RENAMING-ALMOST
     (100 2 (:DEFINITION MAKE-SET))
     (99 6
         (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (81 57 (:REWRITE DEFAULT-CDR))
     (67 50 (:REWRITE DEFAULT-CAR))
     (56 4 (:DEFINITION VAL))
     (48 8 (:DEFINITION MEMBER-EQUAL))
     (47 1 (:LINEAR SIZE-INSTANCE-GEQ))
     (41 11 (:REWRITE O-P-O-INFP-CAR))
     (40 2 (:DEFINITION RESTRICTION))
     (38 2 (:DEFINITION APPLY-SUBST))
     (27 3 (:DEFINITION VARIABLES))
     (25 2 (:DEFINITION SIZE))
     (18 18 (:TYPE-PRESCRIPTION VARIABLES))
     (15 3 (:DEFINITION BINARY-APPEND))
     (11 1 (:DEFINITION INVERSE))
     (10 10 (:REWRITE O-P-DEF-O-FINP-1))
     (8 4 (:REWRITE DEFAULT-+-2))
     (8 1 (:DEFINITION CO-DOMAIN))
     (6 4 (:REWRITE DEFAULT-+-1))
     (4 4 (:TYPE-PRESCRIPTION MAKE-SET))
     (3 1
        (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (2 2 (:TYPE-PRESCRIPTION VARIABLE-P))
     (1 1 (:REWRITE SUBSETP-TRANSITIVE)))
(EQUAL-SIZE-AND-NOT-INVERSE-SUBSUMPTION-IMPLIES-NOT-RENAMING
     (200 4 (:DEFINITION MAKE-SET))
     (198 12
          (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (166 10 (:DEFINITION SETP))
     (163 111 (:REWRITE DEFAULT-CDR))
     (145 103 (:REWRITE DEFAULT-CAR))
     (144 10 (:DEFINITION VAL))
     (124 6 (:DEFINITION APPLY-SUBST))
     (94 25 (:REWRITE O-P-O-INFP-CAR))
     (82 14 (:DEFINITION MEMBER-EQUAL))
     (80 4 (:DEFINITION RESTRICTION))
     (54 54 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (50 4 (:DEFINITION SIZE))
     (47 1 (:LINEAR SIZE-INSTANCE-GEQ))
     (45 5 (:DEFINITION VARIABLES))
     (34 34 (:TYPE-PRESCRIPTION VARIABLES))
     (25 5 (:DEFINITION BINARY-APPEND))
     (23 23 (:REWRITE O-P-DEF-O-FINP-1))
     (22 2 (:DEFINITION INVERSE))
     (16 8 (:REWRITE DEFAULT-+-2))
     (12 8 (:REWRITE DEFAULT-+-1))
     (12 4
         (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
     (8 8 (:TYPE-PRESCRIPTION MAKE-SET))
     (8 1 (:DEFINITION CO-DOMAIN))
     (4 4 (:TYPE-PRESCRIPTION INVERSE))
     (1 1 (:REWRITE SUBSETP-TRANSITIVE)))
(NOT-INJECTIVE-IMPLIES-CO-DOMAIN-LESSP-THAN-DOMAIN
     (100 2 (:DEFINITION MAKE-SET))
     (78 6
         (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (64 4 (:DEFINITION SETP))
     (34 6 (:DEFINITION MEMBER-EQUAL))
     (28 4 (:DEFINITION LEN))
     (24 24 (:REWRITE DEFAULT-CDR))
     (22 22 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (14 14 (:REWRITE DEFAULT-CAR))
     (12 12 (:TYPE-PRESCRIPTION CO-DOMAIN))
     (8 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:TYPE-PRESCRIPTION MAKE-SET))
     (4 4 (:REWRITE DEFAULT-+-1)))
(CO-DOMAIN-VAL-MAPCAR (321 139 (:REWRITE DEFAULT-CDR))
                      (281 71 (:REWRITE O-P-O-INFP-CAR))
                      (145 15 (:DEFINITION MEMBER-EQUAL))
                      (91 7 (:REWRITE ASSOC-MEMBER-DOMAIN))
                      (70 70 (:REWRITE O-P-DEF-O-FINP-1))
                      (70 7 (:DEFINITION ALISTP))
                      (35 35 (:TYPE-PRESCRIPTION ALISTP)))
(N-VARIABLES-DECREASES-LEMMA-2
     (250 5 (:DEFINITION MAKE-SET))
     (237 15
          (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (198 12 (:DEFINITION SETP))
     (122 98 (:REWRITE DEFAULT-CDR))
     (104 80 (:REWRITE DEFAULT-CAR))
     (99 17 (:DEFINITION MEMBER-EQUAL))
     (84 6 (:DEFINITION VAL))
     (76 4 (:DEFINITION APPLY-SUBST))
     (65 65 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (50 4 (:DEFINITION SIZE))
     (48 12 (:REWRITE O-P-O-INFP-CAR))
     (47 1 (:LINEAR SIZE-INSTANCE-GEQ))
     (42 4 (:DEFINITION VARIABLES))
     (36 36 (:TYPE-PRESCRIPTION VARIABLES))
     (20 4 (:DEFINITION BINARY-APPEND))
     (20 1 (:DEFINITION RESTRICTION))
     (19 1 (:DEFINITION VAL-MAPCAR))
     (16 8 (:REWRITE DEFAULT-+-2))
     (12 12 (:REWRITE O-P-DEF-O-FINP-1))
     (12 8 (:REWRITE DEFAULT-+-1))
     (12 4
         (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
     (1 1 (:REWRITE SUBSETP-TRANSITIVE)))
(N-VARIABLES-DECREASES-LEMMA-1)
(N-VARIABLES-DECREASES-BRIDGE-LEMMA
 (576 33
      (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
 (561 33 (:DEFINITION SETP))
 (550 11 (:DEFINITION MAKE-SET))
 (264 44 (:DEFINITION MEMBER-EQUAL))
 (248 208 (:REWRITE DEFAULT-CDR))
 (222 3
      (:LINEAR MAKE-SET-LESSP-LENGTH-IF-NOT-SETP))
 (196 159 (:REWRITE DEFAULT-CAR))
 (176 176 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (171 1
      (:LINEAR NOT-INJECTIVE-IMPLIES-CO-DOMAIN-LESSP-THAN-DOMAIN))
 (156 1
      (:REWRITE EQUAL-SIZE-AND-NOT-INVERSE-SUBSUMPTION-IMPLIES-NOT-RENAMING))
 (128 9 (:DEFINITION VAL))
 (100 5 (:DEFINITION APPLY-SUBST))
 (86 86 (:TYPE-PRESCRIPTION VARIABLES))
 (77 20 (:REWRITE O-P-O-INFP-CAR))
 (56 8 (:DEFINITION LEN))
 (50 4 (:DEFINITION SIZE))
 (48 5 (:DEFINITION VARIABLES))
 (47 1 (:LINEAR SIZE-INSTANCE-GEQ))
 (40 2 (:DEFINITION RESTRICTION))
 (38 2 (:DEFINITION VAL-MAPCAR))
 (32 16 (:REWRITE DEFAULT-+-2))
 (25 5 (:DEFINITION BINARY-APPEND))
 (20 16 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE O-P-DEF-O-FINP-1))
 (18 18 (:TYPE-PRESCRIPTION MAKE-SET))
 (14 14 (:TYPE-PRESCRIPTION CO-DOMAIN))
 (12 4
     (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
 (11 1 (:DEFINITION INVERSE))
 (8 8 (:TYPE-PRESCRIPTION VARIABLE-P))
 (4 4 (:TYPE-PRESCRIPTION VAL-MAPCAR))
 (2 2 (:TYPE-PRESCRIPTION INVERSE))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE SUBSETP-TRANSITIVE)))
(N-VARIABLES-DECREASES (413 21 (:DEFINITION SETP))
                       (318 18
                            (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
                       (300 6 (:DEFINITION MAKE-SET))
                       (201 6 (:REWRITE CO-DOMAIN-VAL-MAPCAR))
                       (190 27 (:DEFINITION MEMBER-EQUAL))
                       (185 136 (:REWRITE DEFAULT-CDR))
                       (166 107 (:REWRITE DEFAULT-CAR))
                       (144 3 (:DEFINITION CO-DOMAIN))
                       (111 111 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                       (72 18 (:REWRITE O-P-O-INFP-CAR))
                       (61 61 (:TYPE-PRESCRIPTION DOMAIN))
                       (56 7 (:DEFINITION DOMAIN))
                       (56 4 (:DEFINITION VAL))
                       (48 6 (:DEFINITION LEN))
                       (47 1 (:LINEAR SIZE-INSTANCE-GEQ))
                       (40 2 (:DEFINITION RESTRICTION))
                       (39 4 (:DEFINITION VARIABLES))
                       (38 2 (:DEFINITION APPLY-SUBST))
                       (32 32 (:TYPE-PRESCRIPTION VARIABLES))
                       (25 2 (:DEFINITION SIZE))
                       (20 10 (:REWRITE DEFAULT-+-2))
                       (20 4 (:DEFINITION BINARY-APPEND))
                       (19 19 (:REWRITE CONSP-DOMAIN))
                       (18 18 (:REWRITE O-P-DEF-O-FINP-1))
                       (16 16 (:TYPE-PRESCRIPTION CO-DOMAIN))
                       (12 12 (:TYPE-PRESCRIPTION MAKE-SET))
                       (12 10 (:REWRITE DEFAULT-+-1))
                       (6 2
                          (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
                       (4 4 (:TYPE-PRESCRIPTION VARIABLE-P)))
(N-VARIABLES-BOUNDED-SUBSTITUTION-VARIABLE-ALMOST
     (49 29 (:REWRITE DEFAULT-CDR))
     (42 3 (:DEFINITION VAL))
     (38 2 (:DEFINITION APPLY-SUBST))
     (36 24 (:REWRITE DEFAULT-CAR))
     (32 8 (:REWRITE O-P-O-INFP-CAR))
     (20 4 (:DEFINITION BINARY-APPEND))
     (19 1 (:DEFINITION VAL-MAPCAR))
     (16 16 (:TYPE-PRESCRIPTION O-P))
     (14 2 (:DEFINITION LEN))
     (8 8 (:REWRITE O-P-DEF-O-FINP-1))
     (6 2
        (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (4 4 (:TYPE-PRESCRIPTION VARIABLE-P))
     (4 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1)))
(N-VARIABLES-BOUNDED-SUBSTITUTION-VARIABLE
     (150 1
          (:REWRITE SIZE-EQUAL-VARIABLE-SUBSTITUTION))
     (110 78 (:REWRITE DEFAULT-CDR))
     (100 2 (:DEFINITION MAKE-SET))
     (99 6
         (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (94 2 (:LINEAR SIZE-INSTANCE-GEQ))
     (88 64 (:REWRITE DEFAULT-CAR))
     (84 6 (:DEFINITION VAL))
     (83 5 (:DEFINITION SETP))
     (76 4 (:DEFINITION APPLY-SUBST))
     (75 6 (:DEFINITION SIZE))
     (56 14 (:REWRITE O-P-O-INFP-CAR))
     (48 5 (:DEFINITION VARIABLES))
     (41 7 (:DEFINITION MEMBER-EQUAL))
     (40 2 (:DEFINITION RESTRICTION))
     (33 33 (:TYPE-PRESCRIPTION SIZE))
     (28 28 (:TYPE-PRESCRIPTION O-P))
     (28 14 (:REWRITE DEFAULT-+-2))
     (27 27 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (26 26 (:TYPE-PRESCRIPTION VARIABLES))
     (25 25 (:TYPE-PRESCRIPTION SETP))
     (25 5 (:DEFINITION BINARY-APPEND))
     (20 14 (:REWRITE DEFAULT-+-1))
     (15 1
         (:REWRITE N-VARIABLES-BOUNDED-SUBSTITUTION-VARIABLE-ALMOST))
     (14 14 (:REWRITE O-P-DEF-O-FINP-1))
     (14 2 (:DEFINITION LEN))
     (12 4
         (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (9 9 (:TYPE-PRESCRIPTION VARIABLE-P))
     (4 4 (:TYPE-PRESCRIPTION MAKE-SET))
     (1 1 (:REWRITE SUBSETP-TRANSITIVE)))
(COMPLETENESS-IN-REVERSE-ORDER
     (250 2 (:REWRITE RENAMING-IMPLIES-RENAMED))
     (246 2 (:DEFINITION RENAMING))
     (160 4 (:REWRITE CO-DOMAIN-VAL-MAPCAR))
     (154 6 (:DEFINITION SETP))
     (96 2 (:DEFINITION CO-DOMAIN))
     (86 42 (:REWRITE DEFAULT-CDR))
     (84 40 (:REWRITE DEFAULT-CAR))
     (68 4 (:DEFINITION APPLY-SUBST))
     (64 16 (:REWRITE O-P-O-INFP-CAR))
     (62 6 (:DEFINITION MEMBER-EQUAL))
     (56 4 (:DEFINITION VAL))
     (44 44 (:TYPE-PRESCRIPTION DOMAIN))
     (32 4 (:DEFINITION DOMAIN))
     (30 30 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (28 28 (:TYPE-PRESCRIPTION SETP))
     (24 2 (:DEFINITION VARIABLE-SUBSTITUTION))
     (16 16 (:REWRITE O-P-DEF-O-FINP-1))
     (12 12 (:REWRITE CONSP-DOMAIN))
     (10 10
         (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
     (8 8 (:TYPE-PRESCRIPTION CO-DOMAIN))
     (2 2 (:TYPE-PRESCRIPTION VARIABLE-P))
     (2 2 (:TYPE-PRESCRIPTION RENAMING)))
(SUBSUMPTION-MEASURE)
(SUBSUMPTION-WELL-FOUNDED-INSTANCE-VERSION
     (1327 73 (:DEFINITION SETP))
     (1202 5 (:REWRITE O<=-O-FINP-DEF))
     (1179 60
           (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (1000 20 (:DEFINITION MAKE-SET))
     (943 5 (:LINEAR LENGTH-MAKE-SET-LEQ))
     (747 569 (:REWRITE DEFAULT-CDR))
     (601 93 (:DEFINITION MEMBER-EQUAL))
     (598 428 (:REWRITE DEFAULT-CAR))
     (584 40 (:DEFINITION APPLY-SUBST))
     (536 47 (:DEFINITION VAL))
     (385 385 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (375 3 (:REWRITE RENAMING-IMPLIES-RENAMED))
     (370 58 (:DEFINITION SIZE))
     (369 3 (:DEFINITION RENAMING))
     (362 362 (:TYPE-PRESCRIPTION SETP))
     (312 99 (:REWRITE O-P-O-INFP-CAR))
     (240 6 (:REWRITE CO-DOMAIN-VAL-MAPCAR))
     (194 194 (:TYPE-PRESCRIPTION VARIABLES))
     (184 92 (:REWRITE DEFAULT-+-2))
     (154 22 (:DEFINITION LEN))
     (144 3 (:DEFINITION CO-DOMAIN))
     (120 7 (:DEFINITION RESTRICTION))
     (110 5
          (:LINEAR MAKE-SET-LESSP-LENGTH-IF-NOT-SETP))
     (104 37
          (:REWRITE APPLY-RETURNS-VARIABLE-IMPLIES-VARIABLE))
     (96 92 (:REWRITE DEFAULT-+-1))
     (80 4 (:REWRITE O-FIRST-EXPT-<))
     (73 73 (:TYPE-PRESCRIPTION VARIABLE-P))
     (68 6 (:DEFINITION VARIABLE-SUBSTITUTION))
     (66 66 (:TYPE-PRESCRIPTION DOMAIN))
     (60 21 (:DEFINITION VARIABLES))
     (57 57 (:REWRITE O-P-DEF-O-FINP-1))
     (48 6 (:DEFINITION DOMAIN))
     (40 40 (:TYPE-PRESCRIPTION MAKE-SET))
     (21 6 (:REWRITE AC-<))
     (20 2 (:DEFINITION INVERSE))
     (18 18 (:REWRITE CONSP-DOMAIN))
     (18 8 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (17 7 (:REWRITE DEFAULT-<-2))
     (17 7 (:REWRITE DEFAULT-<-1))
     (15 4 (:REWRITE O-FIRST-COEFF-<))
     (13 5 (:REWRITE O-INFP-O-FINP-O<=))
     (12 12 (:TYPE-PRESCRIPTION CO-DOMAIN))
     (10 10 (:TYPE-PRESCRIPTION MAKE-ORD))
     (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (6 6 (:REWRITE |a < b & b < c  =>  a < c|))
     (4 4 (:TYPE-PRESCRIPTION INVERSE))
     (4 2 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
     (3 3 (:TYPE-PRESCRIPTION RENAMING))
     (2 2 (:REWRITE MAKE-ORD-O-FIRST-EXPT))
     (2 2 (:REWRITE MAKE-ORD-O-FIRST-COEFF))
     (2 2 (:REWRITE MAKE-ORD-EQUAL-4)))
(SUBSUMPTION-MEASURE-O-P (120 6
                              (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
                         (102 6 (:DEFINITION SETP))
                         (100 2 (:DEFINITION MAKE-SET))
                         (48 8 (:DEFINITION MEMBER-EQUAL))
                         (33 33 (:REWRITE DEFAULT-CDR))
                         (32 32 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                         (30 30 (:TYPE-PRESCRIPTION SETP))
                         (28 4 (:DEFINITION LEN))
                         (20 20 (:TYPE-PRESCRIPTION VARIABLES))
                         (18 18 (:REWRITE DEFAULT-CAR))
                         (14 7 (:REWRITE DEFAULT-+-2))
                         (8 7 (:REWRITE DEFAULT-+-1))
                         (5 1 (:DEFINITION SIZE))
                         (4 4 (:TYPE-PRESCRIPTION MAKE-SET))
                         (4 2 (:DEFINITION VARIABLES))
                         (3 1 (:REWRITE DEFAULT-<-1))
                         (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
                         (1 1 (:TYPE-PRESCRIPTION MAKE-ORD))
                         (1 1 (:REWRITE MAKE-ORD-EQUAL-4))
                         (1 1 (:REWRITE DEFAULT-<-2)))
(SUBSUMPTION-MEASURE-UPPER-BOUNDED
     (120 6
          (:REWRITE MAKE-SET-OF-A-SETP-IS-THE-SAME))
     (102 6 (:DEFINITION SETP))
     (100 2 (:DEFINITION MAKE-SET))
     (48 8 (:DEFINITION MEMBER-EQUAL))
     (33 33 (:REWRITE DEFAULT-CDR))
     (32 32 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (30 30 (:TYPE-PRESCRIPTION SETP))
     (28 4 (:DEFINITION LEN))
     (20 20 (:TYPE-PRESCRIPTION VARIABLES))
     (18 18 (:REWRITE DEFAULT-CAR))
     (14 7 (:REWRITE DEFAULT-+-2))
     (8 8 (:TYPE-PRESCRIPTION MAKE-ORD))
     (8 7 (:REWRITE DEFAULT-+-1))
     (5 1 (:DEFINITION SIZE))
     (4 4 (:TYPE-PRESCRIPTION MAKE-SET))
     (4 2 (:DEFINITION VARIABLES))
     (3 1 (:REWRITE O-INFP-O-FINP-O<=))
     (2 2 (:REWRITE MAKE-ORD-EQUAL-4))
     (2 1 (:REWRITE O<=-O-FINP-DEF))
     (2 1 (:REWRITE O-FINP-<))
     (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (2 1 (:REWRITE AC-<))
     (1 1
        (:REWRITE |a < b & b < c  =>  a < c|)))
(STRICT-SUBS)
(SUBSUMPTION-WELL-FOUNDED (125 1 (:REWRITE RENAMING-IMPLIES-RENAMED))
                          (123 1 (:DEFINITION RENAMING))
                          (80 2 (:REWRITE CO-DOMAIN-VAL-MAPCAR))
                          (77 3 (:DEFINITION SETP))
                          (48 1 (:DEFINITION CO-DOMAIN))
                          (31 3 (:DEFINITION MEMBER-EQUAL))
                          (29 15 (:REWRITE DEFAULT-CDR))
                          (26 12 (:REWRITE DEFAULT-CAR))
                          (22 22 (:TYPE-PRESCRIPTION DOMAIN))
                          (22 2 (:REWRITE O-FIRST-EXPT-<))
                          (16 4 (:REWRITE O-P-O-INFP-CAR))
                          (16 2 (:REWRITE O-FIRST-COEFF-<))
                          (16 2 (:DEFINITION DOMAIN))
                          (15 15 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
                          (14 14 (:TYPE-PRESCRIPTION SETP))
                          (12 1 (:DEFINITION VARIABLE-SUBSTITUTION))
                          (10 10
                              (:TYPE-PRESCRIPTION SUBSUMPTION-MEASURE))
                          (7 7 (:TYPE-PRESCRIPTION O-FINP))
                          (6 6 (:REWRITE CONSP-DOMAIN))
                          (6 3 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
                          (5 5
                             (:TYPE-PRESCRIPTION VARIABLE-SUBSTITUTION))
                          (5 2 (:REWRITE O-FINP-<))
                          (5 2 (:REWRITE AC-<))
                          (4 4 (:TYPE-PRESCRIPTION CO-DOMAIN))
                          (4 4 (:REWRITE O-P-DEF-O-FINP-1))
                          (4 2 (:REWRITE O-FIRST-COEFF-DEF-O-FINP))
                          (3 1 (:REWRITE O-INFP-O-FINP-O<=))
                          (3 1 (:REWRITE O-FIRST-EXPT-O-INFP))
                          (2 2 (:REWRITE |a < b & b < c  =>  a < c|))
                          (2 2
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                          (2 1 (:REWRITE O<=-O-FINP-DEF))
                          (2 1 (:REWRITE DEFAULT-<-2))
                          (2 1 (:REWRITE DEFAULT-<-1))
                          (1 1 (:TYPE-PRESCRIPTION VARIABLE-P))
                          (1 1 (:TYPE-PRESCRIPTION RENAMING)))