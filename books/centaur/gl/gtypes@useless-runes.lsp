(GL::GOBJECT-HIERARCHY-LITE
     (1323 501
           (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
     (810 810 (:TYPE-PRESCRIPTION BOOLEANP))
     (397 397 (:REWRITE GL::TAG-WHEN-ATOM))
     (94 94
         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
     (50 50 (:REWRITE DEFAULT-CDR))
     (45 45 (:REWRITE DEFAULT-CAR))
     (22 11
         (:REWRITE CONSP-OF-CAR-WHEN-ATOM-LISTP))
     (11 11 (:TYPE-PRESCRIPTION ATOM-LISTP)))
(GL::CROCK (328 110
                (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
           (188 188 (:TYPE-PRESCRIPTION BOOLEANP))
           (178 178 (:REWRITE GL::TAG-WHEN-ATOM))
           (28 28
               (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
           (6 6 (:REWRITE DEFAULT-CDR))
           (6 6 (:REWRITE DEFAULT-CAR)))
(GL::GOBJECT-HIERARCHY-LITE-MEMOIZE-CONDITION
     (5 5
        (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL)))
(GL::GOBJECT-HIERARCHY-LITE-MEMOIZE-CONDITION)
(GL::CONCRETE-GOBJECTP)
(MK-G-CONCRETE (1 1 (:TYPE-PRESCRIPTION MK-G-CONCRETE)))
(GL::G-CONCRETE-QUOTE
     (11 11
         (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL)))
(MK-G-ITE (11 11
              (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL)))
(MK-G-BOOLEAN)
(MK-G-INTEGER)
(GL::GL-LIST-MACRO)
(GL::GOBJ-LISTP
     (8 8
        (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL)))
(GL::GOBJ-LISTP-OF-GL-CONS
     (33 31
         (:TYPE-PRESCRIPTION GL::NOT-G-KEYWORD-SYMBOL-WHEN-NOT-SYMBOL))
     (8 6 (:REWRITE DEFAULT-CDR))
     (8 6 (:REWRITE DEFAULT-CAR))
     (6 6
        (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP)))
(GL::GOBJ-DEPENDS-ON (268 8 (:DEFINITION ACL2-COUNT))
                     (84 40 (:REWRITE DEFAULT-+-2))
                     (56 56 (:TYPE-PRESCRIPTION ACL2-COUNT))
                     (56 40 (:REWRITE DEFAULT-+-1))
                     (40 4 (:DEFINITION LENGTH))
                     (32 8 (:REWRITE COMMUTATIVITY-OF-+))
                     (32 8 (:DEFINITION INTEGER-ABS))
                     (28 4 (:DEFINITION LEN))
                     (16 16
                         (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
                     (12 12 (:REWRITE FOLD-CONSTS-IN-+))
                     (12 12 (:REWRITE DEFAULT-CDR))
                     (12 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
                     (8 8 (:TYPE-PRESCRIPTION BOOLEANP))
                     (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
                     (8 8 (:REWRITE DEFAULT-CAR))
                     (8 8 (:REWRITE DEFAULT-<-2))
                     (8 8 (:REWRITE DEFAULT-<-1))
                     (4 4 (:TYPE-PRESCRIPTION LEN))
                     (4 4 (:REWRITE GL::TAG-WHEN-ATOM))
                     (4 4 (:REWRITE DEFAULT-REALPART))
                     (4 4 (:REWRITE DEFAULT-NUMERATOR))
                     (4 4 (:REWRITE DEFAULT-IMAGPART))
                     (4 4 (:REWRITE DEFAULT-DENOMINATOR))
                     (4 4 (:REWRITE DEFAULT-COERCE-2))
                     (4 4 (:REWRITE DEFAULT-COERCE-1)))