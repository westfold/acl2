(OCC-ARITY-OKP (220 28 (:DEFINITION NET-SYNTAX-OKP))
               (191 22
                    (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
               (187 11 (:DEFINITION ASSOC-EQUAL))
               (119 74 (:REWRITE DEFAULT-CDR))
               (114 11
                    (:REWRITE NOT-CDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
               (108 12 (:DEFINITION LEN))
               (70 6
                   (:REWRITE NOT-CDDR-ASSOC-EQ-FN-NETLIST-IMPLIES-NO-MODULE))
               (62 62 (:REWRITE DEFAULT-CAR))
               (55 55
                   (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
               (24 12 (:REWRITE DEFAULT-+-2))
               (22 22
                   (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL))
               (12 12 (:REWRITE DEFAULT-+-1))
               (4 4
                  (:REWRITE CONSP-ASSOC-EQ-PRIMP-VALUES))
               (2 2 (:TYPE-PRESCRIPTION ATOM)))
(OCC-ARITY-OKP-FORWARD (122 12
                            (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
                       (102 6 (:DEFINITION ASSOC-EQUAL))
                       (88 11 (:DEFINITION NET-SYNTAX-OKP))
                       (55 55 (:TYPE-PRESCRIPTION NET-SYNTAX-OKP))
                       (39 35 (:REWRITE DEFAULT-CDR))
                       (29 29 (:REWRITE DEFAULT-CAR))
                       (28 14 (:REWRITE DEFAULT-+-2))
                       (22 22
                           (:TYPE-PRESCRIPTION MODULE-SYNTAX-OKP))
                       (14 14 (:REWRITE DEFAULT-+-1))
                       (12 12
                           (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL))
                       (4 4
                          (:REWRITE CONSP-ASSOC-EQ-PRIMP-VALUES)))
(OCCS-ARITY-OKP (2 2 (:REWRITE DEFAULT-CAR))
                (1 1 (:REWRITE DEFAULT-CDR)))
(MODULE-ARITY-OKP)
(NET-ARITY-OKP (66 6 (:REWRITE ASSOC-EQ-OF-NON-FN-NETLIST))
               (51 3 (:DEFINITION ASSOC-EQUAL))
               (40 40 (:REWRITE DEFAULT-CAR))
               (28 28 (:REWRITE DEFAULT-CDR))
               (6 6
                  (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL))
               (6 2 (:DEFINITION ALISTP))
               (5 1 (:DEFINITION SYMBOL-ALISTP)))
(NET-ARITY-OKP-FORWARD (68 4 (:DEFINITION ASSOC-EQUAL))
                       (29 29 (:REWRITE DEFAULT-CAR))
                       (22 22 (:REWRITE DEFAULT-CDR))
                       (9 9
                          (:REWRITE ASSOC-EQ-FN-OF-EMPTY-NETLIST-IS-NIL)))
(MODULE-ARITY-OKP-OF-SOMETHING-GROSS!!!
     (127 127 (:REWRITE DEFAULT-CAR))
     (56 44 (:REWRITE DEFAULT-CDR))
     (12 12 (:TYPE-PRESCRIPTION ASSOC-EQ-REST)))
(NET-ARITY-OKP-OF-DELETE-EQ-MODULE (125 125 (:REWRITE DEFAULT-CAR))
                                   (58 58 (:REWRITE DEFAULT-CDR)))
(MODULE-ARITY-OKP-OF-SOMETHING-GROSS-2!!! (127 127 (:REWRITE DEFAULT-CAR))
                                          (42 42 (:REWRITE DEFAULT-CDR)))
(OCCS-ARITY-OKP-MD-OCCS-ASSOC-EQ-FN-NETLIST)
(TRUE-LISTP-STS-LIST-OF-MODULE)
