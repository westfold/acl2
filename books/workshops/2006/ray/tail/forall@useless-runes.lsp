(NEXT)
(ASSERTION)
(CUTPOINT)
(ASSERTION-IS-BOOLEAN)
(CUTPOINT-IS-BOOLEAN)
(RUN)
(NO-CUTPOINT)
(DEL-LAST)
(SCHED-TO-CUTPOINT)
(INV)
(INV-NECC)
(NEXT-INV)
(NEXT-INV-NECC)
(CUTPOINT-IMPLIES-INV-=-ASSERTION (8 2 (:DEFINITION DEL-LAST))
                                  (6 6 (:REWRITE DEFAULT-CDR))
                                  (4 4 (:REWRITE DEFAULT-CAR)))
(NO-CUTPOINT-NEXT-REDUCTION (3 3 (:REWRITE DEFAULT-CDR))
                            (3 3 (:REWRITE DEFAULT-CAR)))
(RUN-NEXT-IS-CONS (3 3 (:REWRITE DEFAULT-CDR))
                  (3 3 (:REWRITE DEFAULT-CAR)))
(NOT-CUTPOINT-AND-INV-IMPLIES-INV-NEXT-AUX
     (18 17 (:REWRITE DEFAULT-CDR))
     (14 13 (:REWRITE DEFAULT-CAR))
     (3 3
        (:REWRITE CUTPOINT-IMPLIES-INV-=-ASSERTION)))
(NOT-CUTPOINT-AND-INV-IMPLIES-INV-NEXT
     (21 21 (:REWRITE DEFAULT-CDR))
     (16 16 (:REWRITE DEFAULT-CAR))
     (15 11
         (:REWRITE CUTPOINT-IMPLIES-INV-=-ASSERTION))
     (11 11 (:REWRITE INV-NECC)))
(NOT-CUTPOINT-AND-INV-IMPLIES-NEXT-INV)
(NOT-CONSP-TO-RUN)
(NOT-CUTPOINT-TO-SCHED-NEXT (25 24 (:REWRITE DEFAULT-CDR))
                            (19 18 (:REWRITE DEFAULT-CAR)))
(SCHED-TO-CUTPOINT-IMPLIES-CONSP)
(NOT-INV-TO-NOT-NEXT-INV (8 8 (:REWRITE DEFAULT-CAR))
                         (7 3
                            (:REWRITE CUTPOINT-IMPLIES-INV-=-ASSERTION))
                         (6 6 (:REWRITE NOT-CONSP-TO-RUN))
                         (6 6 (:REWRITE DEFAULT-CDR))
                         (3 3 (:REWRITE INV-NECC)))
(NOT-CUTPOINT-IMPLIES-INV=NEXT-INV
     (1 1 (:REWRITE INV-NECC))
     (1 1
        (:REWRITE CUTPOINT-IMPLIES-INV-=-ASSERTION)))
(INV-DEFINITION (1 1 (:REWRITE INV-NECC)))
