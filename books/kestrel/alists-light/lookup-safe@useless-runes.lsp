(LOOKUP-SAFE (12 12 (:REWRITE DEFAULT-CAR))
             (10 2 (:DEFINITION ASSOC-EQUAL))
             (6 6 (:REWRITE DEFAULT-CDR))
             (5 1 (:DEFINITION EQLABLE-ALISTP)))
(LOOKUP-SAFE-BECOMES-LOOKUP-EQUAL (10 2 (:DEFINITION ASSOC-EQUAL))
                                  (6 6 (:REWRITE DEFAULT-CAR))
                                  (4 4 (:REWRITE DEFAULT-CDR)))
