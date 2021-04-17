(STR::ICHAREQV$INLINE)
(STR::ICHAREQV-IS-AN-EQUIVALENCE)
(STR::CHAREQV-REFINES-ICHAREQV)
(STR::L1
 (12 12 (:TYPE-PRESCRIPTION STR::UP-ALPHA-P$INLINE))
 (12 4 (:REWRITE STR::DOWNCASE-CHAR-DOES-NOTHING-UNLESS-UP-ALPHA-P))
 (12 2 (:REWRITE STR::UPCASE-CHAR-DOES-NOTHING-UNLESS-DOWN-ALPHA-P))
 (6 2 (:REWRITE STR::DOWN-ALPHA-P-WHEN-UP-ALPHA-P))
 (4 4 (:TYPE-PRESCRIPTION STR::DOWN-ALPHA-P$INLINE))
 )
(STR::L2
 (24 4 (:REWRITE STR::UPCASE-CHAR-DOES-NOTHING-UNLESS-DOWN-ALPHA-P))
 (12 12 (:TYPE-PRESCRIPTION STR::UP-ALPHA-P$INLINE))
 (12 4 (:REWRITE STR::DOWN-ALPHA-P-WHEN-UP-ALPHA-P))
 (8 8 (:TYPE-PRESCRIPTION STR::DOWN-ALPHA-P$INLINE))
 (6 2 (:REWRITE STR::DOWNCASE-CHAR-DOES-NOTHING-UNLESS-UP-ALPHA-P))
 )
(STR::EQUAL-OF-UPCASE-CHAR-AND-UPCASE-CHAR
 (12 2 (:REWRITE STR::UPCASE-CHAR-DOES-NOTHING-UNLESS-DOWN-ALPHA-P))
 (8 8 (:TYPE-PRESCRIPTION STR::UP-ALPHA-P$INLINE))
 (6 2 (:REWRITE STR::DOWNCASE-CHAR-DOES-NOTHING-UNLESS-UP-ALPHA-P))
 (6 2 (:REWRITE STR::DOWN-ALPHA-P-WHEN-UP-ALPHA-P))
 (4 4 (:TYPE-PRESCRIPTION STR::DOWN-ALPHA-P$INLINE))
 )
(STR::ICHAREQV-IMPLIES-EQUAL-DOWNCASE-CHAR-1)
(STR::ICHAREQV-IMPLIES-EQUAL-UPCASE-CHAR-1)
(STR::ICHAREQV-IMPLIES-EQUAL-UPCASE-CHAR-STR-1
 (12 12 (:TYPE-PRESCRIPTION STR::UP-ALPHA-P$INLINE))
 (12 4 (:REWRITE STR::DOWNCASE-CHAR-DOES-NOTHING-UNLESS-UP-ALPHA-P))
 (12 2 (:REWRITE STR::UPCASE-CHAR-DOES-NOTHING-UNLESS-DOWN-ALPHA-P))
 (6 2 (:REWRITE STR::DOWN-ALPHA-P-WHEN-UP-ALPHA-P))
 (4 4 (:TYPE-PRESCRIPTION STR::DOWN-ALPHA-P$INLINE))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 )
(STR::ICHAREQV-IMPLIES-EQUAL-DOWNCASE-CHAR-STR-1
 (12 4 (:REWRITE STR::DOWNCASE-CHAR-DOES-NOTHING-UNLESS-UP-ALPHA-P))
 (8 8 (:TYPE-PRESCRIPTION STR::UP-ALPHA-P$INLINE))
 )
(STR::ICHARLISTEQV
 (24 2 (:DEFINITION CHARACTER-LISTP))
 (10 10 (:REWRITE CONSP-BY-LEN))
 (8 8 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(STR::ICHARLISTEQV-IS-AN-EQUIVALENCE
 (242 242 (:REWRITE DEFAULT-CAR))
 (221 221 (:REWRITE CONSP-BY-LEN))
 (144 144 (:REWRITE DEFAULT-CDR))
 (46 46 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(STR::CHARLISTEQV-REFINES-ICHARLISTEQV
 (105 10 (:DEFINITION LEN))
 (48 48 (:REWRITE CONSP-BY-LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-CDR))
 (16 16 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (13 1 (:REWRITE LEFT-CANCELLATION-FOR-+))
 (12 12 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-+-1))
 (10 5 (:REWRITE STR::CHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (4 2 (:DEFINITION FIX))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHAREQV-CAR-1
 (3 3 (:REWRITE CONSP-BY-LEN))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-CDR-1
 (3 3 (:REWRITE CONSP-BY-LEN))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(STR::ICHAREQV-IMPLIES-ICHARLISTEQV-CONS-1
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-CONS-2
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE CONSP-BY-LEN))
 )
(STR::ICHARLISTEQV-IMPLIES-EQUAL-LEN-1
 (28 28 (:REWRITE CONSP-BY-LEN))
 (14 14 (:REWRITE DEFAULT-CAR))
 (12 6 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE CONSP-OF-CDR-BY-LEN))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-LIST-FIX-1)
(STR::ICHARLISTEQV-IMPLIES-ICHAREQV-NTH-2
 (148 14 (:DEFINITION LEN))
 (74 22 (:REWRITE NEGATIVE-WHEN-NATP))
 (53 53 (:REWRITE CONSP-BY-LEN))
 (40 8 (:REWRITE NATP-RW))
 (36 26 (:REWRITE DEFAULT-<-2))
 (36 20 (:REWRITE DEFAULT-+-2))
 (30 26 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (24 24 (:TYPE-PRESCRIPTION NATP))
 (24 24 (:REWRITE DEFAULT-CDR))
 (20 20 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (20 20 (:REWRITE DEFAULT-+-1))
 (20 18 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (2 2 (:REWRITE |(< 0 (len x))|))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-NTHCDR-2
 (581 21 (:REWRITE CONSP-OF-NTHCDR))
 (501 80 (:REWRITE DEFAULT-CDR))
 (366 34 (:DEFINITION LEN))
 (343 6 (:REWRITE CAR-OF-NTHCDR))
 (277 12 (:REWRITE NTH-WHEN-BIGGER))
 (258 6 (:DEFINITION NTH))
 (208 30 (:DEFINITION NFIX))
 (189 68 (:REWRITE LEN-WHEN-ATOM))
 (166 166 (:REWRITE CONSP-BY-LEN))
 (166 35 (:REWRITE ZP-OPEN))
 (155 145 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (134 42 (:REWRITE NEGATIVE-WHEN-NATP))
 (116 116 (:TYPE-PRESCRIPTION LEN))
 (114 74 (:REWRITE DEFAULT-+-2))
 (108 88 (:REWRITE DEFAULT-<-1))
 (106 88 (:REWRITE DEFAULT-<-2))
 (85 85 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (80 74 (:REWRITE DEFAULT-+-1))
 (60 12 (:REWRITE NATP-RW))
 (58 58 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (57 19 (:REWRITE <-0-+-NEGATIVE-1))
 (36 36 (:TYPE-PRESCRIPTION NATP))
 (32 32 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE OPEN-SMALL-NTHCDR))
 (20 20 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (20 8 (:REWRITE FOLD-CONSTS-IN-+))
 (9 9 (:TYPE-PRESCRIPTION NFIX))
 (6 2 (:REWRITE <-0-+-NEGATIVE-2))
 (2 2 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-TAKE-2
 (296 28 (:DEFINITION LEN))
 (266 12 (:REWRITE TAKE-OF-LEN-FREE))
 (111 111 (:REWRITE CONSP-BY-LEN))
 (90 52 (:REWRITE DEFAULT-CDR))
 (76 44 (:REWRITE DEFAULT-+-2))
 (54 54 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (50 10 (:REWRITE NATP-RW))
 (49 49 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (44 44 (:REWRITE DEFAULT-+-1))
 (43 33 (:REWRITE DEFAULT-<-2))
 (42 6 (:REWRITE CAR-OF-TAKE))
 (38 26 (:REWRITE DEFAULT-CAR))
 (38 15 (:REWRITE CONSP-OF-TAKE))
 (37 33 (:REWRITE DEFAULT-<-1))
 (30 30 (:TYPE-PRESCRIPTION NATP))
 (24 12 (:REWRITE TAKE-WHEN-ATOM))
 (20 11 (:REWRITE ZP-OPEN))
 (12 12 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (6 6 (:REWRITE EQUAL-CONSTANT-+))
 (6 2 (:REWRITE <-0-+-NEGATIVE-1))
 (4 4 (:REWRITE REPEAT-WHEN-ZP))
 (2 2 (:REWRITE |(< 0 (len x))|))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-APPEND-1
 (84 84 (:REWRITE CONSP-BY-LEN))
 (80 18 (:REWRITE DEFAULT-CDR))
 (54 27 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (51 15 (:REWRITE CONSP-OF-APPEND))
 (46 30 (:REWRITE DEFAULT-CAR))
 (34 6 (:REWRITE CAR-OF-APPEND))
 (27 27 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (27 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (17 10 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (14 14 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (14 6 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-APPEND-2
 (84 22 (:REWRITE DEFAULT-CDR))
 (77 77 (:REWRITE CONSP-BY-LEN))
 (54 27 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (46 15 (:REWRITE CONSP-OF-APPEND))
 (42 30 (:REWRITE DEFAULT-CAR))
 (32 6 (:REWRITE CAR-OF-APPEND))
 (27 27 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (27 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (20 10 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (11 11 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (10 6 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-REV-1
 (237 237 (:REWRITE CONSP-BY-LEN))
 (223 75 (:REWRITE DEFAULT-CAR))
 (212 69 (:REWRITE DEFAULT-CDR))
 (110 5 (:DEFINITION BINARY-APPEND))
 (55 10 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (35 35 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (25 5 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
 (10 10 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 )
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-REVAPPEND-2)
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-REVAPPEND-1)
(STR::ICHARLISTEQV-IMPLIES-ICHARLISTEQV-MAKE-CHARACTER-LIST-1)
(STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT
 (3 3 (:REWRITE CONSP-BY-LEN))
 )
(STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT
 (4 4 (:REWRITE CONSP-BY-LEN))
 (2 1 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 )
(STR::ICHARLISTEQV-OF-CONS-RIGHT
 (20 20 (:REWRITE CONSP-BY-LEN))
 (19 6 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (13 6 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (9 9 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(STR::ICHARLISTEQV-OF-CONS-LEFT
 (20 20 (:REWRITE CONSP-BY-LEN))
 (19 6 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (13 6 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (11 11 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS)
(STR::ISTREQV-AUX
 (727 20 (:REWRITE NTH-WHEN-BIGGER))
 (485 86 (:REWRITE LEN-WHEN-ATOM))
 (223 51 (:REWRITE DEFAULT-CDR))
 (197 197 (:REWRITE CONSP-BY-LEN))
 (182 137 (:REWRITE DEFAULT-+-2))
 (138 137 (:REWRITE DEFAULT-+-1))
 (114 82 (:REWRITE DEFAULT-<-1))
 (100 82 (:REWRITE DEFAULT-<-2))
 (62 2 (:REWRITE CHARACTERP-NTH))
 (60 12 (:REWRITE DEFAULT-CAR))
 (59 59 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (33 33 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (20 4 (:REWRITE |(< 0 (len x))|))
 (14 14 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (12 4 (:REWRITE STR::DOWNCASE-CHAR-DOES-NOTHING-UNLESS-UP-ALPHA-P))
 (8 8 (:TYPE-PRESCRIPTION STR::UP-ALPHA-P$INLINE))
 (8 8 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (2 2 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE CHARACTER-LISTP-OF-EXPLODE))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 )
(STR::LEMMA
 (438 7 (:REWRITE LEN-OF-NTHCDR))
 (373 321 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (338 91 (:REWRITE DEFAULT-CDR))
 (250 150 (:REWRITE DEFAULT-+-2))
 (225 27 (:REWRITE NATP-RW))
 (218 45 (:REWRITE ZP-OPEN))
 (205 205 (:REWRITE CONSP-BY-LEN))
 (200 152 (:REWRITE DEFAULT-<-2))
 (190 152 (:REWRITE DEFAULT-<-1))
 (163 150 (:REWRITE DEFAULT-+-1))
 (129 7 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (118 118 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (92 46 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (83 83 (:TYPE-PRESCRIPTION NATP))
 (81 27 (:REWRITE <-0-+-NEGATIVE-1))
 (40 8 (:REWRITE <-+-NEGATIVE-0-2))
 (28 12 (:REWRITE FOLD-CONSTS-IN-+))
 (25 25 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (22 22 (:REWRITE OPEN-SMALL-NTHCDR))
 (18 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 (13 13 (:REWRITE DEFAULT-CAR))
 (11 2 (:REWRITE <-+-NEGATIVE-0-1))
 (7 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE POSP-NATP))
 (2 2 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 (2 2 (:REWRITE |(< 0 (len x))|))
 (1 1 (:REWRITE EQUAL-CONSTANT-+))
 )
(STR::LEMMA2
 (4348 76 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (1165 42 (:REWRITE CONSP-OF-NTHCDR))
 (1018 593 (:REWRITE DEFAULT-+-2))
 (955 955 (:REWRITE CONSP-BY-LEN))
 (750 12 (:REWRITE LEN-OF-NTHCDR))
 (711 683 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (679 679 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (627 593 (:REWRITE DEFAULT-+-1))
 (620 143 (:REWRITE ZP-OPEN))
 (543 408 (:REWRITE DEFAULT-<-2))
 (518 408 (:REWRITE DEFAULT-<-1))
 (512 76 (:REWRITE NATP-RW))
 (444 61 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (361 274 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (329 329 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (232 75 (:REWRITE <-0-+-NEGATIVE-1))
 (100 20 (:REWRITE <-+-NEGATIVE-0-2))
 (70 70 (:REWRITE DEFAULT-CAR))
 (64 64 (:REWRITE OPEN-SMALL-NTHCDR))
 (63 63 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 (47 47 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (36 6 (:REWRITE STR::LEMMA))
 (26 2 (:REWRITE COMMUTATIVITY-2-OF-+))
 (24 6 (:REWRITE <-+-NEGATIVE-0-1))
 (16 8 (:REWRITE POSP-NATP))
 (16 4 (:REWRITE NATP-POSP))
 (14 2 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE EQUAL-CONSTANT-+))
 (6 2 (:REWRITE |(< 0 (len x))|))
 (4 4 (:TYPE-PRESCRIPTION POSP))
 (4 4 (:REWRITE POSP-RW))
 (2 2 (:REWRITE-QUOTED-CONSTANT FIX-UNDER-NUMBER-EQUIV))
 )
(STR::ISTREQV-AUX-REMOVAL
 (2033 60 (:REWRITE NTH-WHEN-BIGGER))
 (1320 230 (:REWRITE LEN-WHEN-ATOM))
 (945 180 (:REWRITE DEFAULT-CDR))
 (548 548 (:REWRITE CONSP-BY-LEN))
 (373 239 (:REWRITE DEFAULT-+-2))
 (321 5 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (251 239 (:REWRITE DEFAULT-+-1))
 (240 240 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (239 36 (:REWRITE NTHCDR-WHEN-ZP))
 (205 120 (:REWRITE DEFAULT-<-2))
 (186 36 (:REWRITE NTHCDR-WHEN-ATOM))
 (149 120 (:REWRITE DEFAULT-<-1))
 (78 78 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (78 22 (:REWRITE DEFAULT-CAR))
 (62 62 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 (52 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (36 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (23 23 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (18 18 (:REWRITE OPEN-SMALL-NTHCDR))
 (16 4 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE CONSP-OF-CDDDR-BY-LEN))
 (6 6 (:REWRITE NATP-RW))
 (3 3 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 )
(STR::ISTREQV$INLINE
 (129 24 (:REWRITE LEN-WHEN-ATOM))
 (64 2 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (60 12 (:REWRITE DEFAULT-CDR))
 (49 49 (:REWRITE CONSP-BY-LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (12 2 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (12 2 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (5 5 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 )
(STR::ISTREQV-IS-AN-EQUIVALENCE)
(STR::STREQV-REFINES-ISTREQV)
(STR::ISTREQV-IMPLIES-ICHAREQV-CHAR-1
 (117 4 (:REWRITE NTH-WHEN-BIGGER))
 (106 2 (:DEFINITION NTH))
 (83 5 (:DEFINITION LEN))
 (63 1 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (56 10 (:REWRITE LEN-WHEN-ATOM))
 (48 48 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (27 17 (:REWRITE STR::CONSP-OF-EXPLODE))
 (27 7 (:REWRITE DEFAULT-CDR))
 (26 26 (:REWRITE CONSP-BY-LEN))
 (19 3 (:DEFINITION NFIX))
 (12 7 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE NEGATIVE-WHEN-NATP))
 (10 10 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (10 2 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (8 5 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-+-1))
 (7 5 (:REWRITE DEFAULT-<-1))
 (6 1 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (6 1 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (5 1 (:REWRITE NATP-RW))
 (4 4 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (3 3 (:TYPE-PRESCRIPTION NATP))
 (3 3 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE CONSP-OF-CDDR-BY-LEN))
 )
(STR::ISTREQV-IMPLIES-ICHARLISTEQV-EXPLODE-1)
(STR::ISTREQV-IMPLIES-ISTREQV-STRING-APPEND-1
 (230 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (152 8 (:DEFINITION LEN))
 (108 4 (:DEFINITION BINARY-APPEND))
 (100 2 (:REWRITE LEN-OF-APPEND))
 (94 55 (:REWRITE STR::CONSP-OF-EXPLODE))
 (86 16 (:REWRITE LEN-WHEN-ATOM))
 (67 67 (:REWRITE CONSP-BY-LEN))
 (60 12 (:REWRITE DEFAULT-CDR))
 (48 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (48 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (43 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (38 8 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (36 4 (:REWRITE CONSP-OF-APPEND))
 (34 34 (:TYPE-PRESCRIPTION LEN))
 (20 10 (:REWRITE DEFAULT-+-2))
 (20 4 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (12 12 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (12 10 (:REWRITE DEFAULT-+-1))
 (4 4 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 )
(STR::ISTREQV-IMPLIES-ISTREQV-STRING-APPEND-2
 (230 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-SAME-LENS))
 (152 8 (:DEFINITION LEN))
 (108 4 (:DEFINITION BINARY-APPEND))
 (100 2 (:REWRITE LEN-OF-APPEND))
 (94 55 (:REWRITE STR::CONSP-OF-EXPLODE))
 (86 16 (:REWRITE LEN-WHEN-ATOM))
 (67 67 (:REWRITE CONSP-BY-LEN))
 (60 12 (:REWRITE DEFAULT-CDR))
 (48 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-RIGHT))
 (48 4 (:REWRITE STR::ICHARLISTEQV-WHEN-NOT-CONSP-LEFT))
 (43 8 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (38 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (36 4 (:REWRITE CONSP-OF-APPEND))
 (34 34 (:TYPE-PRESCRIPTION LEN))
 (20 10 (:REWRITE DEFAULT-+-2))
 (20 4 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (12 12 (:REWRITE CONSP-OF-CDR-BY-LEN))
 (12 10 (:REWRITE DEFAULT-+-1))
 (4 4 (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
 )
