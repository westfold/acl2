(MD-NAME)
(MD-INS)
(MD-OUTS)
(MD-STS)
(MD-OCCS)
(OCC-NAME)
(OCC-OUTS)
(OCC-FN)
(OCC-INS)
(OCC-SYNTAX-OKP)
(OCC-NAME-INFO)
(OCC-OUTS-INFO)
(OCC-FN-INFO)
(OCC-INS-INFO)
(CONS-SIZE-OCC-LESSP-EQL (840 328 (:REWRITE DEFAULT-+-2))
                         (468 328 (:REWRITE DEFAULT-+-1))
                         (50 18 (:REWRITE DEFAULT-<-1))
                         (30 18 (:REWRITE DEFAULT-<-2)))
(CONS-SIZE-OCC-LESSP (571 211 (:REWRITE DEFAULT-+-2))
                     (312 211 (:REWRITE DEFAULT-+-1))
                     (57 14 (:REWRITE DEFAULT-<-2))
                     (22 14 (:REWRITE DEFAULT-<-1)))
(OCCS-SYNTAX-OKP)
(MODULE-SYNTAX-OKP)
(MD-NAME-INFO)
(MD-INS-INFO)
(MD-OUTS-INFO)
(MD-STS-INFO)
(MD-OCCS-INFO)
(CONS-SIZE-MD-LESSP-EQL (1472 558 (:REWRITE DEFAULT-+-2))
                        (802 558 (:REWRITE DEFAULT-+-1))
                        (75 25 (:REWRITE DEFAULT-<-1))
                        (40 25 (:REWRITE DEFAULT-<-2)))
(CONS-SIZE-MD-LESSP (932 331 (:REWRITE DEFAULT-+-2))
                    (492 331 (:REWRITE DEFAULT-+-1))
                    (85 19 (:REWRITE DEFAULT-<-1))
                    (28 19 (:REWRITE DEFAULT-<-2)))
(NET-SYNTAX-OKP)
(OCC-SYNTAX-OKP-FORWARD)
(ALISTP-SYMBOL-LISTP-SYMBOL-ALISTP-ARE-TRUE-LIST)
(MODULE-SYNTAX-OKP-FORWARD)
(NET-SYNTAX-OKP-FORWARD-TO-SYMBOL-ALISTP
     (281 11
          (:REWRITE ALISTP-SYMBOL-LISTP-SYMBOL-ALISTP-ARE-TRUE-LIST))
     (142 142 (:REWRITE DEFAULT-CDR))
     (130 130 (:REWRITE DEFAULT-CAR))
     (105 25 (:DEFINITION SYMBOL-LISTP))
     (96 96
         (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
     (96 12 (:DEFINITION NO-DUPLICATESP-EQUAL))
     (53 11 (:DEFINITION ALISTP))
     (36 12 (:DEFINITION MEMBER-EQUAL))
     (32 8 (:REWRITE MD-STS-INFO))
     (32 8 (:REWRITE MD-OUTS-INFO))
     (32 8 (:REWRITE MD-OCCS-INFO))
     (32 8 (:REWRITE MD-INS-INFO))
     (16 4 (:DEFINITION OCCS-SYNTAX-OKP))
     (12 12 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (4 4 (:TYPE-PRESCRIPTION OCC-SYNTAX-OKP)))
(NET-SYNTAX-OKP-FORWARD-TO-ALISTP)
(NET-SYNTAX-OKP-DELETE-EQ-MODULE-NETLIST (25 25 (:REWRITE DEFAULT-CAR))
                                         (12 12 (:REWRITE DEFAULT-CDR)))
(ASSOC-EQ-OF-NON-FN-NETLIST)
(TRUE-LISTP-ASSOC-EQ-FN-NETLIST
     (319 8
          (:REWRITE ALISTP-SYMBOL-LISTP-SYMBOL-ALISTP-ARE-TRUE-LIST))
     (175 4 (:DEFINITION TRUE-LISTP))
     (102 11 (:DEFINITION SYMBOL-LISTP))
     (91 91 (:REWRITE DEFAULT-CAR))
     (87 6
         (:REWRITE SYMBOL-LISTP-CDR-ASSOC-EQUAL))
     (72 72 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
     (69 6 (:DEFINITION SYMBOL-LIST-LISTP))
     (64 8 (:DEFINITION SYMBOL-ALISTP))
     (48 8 (:DEFINITION ALISTP))
     (47 47 (:REWRITE DEFAULT-CDR))
     (30 30
         (:TYPE-PRESCRIPTION SYMBOL-LIST-LISTP)))
(ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL
     (3 1 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (1 1 (:TYPE-PRESCRIPTION NET-SYNTAX-OKP))
     (1 1 (:DEFINITION NET-SYNTAX-OKP)))
(ASSOC-EQ-OF-NETLIST-IS-MODULE-OKP
     (152 24
          (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (82 82 (:REWRITE DEFAULT-CAR))
     (14 14 (:REWRITE DEFAULT-CDR)))
(NET-SYNTAX-OKP-FORWARD-TO-SOMETHING
     (51 3 (:DEFINITION ASSOC-EQUAL))
     (43 6 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (28 4 (:DEFINITION NET-SYNTAX-OKP))
     (13 13 (:REWRITE DEFAULT-CAR))
     (7 7 (:REWRITE DEFAULT-CDR))
     (6 6
        (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL)))
(ASSOC-EQ-FN-OF-NON-EMPTY-NETLIST-IS-CONSP (152 152 (:REWRITE DEFAULT-CAR))
                                           (91 91 (:REWRITE DEFAULT-CDR)))
(NOT-CDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE
     (17 1 (:DEFINITION ASSOC-EQUAL))
     (12 2 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (12 2 (:DEFINITION NET-SYNTAX-OKP))
     (5 5 (:REWRITE DEFAULT-CAR))
     (4 4 (:REWRITE DEFAULT-CDR))
     (3 3
        (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
     (2 2
        (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL)))
(NOT-CDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE
     (34 2 (:DEFINITION ASSOC-EQUAL))
     (24 4 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (23 2
         (:REWRITE NOT-CDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
     (20 3 (:DEFINITION NET-SYNTAX-OKP))
     (9 9 (:REWRITE DEFAULT-CAR))
     (9 8 (:REWRITE DEFAULT-CDR))
     (5 5
        (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
     (4 4
        (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL)))
(NOT-CDDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE
     (51 3 (:DEFINITION ASSOC-EQUAL))
     (36 6 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (28 4 (:DEFINITION NET-SYNTAX-OKP))
     (26 2
         (:REWRITE NOT-CDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
     (24 3
         (:REWRITE NOT-CDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
     (15 13 (:REWRITE DEFAULT-CDR))
     (13 13 (:REWRITE DEFAULT-CAR))
     (7 7
        (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
     (6 6
        (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL)))
(NOT-CDDDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE
     (68 4 (:DEFINITION ASSOC-EQUAL))
     (48 8 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
     (36 5 (:DEFINITION NET-SYNTAX-OKP))
     (28 2
         (:REWRITE NOT-CDDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
     (27 3
         (:REWRITE NOT-CDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
     (25 4
         (:REWRITE NOT-CDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
     (22 19 (:REWRITE DEFAULT-CDR))
     (17 17 (:REWRITE DEFAULT-CAR))
     (9 9
        (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
     (8 8
        (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL)))
