(FALSIFIER-POS-TEMP)
(POS=1+TEMP-AUXLILLARY-PROPERTY-1
     (104 100 (:REWRITE DEFAULT-CAR))
     (88 44 (:REWRITE DEFAULT-+-2))
     (54 52 (:REWRITE DEFAULT-CDR))
     (44 44
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (44 44 (:REWRITE DEFAULT-+-1)))
(POS=1+TEMP-AUXILLIARY-PROPERTY-2
     (100 92 (:REWRITE DEFAULT-CAR))
     (54 27 (:REWRITE DEFAULT-+-2))
     (48 46 (:REWRITE DEFAULT-CDR))
     (28 1
         (:REWRITE POS=1+TEMP-AUXLILLARY-PROPERTY-1))
     (27 27
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (27 27 (:REWRITE DEFAULT-+-1))
     (21 21
         (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
     (21 21
         (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER)))
(INV-P-P-IMPLIES-POS=1+TEMP (13 7 (:REWRITE DEFAULT-+-2))
                            (9 8 (:REWRITE DEFAULT-<-2))
                            (9 8 (:REWRITE DEFAULT-<-1))
                            (8 8
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (7 7 (:REWRITE DEFAULT-+-1)))
(INV-P-KEYS-IMPLIES-INV-P-P
     (1657 1657
           (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
     (1657 1657
           (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
     (1101 1101 (:REWRITE DEFAULT-CAR))
     (736 736 (:REWRITE DEFAULT-CDR))
     (676 52
          (:REWRITE NOT-MEMBERP-PREVIOUS-REDUCTION))
     (664 166
          (:REWRITE MY-SUBSETP-PREVIOUS-REDUCTION))
     (538 295 (:REWRITE DEFAULT-+-2))
     (364 296 (:REWRITE DEFAULT-<-1))
     (335 335
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (320 296 (:REWRITE DEFAULT-<-2))
     (295 295 (:REWRITE DEFAULT-+-1))
     (281 281
          (:REWRITE INV-P-P-IMPLIES-POS=1+TEMP)))
(INV-P-KEYS-TO-POS=1+TEMP-AUX
     (5 1 (:DEFINITION MEMBERP))
     (2 2
        (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
     (2 2
        (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
     (1 1 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE DEFAULT-CAR)))
(MY-SUBSETP-TO-LARGER)
(INV-P-KEYS-TO-POS=1+TEMP-AUX-FOR-QUEUE
     (5 1 (:DEFINITION MEMBERP))
     (2 2
        (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
     (2 2
        (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
     (1 1 (:REWRITE MY-SUBSETP-IS-TRANSITIVE))
     (1 1 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE DEFAULT-CAR)))
(INV-P-KEYS-IMPLIES-POS=1+TEMP
     (116 7 (:DEFINITION FALSIFIER-POS-TEMP))
     (55 7
         (:REWRITE INV-P-KEYS-TO-POS=1+TEMP-AUX))
     (24 24 (:REWRITE DEFAULT-CDR))
     (24 24 (:REWRITE DEFAULT-CAR))
     (14 7 (:REWRITE DEFAULT-+-2))
     (8 8
        (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER-SYMMETRIC))
     (8 8
        (:REWRITE DISJOINT-IMPLIES-ONE-NOT-MEMBER))
     (7 7
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (7 7 (:REWRITE INV-P-P-IMPLIES-POS=1+TEMP))
     (7 7 (:REWRITE DEFAULT-+-1))
     (4 1
        (:REWRITE INV-P-KEYS-TO-POS=1+TEMP-AUX-FOR-QUEUE)))
