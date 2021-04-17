(SYMBOL-TERM-ALISTP)
(SYMBOL-TERM-ALISTP-OF-ACONS
 (320 5 (:DEFINITION PSEUDO-TERMP))
 (125 15 (:DEFINITION LENGTH))
 (100 20 (:DEFINITION LEN))
 (86 86 (:REWRITE DEFAULT-CDR))
 (77 77 (:REWRITE DEFAULT-CAR))
 (45 45 (:TYPE-PRESCRIPTION LEN))
 (40 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (20 10 (:DEFINITION TRUE-LISTP))
 (15 5 (:DEFINITION SYMBOL-LISTP))
 (10 10 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (5 5 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(SYMBOL-TERM-ALISTP-OF-CDR
 (64 1 (:DEFINITION PSEUDO-TERMP))
 (25 3 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (18 18 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE DEFAULT-CAR))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:DEFINITION TRUE-LISTP))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (1 1 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(PSEUDO-TERMP-OF-CDR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP
 (20 4 (:DEFINITION LEN))
 (17 17 (:REWRITE DEFAULT-CDR))
 (17 17 (:REWRITE DEFAULT-CAR))
 (12 6 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (7 1 (:DEFINITION SYMBOL-LISTP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 2 (:DEFINITION TRUE-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 )
(SYMBOL-ALISTP-WHEN-SYMBOL-TERM-ALISTP-CHEAP
 (326 4 (:DEFINITION PSEUDO-TERMP))
 (100 12 (:DEFINITION LENGTH))
 (87 87 (:REWRITE DEFAULT-CAR))
 (80 16 (:DEFINITION LEN))
 (74 74 (:REWRITE DEFAULT-CDR))
 (51 51 (:TYPE-PRESCRIPTION LEN))
 (33 4 (:DEFINITION SYMBOL-LISTP))
 (32 16 (:REWRITE DEFAULT-+-2))
 (22 8 (:DEFINITION TRUE-LISTP))
 (16 16 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (8 8 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 2 (:REWRITE SYMBOL-TERM-ALISTP-OF-CDR))
 (6 6 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(SYMBOL-TERM-ALISTP-FORWARD-TO-SYMBOL-ALISTP)
(CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP
 (144 2 (:DEFINITION PSEUDO-TERMP))
 (50 6 (:DEFINITION LENGTH))
 (40 8 (:DEFINITION LEN))
 (37 37 (:REWRITE DEFAULT-CAR))
 (36 36 (:REWRITE DEFAULT-CDR))
 (24 12 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (16 8 (:REWRITE DEFAULT-+-2))
 (14 2 (:DEFINITION SYMBOL-LISTP))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 4 (:DEFINITION TRUE-LISTP))
 (8 2 (:REWRITE SYMBOL-TERM-ALISTP-OF-CDR))
 (8 2 (:REWRITE PSEUDO-TERMP-OF-CDR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 )
(IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(PSEUDO-TERMP-OF-CDR-OF-ASSOC-EQUAL
 (286 52 (:DEFINITION LEN))
 (226 226 (:REWRITE DEFAULT-CDR))
 (223 220 (:REWRITE DEFAULT-CAR))
 (137 13 (:DEFINITION SYMBOL-LISTP))
 (104 52 (:REWRITE DEFAULT-+-2))
 (102 26 (:DEFINITION TRUE-LISTP))
 (91 47 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (52 52 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (13 13 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (13 13 (:REWRITE DEFAULT-COERCE-2))
 (13 13 (:REWRITE DEFAULT-COERCE-1))
 (8 2 (:REWRITE SYMBOL-TERM-ALISTP-OF-CDR))
 )
(SYMBOL-TERM-ALISTP-OF-PAIRLIS$
 (488 6 (:DEFINITION PSEUDO-TERMP))
 (162 18 (:DEFINITION LENGTH))
 (132 24 (:DEFINITION LEN))
 (126 125 (:REWRITE DEFAULT-CDR))
 (124 121 (:REWRITE DEFAULT-CAR))
 (80 40 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (54 54 (:TYPE-PRESCRIPTION LEN))
 (48 24 (:REWRITE DEFAULT-+-2))
 (48 24 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (36 12 (:DEFINITION TRUE-LISTP))
 (24 24 (:REWRITE DEFAULT-+-1))
 (19 19 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (19 19 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (16 4 (:REWRITE SYMBOL-TERM-ALISTP-OF-CDR))
 (16 4 (:REWRITE PSEUDO-TERMP-OF-CDR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(SYMBOL-TERM-ALISTP-OF-PAIRLIS$-ALT
 (1152 14 (:DEFINITION PSEUDO-TERMP))
 (378 42 (:DEFINITION LENGTH))
 (333 325 (:REWRITE DEFAULT-CDR))
 (323 309 (:REWRITE DEFAULT-CAR))
 (243 27 (:REWRITE SYMBOL-TERM-ALISTP-OF-PAIRLIS$))
 (192 96 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (152 76 (:REWRITE DEFAULT-+-2))
 (112 56 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (104 8 (:REWRITE SYMBOL-TERM-ALISTP-OF-CDR))
 (104 8 (:REWRITE PSEUDO-TERMP-OF-CDR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (84 28 (:DEFINITION TRUE-LISTP))
 (76 76 (:REWRITE DEFAULT-+-1))
 (36 36 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (30 30 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 )
(SYMBOL-TERM-ALISTP-OF-CONS
 (390 5 (:DEFINITION PSEUDO-TERMP))
 (135 15 (:DEFINITION LENGTH))
 (110 20 (:DEFINITION LEN))
 (88 88 (:REWRITE DEFAULT-CDR))
 (79 79 (:REWRITE DEFAULT-CAR))
 (48 24 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (45 45 (:TYPE-PRESCRIPTION LEN))
 (45 5 (:DEFINITION SYMBOL-LISTP))
 (40 20 (:REWRITE DEFAULT-+-2))
 (34 17 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (30 10 (:DEFINITION TRUE-LISTP))
 (20 20 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 2 (:REWRITE SYMBOL-TERM-ALISTP-OF-CDR))
 (8 2 (:REWRITE PSEUDO-TERMP-OF-CDR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (5 5 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (5 5 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (5 5 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
