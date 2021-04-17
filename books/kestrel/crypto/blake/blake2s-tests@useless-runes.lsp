(BLAKE::HEX-CHAR-TO-VAL)
(BLAKE::NATP-OF-MV-NTH-1-OF-HEX-CHAR-TO-VAL
 (14 13 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-CHAR-CODE))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BLAKE::<-16-OF-MV-NTH-1-OF-HEX-CHAR-TO-VAL
 (8 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-CHAR-CODE))
 )
(BLAKE::HEX-CHARS-TO-BYTES
 (94 43 (:REWRITE DEFAULT-+-2))
 (61 43 (:REWRITE DEFAULT-+-1))
 (60 4 (:DEFINITION LENGTH))
 (48 4 (:DEFINITION LEN))
 (47 35 (:REWRITE DEFAULT-CDR))
 (32 8 (:DEFINITION INTEGER-ABS))
 (21 21 (:REWRITE DEFAULT-CAR))
 (16 8 (:REWRITE STR::CONSP-OF-EXPLODE))
 (12 12 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (12 9 (:REWRITE DEFAULT-<-2))
 (10 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (6 3 (:DEFINITION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 2 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (4 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(BLAKE::ALL-UNSIGNED-BYTE-P-OF-MV-NTH-1-OF-HEX-CHARS-TO-BYTES
 (326 17 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (207 25 (:DEFINITION REVAPPEND))
 (151 133 (:REWRITE DEFAULT-CDR))
 (118 11 (:REWRITE REVERSE-REMOVAL))
 (107 89 (:REWRITE DEFAULT-CAR))
 (91 17 (:DEFINITION TRUE-LISTP))
 (82 41 (:REWRITE DEFAULT-+-2))
 (82 41 (:REWRITE DEFAULT-+-1))
 (67 67 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (50 25 (:REWRITE DEFAULT-*-2))
 (30 30 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (30 18 (:REWRITE STR::CONSP-OF-EXPLODE))
 (25 25 (:REWRITE DEFAULT-*-1))
 (14 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (12 12 (:REWRITE CDR-CONS))
 (11 1 (:DEFINITION MEMBER-EQUAL))
 (9 3 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (6 6 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:REWRITE CAR-CONS))
 (5 5 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (3 3 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 )
(BLAKE::TRUE-LISTP-OF-MV-NTH-1-OF-HEX-CHARS-TO-BYTES
 (59 53 (:REWRITE DEFAULT-CDR))
 (35 35 (:TYPE-PRESCRIPTION BLAKE::NATP-OF-MV-NTH-1-OF-HEX-CHAR-TO-VAL))
 (33 27 (:REWRITE DEFAULT-CAR))
 (28 14 (:REWRITE DEFAULT-+-2))
 (28 14 (:REWRITE DEFAULT-+-1))
 (26 2 (:REWRITE REV-OF-CONS))
 (22 11 (:DEFINITION TRUE-LISTP))
 (22 2 (:DEFINITION BINARY-APPEND))
 (14 7 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE DEFAULT-*-1))
 (6 6 (:REWRITE CONSP-OF-REV))
 (5 5 (:REWRITE REV-WHEN-NOT-CONSP))
 )
(BLAKE::HEX-STRING-TO-BYTES)
(BLAKE::ALL-UNSIGNED-BYTE-P-OF-MV-NTH-1-OF-HEX-STRING-TO-BYTES
 (1 1 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 )
(BLAKE::TRUE-LISTP-OF-MV-NTH-1-OF-HEX-STRING-TO-BYTES)
(BLAKE::RUN-PARSED-BLAKE2S-TEST
 (34 22 (:REWRITE DEFAULT-<-1))
 (24 22 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE DEFAULT-CDR))
 (16 8 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 2 (:DEFINITION STRIP-CARS))
 (4 4 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
 )
(BLAKE::RUN-PARSED-BLAKE2S-TESTS)
(BLAKE::RUN-BLAKE2S-TESTS
 (12 4 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (9 9 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (6 3 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-+-1))
 )
