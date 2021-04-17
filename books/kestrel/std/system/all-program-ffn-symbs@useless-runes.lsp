(ALL-PROGRAM-FFN-SYMBS
 (442 193 (:REWRITE DEFAULT-+-2))
 (270 193 (:REWRITE DEFAULT-+-1))
 (165 3 (:REWRITE ACL2-COUNT-WHEN-MEMBER))
 (144 36 (:DEFINITION INTEGER-ABS))
 (144 18 (:DEFINITION LENGTH))
 (126 6 (:REWRITE SUBSETP-CAR-MEMBER))
 (90 18 (:DEFINITION LEN))
 (87 3 (:DEFINITION MEMBER-EQUAL))
 (84 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (60 43 (:REWRITE DEFAULT-<-2))
 (47 43 (:REWRITE DEFAULT-<-1))
 (36 36 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (36 36 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (18 18 (:REWRITE SUBSETP-TRANS2))
 (18 18 (:REWRITE SUBSETP-TRANS))
 (18 18 (:REWRITE DEFAULT-REALPART))
 (18 18 (:REWRITE DEFAULT-NUMERATOR))
 (18 18 (:REWRITE DEFAULT-IMAGPART))
 (18 18 (:REWRITE DEFAULT-DENOMINATOR))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (18 18 (:REWRITE DEFAULT-COERCE-1))
 (15 15 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 )
(ALL-PROGRAM-FFN-SYMBS-FLAG
 (642 289 (:REWRITE DEFAULT-+-2))
 (404 289 (:REWRITE DEFAULT-+-1))
 (224 56 (:DEFINITION INTEGER-ABS))
 (224 28 (:DEFINITION LENGTH))
 (140 28 (:DEFINITION LEN))
 (105 6 (:DEFINITION MEMBER-EQUAL))
 (92 68 (:REWRITE DEFAULT-<-2))
 (84 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (77 68 (:REWRITE DEFAULT-<-1))
 (56 56 (:REWRITE DEFAULT-UNARY-MINUS))
 (28 28 (:TYPE-PRESCRIPTION LEN))
 (28 28 (:REWRITE DEFAULT-REALPART))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-IMAGPART))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (28 28 (:REWRITE DEFAULT-COERCE-2))
 (28 28 (:REWRITE DEFAULT-COERCE-1))
 (28 28 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (19 19 (:REWRITE SUBSETP-TRANS2))
 (19 19 (:REWRITE SUBSETP-TRANS))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (12 12 (:REWRITE SUBSETP-MEMBER . 2))
 (12 12 (:REWRITE SUBSETP-MEMBER . 1))
 (12 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (6 6 (:TYPE-PRESCRIPTION ADD-TO-SET-EQUAL))
 (3 3 (:REWRITE MEMBER-SELF))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(ALL-PROGRAM-FFN-SYMBS-FLAG-EQUIVALENCES)
(FLAG-LEMMA-FOR-RETURN-TYPE-OF-ALL-PROGRAM-FFN-SYMBS.FINAL-ANS
 (7226 688 (:REWRITE SUBSETP-CAR-MEMBER))
 (6651 346 (:DEFINITION MEMBER-EQUAL))
 (4381 154 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP))
 (2386 456 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (2351 1787 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (2065 1787 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (1803 1803 (:REWRITE SUBSETP-TRANS2))
 (1803 1803 (:REWRITE SUBSETP-TRANS))
 (1590 170 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (1386 150 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (1183 1183 (:REWRITE DEFAULT-CAR))
 (900 150 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (776 511 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (693 693 (:REWRITE SUBSETP-MEMBER . 2))
 (300 300 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (300 150 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (156 78 (:REWRITE DEFAULT-+-2))
 (150 150 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (150 150 (:REWRITE SET::IN-SET))
 (102 102 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (83 83 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (78 78 (:REWRITE DEFAULT-+-1))
 (63 2 (:REWRITE SUBSETP-OF-CONS))
 (28 28 (:REWRITE SUBSETP-MEMBER . 4))
 (28 28 (:REWRITE INTERSECTP-MEMBER . 3))
 (28 28 (:REWRITE INTERSECTP-MEMBER . 2))
 (26 26 (:REWRITE MEMBER-WHEN-ATOM))
 (16 16 (:REWRITE ARITIES-OKP-IMPLIES-LOGICP))
 )
(RETURN-TYPE-OF-ALL-PROGRAM-FFN-SYMBS.FINAL-ANS
 (2 2 (:TYPE-PRESCRIPTION ALL-PROGRAM-FFN-SYMBS))
 )
(RETURN-TYPE-OF-ALL-PROGRAM-FFN-SYMBS-LST.FINAL-ANS
 (2 2 (:TYPE-PRESCRIPTION ALL-PROGRAM-FFN-SYMBS-LST))
 )
(ALL-PROGRAM-FFN-SYMBS
 (2062 126 (:REWRITE SYMBOLP-WHEN-MEMBER-EQUAL-OF-SYMBOL-LISTP))
 (1330 136 (:REWRITE SUBSETP-CAR-MEMBER))
 (1241 70 (:DEFINITION MEMBER-EQUAL))
 (1088 61 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP))
 (585 71 (:REWRITE TRUE-LISTP-WHEN-SYMBOL-LISTP-REWRITE))
 (430 430 (:REWRITE DEFAULT-CAR))
 (426 71 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (426 67 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (405 81 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (371 371 (:REWRITE DEFAULT-CDR))
 (312 294 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (298 298 (:REWRITE SUBSETP-TRANS2))
 (298 298 (:REWRITE SUBSETP-TRANS))
 (294 294 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (252 6 (:DEFINITION ALL-PROGRAM-FFN-SYMBS))
 (205 187 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (142 142 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (142 71 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (140 140 (:REWRITE SUBSETP-MEMBER . 2))
 (140 140 (:REWRITE SUBSETP-MEMBER . 1))
 (82 41 (:REWRITE DEFAULT-+-2))
 (71 71 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (71 71 (:REWRITE SET::IN-SET))
 (41 41 (:REWRITE DEFAULT-+-1))
 (37 37 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (36 36 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (25 1 (:REWRITE SUBSETP-OF-CONS))
 (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:REWRITE SUBSETP-MEMBER . 4))
 (16 16 (:REWRITE SUBSETP-MEMBER . 3))
 (16 16 (:REWRITE MEMBER-WHEN-ATOM))
 (16 16 (:REWRITE INTERSECTP-MEMBER . 3))
 (16 16 (:REWRITE INTERSECTP-MEMBER . 2))
 (9 9 (:REWRITE ARITIES-OKP-IMPLIES-LOGICP))
 )
