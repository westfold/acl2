(MODAPP::BADGE-IS-BADGE! (3 1
                            (:REWRITE MODAPP::APPLY$-PRIMP-BADGE)))
(MODAPP::BOOM (1270 575 (:REWRITE DEFAULT-+-2))
              (898 10
                   (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
              (884 7 (:DEFINITION MODAPP::APPLY$-BADGEP))
              (795 575 (:REWRITE DEFAULT-+-1))
              (522 6 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
              (510 57 (:DEFINITION LENGTH))
              (504 6 (:DEFINITION MODAPP::TAMEP))
              (408 102 (:DEFINITION INTEGER-ABS))
              (360 66 (:DEFINITION LEN))
              (346 18 (:REWRITE O<=-O-FINP-DEF))
              (282 3 (:DEFINITION TRUE-LISTP))
              (200 47 (:REWRITE O-P-O-INFP-CAR))
              (181 133 (:REWRITE DEFAULT-<-2))
              (161 133 (:REWRITE DEFAULT-<-1))
              (138 3 (:DEFINITION SUBSETP-EQUAL))
              (120 12 (:DEFINITION MEMBER-EQUAL))
              (102 102 (:REWRITE DEFAULT-UNARY-MINUS))
              (91 11 (:DEFINITION SYMBOL-LISTP))
              (84 84 (:TYPE-PRESCRIPTION LEN))
              (71 18 (:REWRITE AC-<))
              (63 10 (:REWRITE O-FIRST-EXPT-<))
              (57 57 (:REWRITE DEFAULT-COERCE-2))
              (57 57 (:REWRITE DEFAULT-COERCE-1))
              (51 51 (:REWRITE DEFAULT-REALPART))
              (51 51 (:REWRITE DEFAULT-NUMERATOR))
              (51 51 (:REWRITE DEFAULT-IMAGPART))
              (51 51 (:REWRITE DEFAULT-DENOMINATOR))
              (43 20 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
              (42 42 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
              (36 36
                  (:TYPE-PRESCRIPTION MODAPP::SUITABLY-TAMEP-LISTP))
              (36 18 (:REWRITE O-INFP-O-FINP-O<=))
              (28 28
                  (:TYPE-PRESCRIPTION MODAPP::APPLY$-BADGEP))
              (24 12
                  (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
              (23 10 (:REWRITE O-FIRST-COEFF-<))
              (21 3 (:DEFINITION NATP))
              (18 18 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
              (18 18
                  (:REWRITE |a < b & b < c  =>  a < c|))
              (18 3 (:DEFINITION ALL-NILS))
              (15 15 (:TYPE-PRESCRIPTION ALL-NILS))
              (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
              (12 12 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
              (12 12 (:TYPE-PRESCRIPTION O-FINP))
              (12 6
                  (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES))
              (8 8 (:REWRITE ZP-OPEN))
              (3 3 (:TYPE-PRESCRIPTION BOOLEANP)))
(FLAG::FLAG-EQUIV-LEMMA)
(MODAPP::BOOM-EQUIVALENCES)
(MODAPP::FLAG-LEMMA-FOR-TAMEP-IS-TAMEP!
     (1764 421 (:REWRITE O-P-O-INFP-CAR))
     (1033 145 (:DEFINITION LEN))
     (501 421 (:REWRITE O-P-DEF-O-FINP-1))
     (326 181 (:REWRITE DEFAULT-+-2))
     (187 187 (:TYPE-PRESCRIPTION LEN))
     (181 181 (:REWRITE DEFAULT-+-1))
     (124 25 (:REWRITE ZP-OPEN))
     (80 80 (:TYPE-PRESCRIPTION O-FINP))
     (68 68 (:REWRITE DEFAULT-COERCE-2))
     (68 68 (:REWRITE DEFAULT-COERCE-1))
     (33 21 (:REWRITE DEFAULT-<-2))
     (27 9 (:REWRITE FOLD-CONSTS-IN-+))
     (21 21 (:REWRITE DEFAULT-<-1))
     (6 6
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6
        (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1)))
(MODAPP::TAMEP-IS-TAMEP!)
(MODAPP::TAMEP-FUNCTIONP-IS-TAMEP-FUNCTIONP!)
(MODAPP::SUITABLY-TAMEP-LISTP-IS-SUITABLY-TAMEP-LISTP!)
(MODAPP::BANG (63618 30589 (:REWRITE DEFAULT-+-2))
              (41294 30589 (:REWRITE DEFAULT-+-1))
              (27085 3272 (:DEFINITION LENGTH))
              (25368 6342 (:DEFINITION INTEGER-ABS))
              (18683 3605 (:REWRITE O-P-O-INFP-CAR))
              (12770 9908 (:REWRITE DEFAULT-<-1))
              (11858 9908 (:REWRITE DEFAULT-<-2))
              (8926 103
                    (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 1))
              (8780 73 (:DEFINITION MODAPP::APPLY$-BADGEP))
              (7906 3586 (:REWRITE O-P-DEF-O-FINP-1))
              (6342 6342 (:REWRITE DEFAULT-UNARY-MINUS))
              (5220 60 (:REWRITE MODAPP::TAMEP-IMPLICANT-1))
              (5100 60 (:REWRITE MODAPP::TAMEP-IS-TAMEP!))
              (4320 4320 (:TYPE-PRESCRIPTION O-FINP))
              (3624 492 (:DEFINITION SYMBOL-LISTP))
              (3272 3272 (:REWRITE DEFAULT-COERCE-2))
              (3272 3272 (:REWRITE DEFAULT-COERCE-1))
              (3171 3171 (:REWRITE DEFAULT-REALPART))
              (3171 3171 (:REWRITE DEFAULT-NUMERATOR))
              (3171 3171 (:REWRITE DEFAULT-IMAGPART))
              (3171 3171 (:REWRITE DEFAULT-DENOMINATOR))
              (2820 30 (:DEFINITION TRUE-LISTP))
              (2548 364 (:DEFINITION MODAPP::NATS))
              (1456 364 (:REWRITE ZP-OPEN))
              (1314 30 (:DEFINITION SUBSETP-EQUAL))
              (1134 120 (:DEFINITION MEMBER-EQUAL))
              (1128 183
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
              (283 283
                   (:TYPE-PRESCRIPTION MODAPP::APPLY$-BADGEP))
              (240 120
                   (:REWRITE MODAPP::APPLY$-BADGEP-PROPERTIES . 2))
              (223 31 (:DEFINITION NATP))
              (180 180 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
              (180 30 (:DEFINITION ALL-NILS))
              (150 150 (:TYPE-PRESCRIPTION ALL-NILS))
              (120 120 (:TYPE-PRESCRIPTION TRUE-LISTP))
              (120 120 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
              (120 60
                   (:LINEAR MODAPP::APPLY$-BADGEP-PROPERTIES))
              (97 47 (:REWRITE O-INFP->NEQ-0))
              (64 2 (:TYPE-PRESCRIPTION RETURN-LAST))
              (60 60 (:TYPE-PRESCRIPTION MODAPP::TAMEP))
              (30 30 (:TYPE-PRESCRIPTION BOOLEANP))
              (15 1 (:REWRITE O<=-O-FINP-DEF))
              (14 1 (:REWRITE O-FINP-<))
              (6 1 (:REWRITE O-FIRST-EXPT-<))
              (4 2 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
              (3 1 (:REWRITE AC-<))
              (2 2
                 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
              (2 1 (:REWRITE O-INFP-O-FINP-O<=))
              (2 1 (:REWRITE O-FIRST-COEFF-<))
              (1 1
                 (:REWRITE |a < b & b < c  =>  a < c|)))
(FLAG::FLAG-EQUIV-LEMMA)
(MODAPP::BANG-EQUIVALENCES)
(MODAPP::LEN-PROW (78 75 (:REWRITE DEFAULT-CDR))
                  (69 35 (:REWRITE DEFAULT-+-2))
                  (36 12 (:REWRITE MODAPP::APPLY$-PRIMITIVE))
                  (35 35 (:REWRITE DEFAULT-+-1))
                  (24 24
                      (:TYPE-PRESCRIPTION MODAPP::APPLY$-PRIMP))
                  (24 24 (:REWRITE DEFAULT-CAR))
                  (18 9 (:REWRITE DEFAULT-<-1))
                  (17 9 (:REWRITE DEFAULT-<-2)))
(MODAPP::FLAG-LEMMA-FOR-APPLY$!-IS-APPLY$
     (117136 109318 (:REWRITE DEFAULT-CDR))
     (65372 60118 (:REWRITE DEFAULT-CAR))
     (61898 13896 (:REWRITE O-P-O-INFP-CAR))
     (33397 4666 (:DEFINITION SYMBOL-LISTP))
     (20266 13868 (:REWRITE O-P-DEF-O-FINP-1))
     (16070 279 (:REWRITE O<=-O-FINP-DEF))
     (11562 6410 (:REWRITE DEFAULT-+-2))
     (8582 1260 (:DEFINITION MODAPP::NATS))
     (7101 6410 (:REWRITE DEFAULT-+-1))
     (6024 1698 (:REWRITE ZP-OPEN))
     (5242 439 (:DEFINITION PAIRLIS$))
     (5132 5132 (:TYPE-PRESCRIPTION O-FINP))
     (3254 374 (:DEFINITION ASSOC-EQUAL))
     (1994 1700 (:REWRITE DEFAULT-<-2))
     (1994 1700 (:REWRITE DEFAULT-<-1))
     (1825 1753
           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1430 289 (:DEFINITION MODAPP::SQUARE))
     (1305 1305 (:REWRITE DEFAULT-COERCE-2))
     (1305 1305 (:REWRITE DEFAULT-COERCE-1))
     (1240 555 (:REWRITE DEFAULT-*-2))
     (1154 541 (:REWRITE DEFAULT-*-1))
     (837 279 (:REWRITE AC-<))
     (720 256 (:REWRITE MODAPP::APPLY$-FOLDR))
     (558 279 (:REWRITE O-INFP-O-FINP-O<=))
     (540 196 (:REWRITE MODAPP::APPLY$-SUMLIST))
     (540 196 (:REWRITE MODAPP::APPLY$-PROW*))
     (540 196 (:REWRITE MODAPP::APPLY$-PROW))
     (540 196 (:REWRITE MODAPP::APPLY$-COLLECT-A))
     (464 464
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-FOLDR))
     (447 149 (:REWRITE MODAPP::APPLY$-NATS))
     (380 380
          (:META MODAPP::APPLY$-PRIM-META-FN-CORRECT))
     (344 344
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-SUMLIST))
     (344 344
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-PROW*))
     (344 344
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-PROW))
     (344 344
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-COLLECT-A))
     (298 298
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-NATS))
     (279 279
          (:REWRITE |a < b & b < c  =>  a < c|))
     (159 53
          (:REWRITE MODAPP::APPLY$-SUM-OF-PRODUCTS))
     (152 76 (:REWRITE MODAPP::APPLY$-SQUARE))
     (106 106
          (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-SUM-OF-PRODUCTS))
     (91 91 (:TYPE-PRESCRIPTION ZP))
     (76 76
         (:TYPE-PRESCRIPTION MODAPP::APPLY$-WARRANT-SQUARE))
     (36 6 (:REWRITE O-FIRST-EXPT-<))
     (24 12 (:REWRITE O-FIRST-EXPT-DEF-O-FINP))
     (13 13 (:DEFINITION ENDP))
     (12 6 (:REWRITE O-FIRST-COEFF-<))
     (8 8 (:DEFINITION EQ))
     (6 6 (:TYPE-PRESCRIPTION PAIRLIS$)))
(MODAPP::APPLY$!-IS-APPLY$)
(MODAPP::EV$!-IS-EV$)
(MODAPP::EV$!-LIST-IS-EV$-LIST)
(MODAPP::SUMLIST!-IS-SUMLIST)
(MODAPP::FOLDR!-IS-FOLDR)
(MODAPP::PROW!-IS-PROW)
(MODAPP::PROW*!-IS-PROW*)
(MODAPP::COLLECT-A!-IS-COLLECT-A)
(MODAPP::SUM-OF-PRODUCTS!-IS-SUM-OF-PRODUCTS)
(MODAPP::APPLY$-USERFN1!-IS-APPLY$-USERFN)
(MODAPP::APPLY$-LAMBDA!-IS-APPLY$-LAMBDA (22 2 (:DEFINITION PAIRLIS$))
                                         (12 2 (:REWRITE O-P-O-INFP-CAR))
                                         (10 10 (:REWRITE DEFAULT-CDR))
                                         (8 8 (:REWRITE DEFAULT-CAR))
                                         (6 2 (:REWRITE O-P-DEF-O-FINP-1))
                                         (4 4 (:TYPE-PRESCRIPTION O-P))
                                         (4 4 (:TYPE-PRESCRIPTION O-FINP))
                                         (2 2 (:REWRITE MODAPP::EV$-OPENER)))