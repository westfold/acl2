(ROOTED-AT-BRANCH)
(NODE-TO-NODE
 (140 3 (:REWRITE SUBSET-REV-FLATTEN-SUBSET-MYTIPS))
 (49 3 (:REWRITE SUBSET-X-SUBSET-REV))
 (30 9 (:REWRITE PERM-WHEN-NOT-CONSP))
 (26 8 (:REWRITE SUBSET-WHEN-NOT-CONS))
 (23 4 (:REWRITE TASPIP-NIL-AND-CONSP-GIVES-TASPIP-FLG))
 (22 19 (:REWRITE DEFAULT-CDR))
 (21 3 (:REWRITE PERM-REV-FIX-TRUE))
 (18 18 (:TYPE-PRESCRIPTION TASPI-FLATTEN))
 (18 18 (:TYPE-PRESCRIPTION PERM))
 (18 3 (:DEFINITION TRUE-LIST-FIX))
 (17 3 (:REWRITE GOOD-INDEX-FLATTEN-TASPIP))
 (12 12 (:REWRITE GET-TAXA-FROM-TAXON-INDEX-WHEN-NOT-CONSP))
 (12 9 (:REWRITE DEFAULT-CAR))
 (10 10 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (10 2 (:DEFINITION TRUE-LISTP))
 (9 9 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (9 9 (:REWRITE TASPI-FLATTEN-WHEN-NOT-CONSP))
 (8 8 (:REWRITE SUBSET-APPEND-GIVES-2))
 (8 8 (:REWRITE SUBSET-APPEND-GIVES-1))
 (6 6 (:TYPE-PRESCRIPTION TASPI-REV))
 (6 6 (:REWRITE MYTIPS-WHEN-NOT-CONSP))
 (6 3 (:REWRITE TASPI-REV-WHEN-NOT-CONSP))
 (4 4 (:REWRITE TASPIP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE TIP-P-GIVES-TASPIP-T))
 (3 3 (:REWRITE TASPIP-FLG-CONSP-GIVES-TASPIP-NIL))
 (3 3 (:REWRITE NOT-INTERSECT-TOPS-NOT-SUBSET))
 (3 3 (:REWRITE CONSP-REV-FLATTEN))
 (2 2 (:TYPE-PRESCRIPTION TIP-P))
 (1 1 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE TASPIP-FLG-AND-FLG-GIVES-T))
 (1 1 (:REWRITE GOOD-TAXON-INDEX-HALIST-WHEN-NOT-CONSP))
 )
(BRANCH-TO-NODE
 (5 5 (:TYPE-PRESCRIPTION ORDERLY-APPEND))
 )
(NUM-MOVES)
(MV-ROOT-HELPER
 (424 9 (:REWRITE SUBSET-REV-FLATTEN-SUBSET-MYTIPS))
 (330 27 (:REWRITE PERM-IMPLIES-SUBSET))
 (204 48 (:REWRITE TASPIP-NIL-AND-CONSP-GIVES-TASPIP-FLG))
 (149 9 (:REWRITE SUBSET-X-SUBSET-REV))
 (124 112 (:REWRITE DEFAULT-CAR))
 (96 48 (:REWRITE DEFAULT-+-2))
 (90 27 (:REWRITE SUBSET-WHEN-NOT-CONS))
 (90 27 (:REWRITE PERM-WHEN-NOT-CONSP))
 (81 70 (:REWRITE DEFAULT-CDR))
 (63 9 (:REWRITE PERM-REV-FIX-TRUE))
 (54 54 (:TYPE-PRESCRIPTION TASPI-FLATTEN))
 (54 54 (:TYPE-PRESCRIPTION PERM))
 (54 54 (:TYPE-PRESCRIPTION MYTIPS))
 (54 9 (:DEFINITION TRUE-LIST-FIX))
 (48 48 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (48 48 (:REWRITE DEFAULT-+-1))
 (38 38 (:REWRITE TASPIP-WHEN-NOT-CONSP))
 (37 19 (:REWRITE TIP-P-GIVES-TASPIP-T))
 (36 36 (:REWRITE GET-TAXA-FROM-TAXON-INDEX-WHEN-NOT-CONSP))
 (29 29 (:REWRITE TASPIP-FLG-CONSP-GIVES-TASPIP-NIL))
 (29 29 (:REWRITE GOOD-INDEX-FLATTEN-TASPIP))
 (27 27 (:TYPE-PRESCRIPTION TRUE-LIST-FIX))
 (27 27 (:REWRITE TASPI-FLATTEN-WHEN-NOT-CONSP))
 (27 27 (:REWRITE SUBSET-TRANSITIVE))
 (27 27 (:REWRITE SUBSET-APPEND-GIVES-2))
 (27 27 (:REWRITE SUBSET-APPEND-GIVES-1))
 (19 19 (:REWRITE TASPIP-FLG-AND-FLG-GIVES-T))
 (18 18 (:TYPE-PRESCRIPTION TASPI-REV))
 (18 18 (:REWRITE MYTIPS-WHEN-NOT-CONSP))
 (18 9 (:REWRITE TASPI-REV-WHEN-NOT-CONSP))
 (14 6 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (14 6 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (12 12 (:TYPE-PRESCRIPTION TIP-P))
 (10 5 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE NOT-INTERSECT-TOPS-NOT-SUBSET))
 (9 9 (:REWRITE CONSP-REV-FLATTEN))
 (7 7 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (7 7 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (6 6 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (6 6 (:REWRITE |(< (- x) (- y))|))
 (6 5 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
 (4 4 (:REWRITE ORDERLY-APPEND-WHEN-NOT-CONSP))
 (4 4 (:REWRITE |(< 0 (- x))|))
 (4 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (4 2 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (4 2 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE |(< d (+ c x))|))
 (3 1 (:REWRITE |(< (+ d x) (+ c y))|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 )
(MV-ROOT)
(MV-ROOT-LIST)
(TASPIP-THROUGH-APP
 (133 130 (:REWRITE TASPIP-FLG-CONSP-GIVES-TASPIP-NIL))
 (130 130 (:REWRITE GOOD-INDEX-FLATTEN-TASPIP))
 (100 100 (:TYPE-PRESCRIPTION APP))
 (49 14 (:REWRITE TIP-P-NOT-INTEGER-GIVES-SYMBOLP))
 (43 9 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (22 22 (:TYPE-PRESCRIPTION TIP-P))
 (16 4 (:REWRITE TIP-P-GIVES-TASPIP-T))
 (9 9 (:REWRITE REDUCE-INTEGERP-+))
 (9 9 (:REWRITE INTEGERP-MINUS-X))
 (9 9 (:META META-INTEGERP-CORRECT))
 (5 5 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-CDR))
 )
(CONSP-THROUG-APP
 (134 134 (:TYPE-PRESCRIPTION APP))
 (7 7 (:REWRITE APP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(TO-NIL
 (39 10 (:REWRITE TASPIP-NIL-AND-CONSP-GIVES-TASPIP-FLG))
 (11 6 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE TASPIP-FLG-CONSP-GIVES-TASPIP-NIL))
 (10 10 (:REWRITE GOOD-INDEX-FLATTEN-TASPIP))
 (8 4 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (8 4 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (8 4 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 6 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (6 6 (:REWRITE NORMALIZE-ADDENDS))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (4 4 (:REWRITE |(equal (- x) 0)|))
 (4 4 (:REWRITE |(equal (- x) (- y))|))
 )
(TASPIP-NEITHER-INT-SYM-CONS
 (7 2 (:REWRITE TASPIP-NIL-AND-CONSP-GIVES-TASPIP-FLG))
 (3 1 (:REWRITE TIP-P-GIVES-TASPIP-T))
 (1 1 (:TYPE-PRESCRIPTION TIP-P))
 (1 1 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE TASPIP-FLG-CONSP-GIVES-TASPIP-NIL))
 (1 1 (:REWRITE TASPIP-FLG-AND-FLG-GIVES-T))
 (1 1 (:REWRITE GOOD-INDEX-FLATTEN-TASPIP))
 )
(LEN-APP-GREATER
 (27 16 (:REWRITE DEFAULT-CDR))
 (24 13 (:REWRITE DEFAULT-+-2))
 (23 11 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (19 10 (:REWRITE SIMPLIFY-SUMS-<))
 (19 10 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (19 10 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (19 10 (:REWRITE DEFAULT-<-1))
 (17 11 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (13 13 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (13 13 (:REWRITE NORMALIZE-ADDENDS))
 (13 13 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE |(< (- x) (- y))|))
 )
(TREE-LISTP-OF-APP
 (180 35 (:REWRITE TREE-LIST-LISTP-TREE-LISTP))
 (71 34 (:REWRITE NON-TIP-TREE-LISTP-WHEN-NOT-CONSP))
 (67 67 (:TYPE-PRESCRIPTION NON-TIP-TREE-LISTP))
 (52 52 (:TYPE-PRESCRIPTION APP))
 (20 20 (:REWRITE CONSP-THROUG-APP))
 (18 9 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (18 9 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (18 9 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (17 3 (:REWRITE TREE-LISTP-AND-CONSP-GIVES-TREEP))
 (17 1 (:REWRITE NON-TIP-TREE-LISTP-OF-CONS))
 (9 9 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE TREEP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DEFAULT-CDR))
 )
(TREE-LISTP-OF-LIST
 (194 40 (:REWRITE TREE-LIST-LISTP-TREE-LISTP))
 (159 34 (:REWRITE TREE-LISTP-AND-CONSP-GIVES-TREEP))
 (76 76 (:TYPE-PRESCRIPTION NON-TIP-TREE-LISTP))
 (62 5 (:REWRITE NON-TIP-TREE-LISTP-OF-CONS))
 (40 39 (:REWRITE NON-TIP-TREE-LISTP-WHEN-NOT-CONSP))
 (35 35 (:REWRITE DEFAULT-CDR))
 (31 15 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (28 14 (:REWRITE DEFAULT-+-2))
 (24 12 (:REWRITE SIMPLIFY-SUMS-<))
 (24 12 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (24 12 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 12 (:REWRITE DEFAULT-<-1))
 (17 15 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (14 14 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (14 14 (:REWRITE NORMALIZE-ADDENDS))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE |(< (- x) (- y))|))
 (9 2 (:REWRITE TIP-P-NOT-INTEGER-GIVES-SYMBOLP))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:TYPE-PRESCRIPTION TIP-P))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:META META-INTEGERP-CORRECT))
 )
(TREEP-THROUGH-APP
 (214 49 (:REWRITE TREE-LIST-LISTP-TREE-LISTP))
 (98 98 (:TYPE-PRESCRIPTION NON-TIP-TREE-LISTP))
 (60 15 (:REWRITE TIP-P-GIVES-TASPIP-T))
 (56 56 (:REWRITE TASPIP-WHEN-NOT-CONSP))
 (53 49 (:REWRITE NON-TIP-TREE-LISTP-WHEN-NOT-CONSP))
 (49 47 (:REWRITE TREE-LISTP-WHEN-NOT-CONSP))
 (45 32 (:REWRITE TREEP-WHEN-NOT-CONSP))
 (42 42 (:REWRITE TASPIP-FLG-CONSP-GIVES-TASPIP-NIL))
 (42 42 (:REWRITE GOOD-INDEX-FLATTEN-TASPIP))
 (34 21 (:REWRITE DEFAULT-CDR))
 (30 30 (:TYPE-PRESCRIPTION TIP-P))
 (28 2 (:REWRITE NON-TIP-TREE-LISTP-OF-CONS))
 (15 15 (:REWRITE TIP-P-WHEN-NOT-CONSP))
 (15 15 (:REWRITE TASPIP-FLG-AND-FLG-GIVES-T))
 (14 14 (:REWRITE APP-WHEN-NOT-CONSP))
 )
(LEN-0-NOT-CONSP
 (7 4 (:REWRITE DEFAULT-+-2))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4 4 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (4 4 (:REWRITE NORMALIZE-ADDENDS))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-=-0))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE |(equal (- x) 0)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 )
(TO-LEN-GREATER-2
 (28 15 (:REWRITE DEFAULT-+-2))
 (27 16 (:REWRITE DEFAULT-CDR))
 (25 13 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (21 11 (:REWRITE SIMPLIFY-SUMS-<))
 (21 11 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (21 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (21 11 (:REWRITE DEFAULT-<-1))
 (19 13 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (15 15 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (15 15 (:REWRITE NORMALIZE-ADDENDS))
 (15 15 (:REWRITE DEFAULT-+-1))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE |(< (- x) (- y))|))
 )
(TO-LEN-GREATER-3
 (98 13 (:REWRITE TREE-LISTP-AND-CONSP-GIVES-TREEP))
 (56 14 (:REWRITE TREE-LIST-LISTP-TREE-LISTP))
 (36 21 (:REWRITE DEFAULT-CDR))
 (32 17 (:REWRITE DEFAULT-+-2))
 (29 13 (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
 (28 28 (:TYPE-PRESCRIPTION NON-TIP-TREE-LISTP))
 (22 11 (:REWRITE SIMPLIFY-SUMS-<))
 (22 11 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (22 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (22 11 (:REWRITE DEFAULT-<-1))
 (19 13 (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
 (17 17 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (17 17 (:REWRITE NORMALIZE-ADDENDS))
 (17 17 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE TREE-LISTP-WHEN-NOT-CONSP))
 (14 14 (:REWRITE NON-TIP-TREE-LISTP-WHEN-NOT-CONSP))
 (14 14 (:REWRITE APP-WHEN-NOT-CONSP))
 (13 13 (:REWRITE TREEP-WHEN-NOT-CONSP))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE |(< (- x) (- y))|))
 )
