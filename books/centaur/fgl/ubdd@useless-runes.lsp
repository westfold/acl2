(LEN-OF-OR-LISTS (157 149 (:REWRITE DEFAULT-CDR))
                 (155 81 (:REWRITE DEFAULT-+-2))
                 (81 81 (:REWRITE DEFAULT-+-1))
                 (53 53 (:REWRITE DEFAULT-CAR))
                 (42 22 (:REWRITE DEFAULT-<-1))
                 (40 40 (:TYPE-PRESCRIPTION OR-LISTS))
                 (39 22 (:REWRITE DEFAULT-<-2))
                 (36 19
                     (:REWRITE EQUAL-OF-BOOLEANS-REWRITE)))
(LEN-OF-UBDD-DEPS (230 50 (:REWRITE DEFAULT-+-2))
                  (148 133 (:REWRITE DEFAULT-CDR))
                  (112 112 (:REWRITE DEFAULT-CAR))
                  (103 38 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                  (58 29 (:REWRITE DEFAULT-<-1))
                  (57 29 (:REWRITE DEFAULT-<-2))
                  (54 54 (:TYPE-PRESCRIPTION BOOLEANP))
                  (50 50 (:REWRITE DEFAULT-+-1)))
(LAST-OF-UBDD-DEPS-WHEN-UBDDP-IND)
(LAST-OF-UBDD-DEPS-WHEN-UBDDP (758 132 (:REWRITE DEFAULT-+-2))
                              (481 463 (:REWRITE DEFAULT-CAR))
                              (419 389 (:REWRITE DEFAULT-CDR))
                              (254 132 (:REWRITE DEFAULT-<-2))
                              (228 132 (:REWRITE DEFAULT-<-1))
                              (132 132 (:REWRITE DEFAULT-+-1)))
(LEN-EQUAL-0 (9 5 (:REWRITE DEFAULT-+-2))
             (8 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
             (5 5 (:REWRITE DEFAULT-+-1))
             (4 4 (:REWRITE DEFAULT-CDR)))
(NTH-OF-GTE-LEN (21 13 (:REWRITE DEFAULT-+-2))
                (18 13 (:REWRITE DEFAULT-<-2))
                (13 13 (:REWRITE DEFAULT-<-1))
                (13 13 (:REWRITE DEFAULT-+-1))
                (8 8 (:REWRITE DEFAULT-CDR))
                (5 5 (:REWRITE ZP-OPEN))
                (5 5 (:REWRITE DEFAULT-CAR)))
(NTH-UBDD-DEP-IMPLIES-LESS-THAN-MAX-DEPTH
     (25 1 (:DEFINITION NTH))
     (16 9 (:REWRITE DEFAULT-+-2))
     (10 8 (:REWRITE DEFAULT-<-2))
     (9 9 (:REWRITE DEFAULT-+-1))
     (9 8 (:REWRITE DEFAULT-<-1))
     (8 8 (:REWRITE UBDD-DEPS-OF-ATOM))
     (8 8 (:REWRITE DEFAULT-CDR))
     (6 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-CAR)))
(MAX-DEPTH-WHEN-NOT-CONSP)
(MAX-DEPTH-OF-Q-NOT (64 8 (:REWRITE DEFAULT-+-2))
                    (22 9 (:REWRITE DEFAULT-CDR))
                    (22 9 (:REWRITE DEFAULT-CAR))
                    (18 18 (:REWRITE CONSP-OF-Q-NOT))
                    (16 8 (:REWRITE DEFAULT-<-2))
                    (16 8 (:REWRITE DEFAULT-<-1))
                    (8 8 (:REWRITE DEFAULT-+-1))
                    (8 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE)))
(MAX-DEPTH-OF-Q-AND (134 47 (:REWRITE DEFAULT-<-1))
                    (61 47 (:REWRITE DEFAULT-<-2))
                    (25 25 (:REWRITE DEFAULT-+-2))
                    (25 25 (:REWRITE DEFAULT-+-1))
                    (13 12 (:REWRITE UBDD-DEPS-OF-ATOM))
                    (11 11 (:REWRITE DEFAULT-CAR))
                    (7 7 (:REWRITE DEFAULT-CDR)))
(MAX-DEPTH-OF-Q-OR (134 47 (:REWRITE DEFAULT-<-1))
                   (61 47 (:REWRITE DEFAULT-<-2))
                   (25 25 (:REWRITE DEFAULT-+-2))
                   (25 25 (:REWRITE DEFAULT-+-1))
                   (13 12 (:REWRITE UBDD-DEPS-OF-ATOM))
                   (11 11 (:REWRITE DEFAULT-CAR))
                   (7 7 (:REWRITE DEFAULT-CDR)))
(MAX-DEPTH-OF-Q-XOR (134 47 (:REWRITE DEFAULT-<-1))
                    (61 47 (:REWRITE DEFAULT-<-2))
                    (25 25 (:REWRITE DEFAULT-+-2))
                    (25 25 (:REWRITE DEFAULT-+-1))
                    (13 12 (:REWRITE UBDD-DEPS-OF-ATOM))
                    (11 11 (:REWRITE DEFAULT-CAR))
                    (7 7 (:REWRITE DEFAULT-CDR)))
(MAX-DEPTH-OF-Q-IFF (134 47 (:REWRITE DEFAULT-<-1))
                    (61 47 (:REWRITE DEFAULT-<-2))
                    (25 25 (:REWRITE DEFAULT-+-2))
                    (25 25 (:REWRITE DEFAULT-+-1))
                    (13 12 (:REWRITE UBDD-DEPS-OF-ATOM))
                    (11 11 (:REWRITE DEFAULT-CAR))
                    (7 7 (:REWRITE DEFAULT-CDR)))
(MAX-DEPTH-OF-Q-ITE (25086 222 (:DEFINITION Q-ITE-FN))
                    (14652 666 (:DEFINITION QCONS$INLINE))
                    (10434 2442
                           (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                    (3996 3996 (:TYPE-PRESCRIPTION BOOLEANP))
                    (2220 2220 (:DEFINITION HONS))
                    (1856 1856 (:REWRITE DEFAULT-CAR))
                    (1843 1843 (:REWRITE DEFAULT-CDR))
                    (1776 888 (:DEFINITION QCDR$INLINE))
                    (1776 888 (:DEFINITION QCAR$INLINE))
                    (1776 666 (:DEFINITION HONS-EQUAL))
                    (1554 1554 (:REWRITE |(q-ite non-nil y z)|))
                    (1081 349 (:REWRITE DEFAULT-<-1))
                    (888 222 (:DEFINITION Q-NOT))
                    (493 349 (:REWRITE DEFAULT-<-2))
                    (167 167 (:REWRITE DEFAULT-+-2))
                    (167 167 (:REWRITE DEFAULT-+-1))
                    (82 81 (:REWRITE UBDD-DEPS-OF-ATOM)))
(MAX-DEPTH-OF-QV (46 15 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                 (42 14 (:REWRITE DEFAULT-+-2))
                 (19 14 (:REWRITE DEFAULT-<-1))
                 (18 14 (:REWRITE DEFAULT-<-2))
                 (14 14 (:REWRITE DEFAULT-+-1))
                 (10 5 (:REWRITE DEFAULT-CDR))
                 (10 5 (:REWRITE DEFAULT-CAR))
                 (8 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                 (1 1
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(FGL::UBDDP)
(FGL::MAX-<-BOUND (40 40 (:TYPE-PRESCRIPTION MAX))
                  (8 8
                     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                  (8 4 (:REWRITE DEFAULT-<-2))
                  (8 4 (:REWRITE DEFAULT-<-1)))
(FGL::UBDDP-OF-AIG-NOT (12 3 (:DEFINITION Q-NOT))
                       (7 5 (:REWRITE DEFAULT-<-2))
                       (5 5 (:REWRITE DEFAULT-<-1))
                       (4 4 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                       (3 3 (:REWRITE DEFAULT-CDR))
                       (3 3 (:REWRITE DEFAULT-CAR))
                       (3 3 (:DEFINITION HONS)))
(FGL::UBDDP-OF-AIG-AND (46 22 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                       (32 19 (:REWRITE DEFAULT-<-2))
                       (22 19 (:REWRITE DEFAULT-<-1)))
(FGL::UBDDP-OF-AIG-OR (264 8 (:DEFINITION Q-BINARY-OR))
                      (176 8 (:DEFINITION QCONS$INLINE))
                      (104 24 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                      (48 8 (:DEFINITION HONS-EQUAL))
                      (46 22 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                      (32 32 (:TYPE-PRESCRIPTION BOOLEANP))
                      (32 32 (:REWRITE DEFAULT-CDR))
                      (32 32 (:REWRITE DEFAULT-CAR))
                      (32 19 (:REWRITE DEFAULT-<-2))
                      (24 24 (:DEFINITION HONS))
                      (22 19 (:REWRITE DEFAULT-<-1)))
(FGL::UBDDP-OF-AIG-XOR (328 8 (:DEFINITION Q-BINARY-XOR))
                       (176 8 (:DEFINITION QCONS$INLINE))
                       (104 24 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                       (64 16 (:DEFINITION Q-NOT))
                       (48 48 (:REWRITE DEFAULT-CDR))
                       (48 48 (:REWRITE DEFAULT-CAR))
                       (48 8 (:DEFINITION HONS-EQUAL))
                       (46 22 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                       (40 40 (:DEFINITION HONS))
                       (32 32 (:TYPE-PRESCRIPTION BOOLEANP))
                       (32 19 (:REWRITE DEFAULT-<-2))
                       (22 19 (:REWRITE DEFAULT-<-1)))
(FGL::UBDDP-OF-AIG-IFF (328 8 (:DEFINITION Q-BINARY-IFF))
                       (176 8 (:DEFINITION QCONS$INLINE))
                       (104 24 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                       (64 16 (:DEFINITION Q-NOT))
                       (48 48 (:REWRITE DEFAULT-CDR))
                       (48 48 (:REWRITE DEFAULT-CAR))
                       (48 8 (:DEFINITION HONS-EQUAL))
                       (46 22 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                       (40 40 (:DEFINITION HONS))
                       (32 32 (:TYPE-PRESCRIPTION BOOLEANP))
                       (32 19 (:REWRITE DEFAULT-<-2))
                       (22 19 (:REWRITE DEFAULT-<-1)))
(FGL::UBDDP-OF-AIG-ITE (904 8 (:DEFINITION Q-ITE-FN))
                       (528 24 (:DEFINITION QCONS$INLINE))
                       (376 88 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                       (144 144 (:TYPE-PRESCRIPTION BOOLEANP))
                       (80 80 (:DEFINITION HONS))
                       (64 64 (:REWRITE DEFAULT-CDR))
                       (64 64 (:REWRITE DEFAULT-CAR))
                       (64 32 (:DEFINITION QCDR$INLINE))
                       (64 32 (:DEFINITION QCAR$INLINE))
                       (64 24 (:DEFINITION HONS-EQUAL))
                       (56 56 (:REWRITE |(q-ite non-nil y z)|))
                       (56 29 (:REWRITE DEFAULT-<-2))
                       (54 30 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
                       (49 29 (:REWRITE DEFAULT-<-1))
                       (32 8 (:DEFINITION Q-NOT)))
(FGL::UBDDP-OF-QV (11 11 (:REWRITE DEFAULT-<-2))
                  (11 11 (:REWRITE DEFAULT-<-1))
                  (1 1 (:REWRITE DEFAULT-+-2))
                  (1 1 (:REWRITE DEFAULT-+-1)))
(FGL::UBDDP-WHEN-UBDDP-OF-LESSER (23 19 (:REWRITE DEFAULT-<-2))
                                 (19 19 (:REWRITE DEFAULT-<-1))
                                 (6 6 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP)))
(FGL::UBDDP-OF-NFIX-VAR-BOUND (7 5 (:REWRITE DEFAULT-<-2))
                              (5 5 (:REWRITE DEFAULT-<-1))
                              (2 2 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP)))
(FGL::UBDDP-OF-NFIX-VAR-BOUND-NORMALIZE-CONST)
(FGL::UBDDP-NAT-EQUIV-CONGRUENCE-ON-VAR-BOUND)
(FGL::MAX-DEPTH-FIX)
(FGL::MAX-DEPTH-OF-MAX-DEPTH-FIX
     (562 562
          (:TYPE-PRESCRIPTION FGL::MAX-DEPTH-FIX))
     (329 55 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
     (232 102 (:REWRITE DEFAULT-+-2))
     (110 110 (:TYPE-PRESCRIPTION BOOLEANP))
     (104 67 (:REWRITE DEFAULT-<-2))
     (102 102 (:REWRITE DEFAULT-+-1))
     (88 67 (:REWRITE DEFAULT-<-1))
     (59 56 (:REWRITE DEFAULT-CDR))
     (57 54 (:REWRITE DEFAULT-CAR))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(FGL::MAX-DEPTH-FIX-WHEN-MAX-DEPTH-LESS
     (421 80 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
     (180 47 (:REWRITE DEFAULT-+-2))
     (150 150 (:TYPE-PRESCRIPTION BOOLEANP))
     (135 67 (:REWRITE DEFAULT-<-2))
     (89 67 (:REWRITE DEFAULT-<-1))
     (80 78 (:REWRITE DEFAULT-CAR))
     (74 72 (:REWRITE DEFAULT-CDR))
     (47 47 (:REWRITE DEFAULT-+-1))
     (20 11 (:REWRITE ZP-OPEN))
     (18 6 (:REWRITE FOLD-CONSTS-IN-+)))
(FGL::MAX-DEPTH-FIX-PRESERVES-UBDDP
     (1204 46 (:DEFINITION MAX-DEPTH))
     (772 182
          (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
     (506 46 (:DEFINITION MAX))
     (484 148 (:REWRITE DEFAULT-+-2))
     (450 434 (:REWRITE DEFAULT-CAR))
     (432 432 (:TYPE-PRESCRIPTION BOOLEANP))
     (330 320 (:REWRITE DEFAULT-CDR))
     (255 157 (:REWRITE DEFAULT-<-2))
     (205 157 (:REWRITE DEFAULT-<-1))
     (148 148 (:REWRITE DEFAULT-+-1)))
(FGL::MAX-DEPTH-FIX-OF-NFIX-DEPTH
     (48 8 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
     (30 12
         (:REWRITE FGL::MAX-DEPTH-FIX-WHEN-MAX-DEPTH-LESS))
     (18 18 (:TYPE-PRESCRIPTION UBDDP))
     (16 16 (:TYPE-PRESCRIPTION BOOLEANP))
     (12 4 (:REWRITE FOLD-CONSTS-IN-+))
     (10 4 (:REWRITE ZP-OPEN))
     (7 7 (:REWRITE DEFAULT-<-2))
     (7 7 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFAULT-+-2))
     (6 6 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE DEFAULT-CAR)))
(FGL::MAX-DEPTH-FIX-OF-NFIX-DEPTH-NORMALIZE-CONST)
(FGL::MAX-DEPTH-FIX-NAT-EQUIV-CONGRUENCE-ON-DEPTH)
(FGL::UBDD-FIX)
(FGL::RETURN-TYPE-OF-UBDD-FIX
     (99 5
         (:REWRITE FGL::MAX-DEPTH-FIX-WHEN-MAX-DEPTH-LESS))
     (55 10 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP))
     (20 14 (:REWRITE DEFAULT-<-2))
     (14 14 (:REWRITE DEFAULT-<-1))
     (7 7 (:TYPE-PRESCRIPTION UBDDP))
     (5 5 (:REWRITE UBDDP-UBDD-FIX))
     (5 5
        (:REWRITE FGL::MAX-DEPTH-FIX-OF-NFIX-DEPTH-NORMALIZE-CONST))
     (3 1 (:REWRITE UBDD-FIX-X-IS-X)))
(FGL::UBDD-FIX-WHEN-UBDDP
     (6 4 (:REWRITE DEFAULT-<-2))
     (4 4 (:REWRITE DEFAULT-<-1))
     (3 3
        (:REWRITE FGL::MAX-DEPTH-FIX-OF-NFIX-DEPTH-NORMALIZE-CONST))
     (2 2 (:REWRITE MAX-DEPTH-WHEN-NOT-CONSP)))
(FGL::UBDD-FIX-OF-NFIX-DEPTH)
(FGL::UBDD-FIX-OF-NFIX-DEPTH-NORMALIZE-CONST)
(FGL::UBDD-FIX-NAT-EQUIV-CONGRUENCE-ON-DEPTH)
