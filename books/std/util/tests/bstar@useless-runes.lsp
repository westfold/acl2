(RETURN-TWO-VALUES)
(TRANSL-EQUAL-TESTS-FN)
(PATBIND-TESTS-FN)
(LEN-RESIZE-LIST (24 20 (:REWRITE DEFAULT-+-2))
                 (20 20 (:REWRITE DEFAULT-+-1))
                 (18 17 (:REWRITE DEFAULT-<-1))
                 (17 17 (:REWRITE DEFAULT-<-2))
                 (14 12 (:REWRITE DEFAULT-CDR))
                 (6 6 (:REWRITE DEFAULT-CAR))
                 (1 1
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LOCALSTOBJTEST (37 37 (:REWRITE DEFAULT-<-2))
                (37 37 (:REWRITE DEFAULT-<-1))
                (22 22 (:REWRITE DEFAULT-+-2))
                (22 22 (:REWRITE DEFAULT-+-1))
                (16 8 (:REWRITE DEFAULT-CDR))
                (8 2 (:REWRITE ZP-OPEN))
                (4 2 (:REWRITE DEFAULT-CAR))
                (2 2 (:REWRITE CAR-CONS))
                (2 2 (:DEFINITION UPDATE-NTH-ARRAY)))