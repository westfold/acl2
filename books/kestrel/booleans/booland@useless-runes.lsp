(BOOLAND)
(BOOLEANP-OF-BOOLAND)
(BOOLAND-ASSOCIATIVE)
(BOOLAND-COMMUTATIVE)
(BOOLAND-COMMUTATIVE-2)
(BOOLAND-COMBINE-CONSTANTS)
(BOOLAND-COMMUTE-CONSTANT)
(BOOLAND-OF-T
 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(BOOLAND-OF-NON-NIL
 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(BOOLAND-OF-NON-NIL-ARG2
 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL))
 )
(BOOLAND-OF-NIL)
(BOOLAND-OF-NIL-ARG2)
(BOOLAND-SAME
 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (1 1 (:REWRITE BOOLAND-OF-NON-NIL-ARG2))
 (1 1 (:REWRITE BOOLAND-OF-NON-NIL))
 )
(BOOLAND-SAME-2
 (3 3 (:REWRITE BOOLAND-OF-NON-NIL-ARG2))
 (3 3 (:REWRITE BOOLAND-OF-NON-NIL))
 )
(BOOLAND-OF-BOOL-FIX-ARG1
 (3 3 (:REWRITE BOOLAND-OF-NON-NIL-ARG2))
 (3 3 (:REWRITE BOOLAND-OF-NON-NIL))
 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 )
(BOOLAND-OF-BOOL-FIX-ARG2
 (3 1 (:REWRITE BOOL-FIX-WHEN-BOOLEANP))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL-ARG2))
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL))
 )
(IFF-IMPLIES-EQUAL-BOOLAND-1
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL-ARG2))
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL))
 )
(IFF-IMPLIES-EQUAL-BOOLAND-2
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL-ARG2))
 (2 2 (:REWRITE BOOLAND-OF-NON-NIL))
 )
