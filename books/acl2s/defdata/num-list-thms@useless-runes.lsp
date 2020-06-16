(DEFDATA::POS-LIST--FIRST (1 1 (:REWRITE DEFAULT-CAR)))
(DEFDATA::SUM-LIST-POSES-TYPE (19 19 (:REWRITE DEFAULT-CAR))
                              (17 13 (:REWRITE DEFAULT-<-2))
                              (13 13 (:REWRITE DEFAULT-<-1))
                              (11 11 (:REWRITE DEFAULT-CDR))
                              (9 6 (:REWRITE DEFAULT-+-2))
                              (8 6 (:REWRITE DEFAULT-+-1))
                              (6 6 (:TYPE-PRESCRIPTION POSP))
                              (6 1 (:LINEAR DEFDATA::POS-LIST--FIRST))
                              (2 2
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(DEFDATA::SUM-LIST-NATS-TYPE (124 6
                                  (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
                             (109 7 (:DEFINITION DEFDATA::POS-LISTP))
                             (49 7 (:DEFINITION POSP))
                             (48 48
                                 (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                             (20 17 (:REWRITE DEFAULT-<-1))
                             (18 18 (:REWRITE DEFAULT-CAR))
                             (18 9 (:REWRITE DEFDATA::POS-LIST--FIRST))
                             (18 9 (:LINEAR DEFDATA::POS-LIST--FIRST))
                             (17 17 (:REWRITE DEFAULT-<-2))
                             (13 13 (:REWRITE DEFAULT-CDR))
                             (5 3 (:REWRITE DEFAULT-+-2))
                             (5 3 (:REWRITE DEFAULT-+-1))
                             (2 2
                                (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(DEFDATA::SUM-LIST-INTEGERS-TYPE
     (7 7 (:REWRITE DEFAULT-CAR))
     (5 3 (:REWRITE DEFAULT-+-2))
     (5 3 (:REWRITE DEFAULT-+-1))
     (4 4 (:REWRITE DEFAULT-CDR))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(DEFDATA::SUM-LIST-RATIONALS-TYPE
     (9 3 (:REWRITE DEFAULT-+-2))
     (7 7 (:REWRITE DEFAULT-CAR))
     (5 3 (:REWRITE DEFAULT-+-1))
     (4 4 (:REWRITE DEFAULT-CDR))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(DEFDATA::SUM-LIST>=ELEMENT (78 8 (:DEFINITION DEFDATA::POS-LISTP))
                            (68 4
                                (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
                            (66 11 (:REWRITE DEFAULT-+-2))
                            (42 42
                                (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                            (35 5 (:LINEAR DEFDATA::POS-LIST--FIRST))
                            (30 8 (:DEFINITION POSP))
                            (24 24 (:REWRITE DEFAULT-CAR))
                            (23 14 (:REWRITE DEFAULT-<-1))
                            (21 21 (:REWRITE DEFAULT-CDR))
                            (20 11 (:REWRITE DEFAULT-+-1))
                            (16 14 (:REWRITE DEFAULT-<-2))
                            (11 11
                                (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (8 3 (:REWRITE DEFDATA::POS-LIST--FIRST)))
(DEFDATA::SUM-LIST--APPEND
     (1066 347
           (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST-RATIONALS-TYPE))
     (694 347
          (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST-INTEGERS-TYPE))
     (684 27 (:DEFINITION NAT-LISTP))
     (513 27 (:DEFINITION DEFDATA::POS-LISTP))
     (486 243
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (468 36 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (414 27 (:DEFINITION NATP))
     (369 27 (:DEFINITION POSP))
     (360 9
          (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (347 347 (:TYPE-PRESCRIPTION RATIONAL-LISTP))
     (347 347 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (315 9 (:LINEAR DEFDATA::SUM-LIST-NATS-TYPE))
     (243 243 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (243 243 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (234 27 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (153 153 (:TYPE-PRESCRIPTION NAT-LISTP))
     (147 23 (:REWRITE DEFAULT-+-2))
     (99 99
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (75 72 (:REWRITE DEFAULT-CAR))
     (69 23 (:REWRITE DEFAULT-+-1))
     (54 54 (:REWRITE DEFAULT-<-2))
     (54 54 (:REWRITE DEFAULT-<-1))
     (54 51 (:REWRITE DEFAULT-CDR))
     (54 27 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (16 16
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(DEFDATA::PRODUCT-LIST-POSES-TYPE
     (144 16 (:REWRITE ACL2-NUMBERP-X))
     (141 15 (:REWRITE DEFAULT-TIMES-1))
     (70 17 (:REWRITE RATIONALP-X))
     (68 6 (:REWRITE DEFAULT-PLUS-1))
     (30 6 (:REWRITE DEFAULT-PLUS-2))
     (29 29 (:REWRITE DEFAULT-CAR))
     (27 15 (:REWRITE DEFAULT-TIMES-2))
     (26 20 (:REWRITE DEFAULT-LESS-THAN-2))
     (25 25 (:REWRITE REDUCE-INTEGERP-+))
     (25 25 (:REWRITE INTEGERP-MINUS-X))
     (25 25 (:META META-INTEGERP-CORRECT))
     (24 18
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (24 18 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (22 22 (:REWRITE DEFAULT-CDR))
     (20 20 (:REWRITE THE-FLOOR-BELOW))
     (20 20 (:REWRITE THE-FLOOR-ABOVE))
     (20 20 (:REWRITE DEFAULT-LESS-THAN-1))
     (19 19
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (19 19
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (19 19
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (19 19 (:REWRITE INTEGERP-<-CONSTANT))
     (19 19 (:REWRITE CONSTANT-<-INTEGERP))
     (19 19
         (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (19 19
         (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (19 19
         (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (19 19
         (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (19 19 (:REWRITE |(< c (- x))|))
     (19 19 (:REWRITE |(< 0 (/ x))|))
     (19 19
         (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (19 19
         (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (19 19
         (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (19 19
         (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (19 19 (:REWRITE |(< (/ x) (/ y))|))
     (19 19 (:REWRITE |(< (- x) c)|))
     (19 19 (:REWRITE |(< (- x) (- y))|))
     (18 18
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (18 18
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (18 18 (:REWRITE SIMPLIFY-SUMS-<))
     (17 17 (:REWRITE REDUCE-RATIONALP-+))
     (17 17 (:REWRITE REDUCE-RATIONALP-*))
     (17 17 (:REWRITE RATIONALP-MINUS-X))
     (17 17 (:META META-RATIONALP-CORRECT))
     (17 2
         (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
     (16 16 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (9 9
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (7 1 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (6 6
        (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST))
     (4 4 (:TYPE-PRESCRIPTION POSP))
     (4 4
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (4 4 (:REWRITE NORMALIZE-ADDENDS))
     (1 1
        (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE)))
(DEFDATA::PRODUCT-LIST-NATS-TYPE
     (1406 17 (:DEFINITION DEFDATA::POS-LISTP))
     (1026 16 (:DEFINITION POSP))
     (218 32 (:REWRITE DEFAULT-PLUS-1))
     (216 24 (:REWRITE ACL2-NUMBERP-X))
     (186 32 (:REWRITE DEFAULT-PLUS-2))
     (174 22 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (141 15 (:REWRITE DEFAULT-TIMES-1))
     (106 20 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (102 25 (:REWRITE RATIONALP-X))
     (84 11
         (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (79 79 (:REWRITE DEFAULT-CAR))
     (62 62 (:REWRITE DEFAULT-CDR))
     (50 50 (:REWRITE REDUCE-INTEGERP-+))
     (50 50 (:REWRITE INTEGERP-MINUS-X))
     (50 50 (:META META-INTEGERP-CORRECT))
     (44 44
         (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST))
     (43 37 (:REWRITE DEFAULT-LESS-THAN-1))
     (41 35
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (41 35 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (37 37 (:REWRITE THE-FLOOR-BELOW))
     (37 37 (:REWRITE THE-FLOOR-ABOVE))
     (37 37 (:REWRITE DEFAULT-LESS-THAN-2))
     (36 36
         (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (36 36
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (36 36
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (36 36
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (36 36 (:REWRITE INTEGERP-<-CONSTANT))
     (36 36 (:REWRITE CONSTANT-<-INTEGERP))
     (36 36
         (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (36 36
         (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (36 36
         (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (36 36
         (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (36 36 (:REWRITE |(< c (- x))|))
     (36 36
         (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (36 36
         (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (36 36
         (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (36 36
         (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (36 36 (:REWRITE |(< (/ x) (/ y))|))
     (36 36 (:REWRITE |(< (- x) c)|))
     (36 36 (:REWRITE |(< (- x) (- y))|))
     (35 35 (:REWRITE SIMPLIFY-SUMS-<))
     (27 15 (:REWRITE DEFAULT-TIMES-2))
     (26 26
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (26 26 (:REWRITE NORMALIZE-ADDENDS))
     (25 25 (:REWRITE REDUCE-RATIONALP-+))
     (25 25 (:REWRITE REDUCE-RATIONALP-*))
     (25 25 (:REWRITE RATIONALP-MINUS-X))
     (25 25 (:META META-RATIONALP-CORRECT))
     (20 20
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (20 20
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (20 20 (:REWRITE |(< 0 (/ x))|))
     (20 20 (:REWRITE |(< 0 (* x y))|))
     (17 2
         (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (16 16 (:REWRITE |(< (/ x) 0)|))
     (15 15
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (15 15
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (9 9
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (2 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (2 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (2 2
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (2 2
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (2 2
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (2 2 (:REWRITE |(equal c (/ x))|))
     (2 2 (:REWRITE |(equal c (- x))|))
     (2 2 (:REWRITE |(equal (/ x) c)|))
     (2 2 (:REWRITE |(equal (/ x) (/ y))|))
     (2 2 (:REWRITE |(equal (- x) c)|))
     (2 2 (:REWRITE |(equal (- x) (- y))|)))
(DEFDATA::PRODUCT-LIST-INTEGERS-TYPE
     (93 9 (:REWRITE DEFAULT-TIMES-1))
     (72 8 (:REWRITE ACL2-NUMBERP-X))
     (32 8 (:REWRITE RATIONALP-X))
     (19 19 (:REWRITE REDUCE-INTEGERP-+))
     (19 19 (:REWRITE INTEGERP-MINUS-X))
     (19 19 (:META META-INTEGERP-CORRECT))
     (17 9 (:REWRITE DEFAULT-TIMES-2))
     (11 11 (:REWRITE DEFAULT-CAR))
     (8 8 (:REWRITE REDUCE-RATIONALP-+))
     (8 8 (:REWRITE REDUCE-RATIONALP-*))
     (8 8 (:REWRITE RATIONALP-MINUS-X))
     (8 8 (:REWRITE DEFAULT-CDR))
     (8 8 (:META META-RATIONALP-CORRECT))
     (5 5
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS)))
(DEFDATA::PRODUCT-LIST-RATIONALS-TYPE
     (181 19 (:REWRITE RATIONALP-X))
     (101 9 (:REWRITE DEFAULT-TIMES-1))
     (72 8 (:REWRITE ACL2-NUMBERP-X))
     (60 5
         (:REWRITE DEFDATA::PRODUCT-LIST-INTEGERS-TYPE))
     (45 5 (:DEFINITION INTEGER-LISTP))
     (33 9 (:REWRITE DEFAULT-TIMES-2))
     (24 24 (:REWRITE REDUCE-INTEGERP-+))
     (24 24 (:REWRITE INTEGERP-MINUS-X))
     (24 24 (:META META-INTEGERP-CORRECT))
     (19 19 (:REWRITE REDUCE-RATIONALP-+))
     (19 19 (:REWRITE REDUCE-RATIONALP-*))
     (19 19 (:REWRITE RATIONALP-MINUS-X))
     (19 19 (:META META-RATIONALP-CORRECT))
     (16 16 (:REWRITE DEFAULT-CAR))
     (13 13 (:REWRITE DEFAULT-CDR))
     (5 5
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS)))
(DEFDATA::PRODUCT-LIST>=ELEMENT
     (270 30 (:REWRITE ACL2-NUMBERP-X))
     (264 12 (:DEFINITION DEFDATA::SUM-LIST))
     (235 35 (:REWRITE DEFAULT-TIMES-1))
     (204 35 (:REWRITE DEFAULT-TIMES-2))
     (140 16 (:REWRITE DEFAULT-PLUS-1))
     (120 30 (:REWRITE RATIONALP-X))
     (96 16 (:REWRITE DEFAULT-PLUS-2))
     (56 56 (:REWRITE DEFAULT-CAR))
     (38 38 (:REWRITE REDUCE-INTEGERP-+))
     (38 38 (:REWRITE INTEGERP-MINUS-X))
     (38 38 (:REWRITE DEFAULT-CDR))
     (38 38 (:META META-INTEGERP-CORRECT))
     (36 16 (:REWRITE DEFAULT-LESS-THAN-1))
     (30 30 (:REWRITE REDUCE-RATIONALP-+))
     (30 30 (:REWRITE REDUCE-RATIONALP-*))
     (30 30 (:REWRITE RATIONALP-MINUS-X))
     (30 30 (:META META-RATIONALP-CORRECT))
     (29 14 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (24 14 (:REWRITE SIMPLIFY-SUMS-<))
     (24 6 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (23 23
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (20 20
         (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST))
     (17 17 (:REWRITE THE-FLOOR-BELOW))
     (17 17 (:REWRITE THE-FLOOR-ABOVE))
     (16 16
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (16 16
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (16 16
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (15 15 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (15 15
         (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (15 15 (:REWRITE INTEGERP-<-CONSTANT))
     (15 15 (:REWRITE CONSTANT-<-INTEGERP))
     (15 15
         (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (15 15
         (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (15 15
         (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (15 15
         (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (15 15 (:REWRITE |(< c (- x))|))
     (15 15
         (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (15 15
         (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (15 15
         (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (15 15
         (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (15 15 (:REWRITE |(< (/ x) (/ y))|))
     (15 15 (:REWRITE |(< (- x) c)|))
     (15 15 (:REWRITE |(< (- x) (- y))|))
     (12 12
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (12 12 (:REWRITE NORMALIZE-ADDENDS))
     (9 9 (:REWRITE |(< 0 (* x y))|))
     (8 8
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (8 8
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (8 8 (:REWRITE |(< 0 (/ x))|))
     (6 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (1 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (1 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (1 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1
        (:REWRITE |(< x (/ y)) with (< y 0)|)))
(DEFDATA::PRODUCT-LIST--APPEND
     (6304 96 (:DEFINITION DEFDATA::POS-LISTP))
     (5984 96 (:DEFINITION POSP))
     (5376 80 (:DEFINITION NAT-LISTP))
     (4896 80 (:DEFINITION NATP))
     (3328 112
           (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (3056 16
           (:LINEAR DEFDATA::PRODUCT-LIST-NATS-TYPE))
     (2624 96 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (2112 16
           (:LINEAR DEFDATA::PRODUCT-LIST-POSES-TYPE))
     (1536 561
           (:TYPE-PRESCRIPTION DEFDATA::PRODUCT-LIST-RATIONALS-TYPE))
     (1280 96 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (1122 561
           (:TYPE-PRESCRIPTION DEFDATA::PRODUCT-LIST-INTEGERS-TYPE))
     (561 561 (:TYPE-PRESCRIPTION RATIONAL-LISTP))
     (561 561 (:TYPE-PRESCRIPTION INTEGER-LISTP))
     (448 448
          (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (432 432 (:TYPE-PRESCRIPTION NAT-LISTP))
     (369 41 (:REWRITE ACL2-NUMBERP-X))
     (336 54 (:REWRITE DEFAULT-TIMES-2))
     (306 153
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (206 203 (:REWRITE DEFAULT-CAR))
     (192 96 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (176 176 (:REWRITE THE-FLOOR-BELOW))
     (176 176 (:REWRITE THE-FLOOR-ABOVE))
     (176 176 (:REWRITE SIMPLIFY-SUMS-<))
     (176 176
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (176 176
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (176 176
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (176 176
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (176 176
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (176 176
          (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (176 176 (:REWRITE INTEGERP-<-CONSTANT))
     (176 176 (:REWRITE DEFAULT-LESS-THAN-2))
     (176 176 (:REWRITE DEFAULT-LESS-THAN-1))
     (176 176 (:REWRITE CONSTANT-<-INTEGERP))
     (176 176
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (176 176
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (176 176
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (176 176
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (176 176 (:REWRITE |(< c (- x))|))
     (176 176
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (176 176
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (176 176
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (176 176
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (176 176 (:REWRITE |(< (/ x) (/ y))|))
     (176 176 (:REWRITE |(< (- x) c)|))
     (176 176 (:REWRITE |(< (- x) (- y))|))
     (164 41 (:REWRITE RATIONALP-X))
     (153 153 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (153 153 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (138 135 (:REWRITE DEFAULT-CDR))
     (96 96
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (96 96
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (96 96 (:REWRITE |(< 0 (/ x))|))
     (96 96 (:REWRITE |(< 0 (* x y))|))
     (95 5 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (95 5
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (95 5
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (89 89 (:REWRITE REDUCE-INTEGERP-+))
     (89 89 (:REWRITE INTEGERP-MINUS-X))
     (89 89 (:META META-INTEGERP-CORRECT))
     (80 80
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (80 80
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (80 80 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (80 80 (:REWRITE |(< (/ x) 0)|))
     (80 80 (:REWRITE |(< (* x y) 0)|))
     (41 41 (:REWRITE REDUCE-RATIONALP-+))
     (41 41 (:REWRITE REDUCE-RATIONALP-*))
     (41 41 (:REWRITE RATIONALP-MINUS-X))
     (41 41 (:META META-RATIONALP-CORRECT))
     (28 28
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (5 5
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (5 5
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (5 5
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (5 5 (:REWRITE |(equal c (/ x))|))
     (5 5 (:REWRITE |(equal c (- x))|))
     (5 5 (:REWRITE |(equal (/ x) c)|))
     (5 5 (:REWRITE |(equal (/ x) (/ y))|))
     (5 5 (:REWRITE |(equal (- x) c)|))
     (5 5 (:REWRITE |(equal (- x) (- y))|))
     (2 2
        (:REWRITE ARITH-NORMALIZE-FACTORS-SCATTER-EXPONENTS)))
(DEFDATA::MAX-NAT-LIST<=SUM-LIST
     (294 10 (:DEFINITION DEFDATA::POS-LISTP))
     (264 7
          (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (174 10 (:DEFINITION POSP))
     (108 19 (:REWRITE DEFAULT-+-2))
     (77 77
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (70 12
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (52 52 (:REWRITE DEFAULT-CAR))
     (41 24 (:REWRITE DEFAULT-<-1))
     (30 24 (:REWRITE DEFAULT-<-2))
     (28 28 (:REWRITE DEFAULT-CDR))
     (28 19 (:REWRITE DEFAULT-+-1))
     (26 13 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (22 11 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (18 18
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(DEFDATA::MAX-NAT-LIST>=ELEMENT
     (78 13 (:REWRITE DEFAULT-+-2))
     (64 2
         (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (58 2 (:DEFINITION DEFDATA::POS-LISTP))
     (46 2 (:DEFINITION POSP))
     (42 42
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (41 24 (:REWRITE DEFAULT-<-1))
     (38 24 (:REWRITE DEFAULT-<-2))
     (36 36 (:REWRITE DEFAULT-CAR))
     (30 30 (:REWRITE DEFAULT-CDR))
     (24 13 (:REWRITE DEFAULT-+-1))
     (16 16
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (4 2 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (4 2
        (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (4 2 (:LINEAR DEFDATA::POS-LIST--FIRST)))
(DEFDATA::MAX-NAT-LIST--NAT-LISTP
     (9 7 (:REWRITE DEFAULT-<-2))
     (9 7 (:REWRITE DEFAULT-<-1))
     (7 7 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 4 (:REWRITE DEFAULT-CDR))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::MAX-NAT-LIST--NAT-LISTP)))
(DEFDATA::MAX-NAT-LIST--NAT-LISTP2
     (176 25 (:REWRITE DEFAULT-<-1))
     (168 5
          (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (154 4 (:DEFINITION DEFDATA::POS-LISTP))
     (130 4 (:DEFINITION POSP))
     (103 35
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (84 14 (:REWRITE DEFAULT-+-2))
     (43 9 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (41 41 (:REWRITE DEFAULT-CAR))
     (35 25 (:REWRITE DEFAULT-<-2))
     (33 33
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (28 28 (:REWRITE DEFAULT-CDR))
     (26 14 (:REWRITE DEFAULT-+-1))
     (8 4 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (8 4
        (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (8 4 (:LINEAR DEFDATA::POS-LIST--FIRST)))
(DEFDATA::LEN=0--NOT-CONSP (7 4 (:REWRITE DEFAULT-+-2))
                           (4 4 (:REWRITE DEFAULT-+-1))
                           (3 3 (:REWRITE DEFAULT-CDR)))
(DEFDATA::SCALE--POS-LIST (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                          (102 12 (:DEFINITION LEN))
                          (88 88 (:TYPE-PRESCRIPTION LEN))
                          (36 7 (:REWRITE DEFDATA::POS-LIST--FIRST))
                          (28 14 (:REWRITE DEFAULT-+-2))
                          (23 22 (:REWRITE DEFAULT-CDR))
                          (14 14 (:REWRITE DEFAULT-+-1))
                          (14 13 (:REWRITE DEFAULT-CAR))
                          (11 11 (:REWRITE DEFAULT-<-2))
                          (11 11 (:REWRITE DEFAULT-<-1))
                          (8 6 (:REWRITE DEFAULT-*-2))
                          (8 6 (:REWRITE DEFAULT-*-1))
                          (4 4 (:TYPE-PRESCRIPTION POSP))
                          (4 4
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                          (2 1
                             (:TYPE-PRESCRIPTION DEFDATA::SCALE--POS-LIST)))
(DEFDATA::SCALE--NAT-LIST (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                          (102 12 (:DEFINITION LEN))
                          (88 88 (:TYPE-PRESCRIPTION LEN))
                          (28 14 (:REWRITE DEFAULT-+-2))
                          (23 22 (:REWRITE DEFAULT-CDR))
                          (14 14 (:REWRITE DEFAULT-+-1))
                          (12 11 (:REWRITE DEFAULT-CAR))
                          (11 11 (:REWRITE DEFAULT-<-2))
                          (11 11 (:REWRITE DEFAULT-<-1))
                          (8 6 (:REWRITE DEFAULT-*-2))
                          (8 6 (:REWRITE DEFAULT-*-1))
                          (4 4
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                          (2 1
                             (:TYPE-PRESCRIPTION DEFDATA::SCALE--NAT-LIST)))
(DEFDATA::SCALE--INTEGER-LIST
     (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 12 (:DEFINITION LEN))
     (88 88 (:TYPE-PRESCRIPTION LEN))
     (28 14 (:REWRITE DEFAULT-+-2))
     (23 22 (:REWRITE DEFAULT-CDR))
     (14 14 (:REWRITE DEFAULT-+-1))
     (12 11 (:REWRITE DEFAULT-CAR))
     (8 6 (:REWRITE DEFAULT-*-2))
     (8 6 (:REWRITE DEFAULT-*-1))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::SCALE--INTEGER-LIST)))
(DEFDATA::SCALE--RATIONAL-LIST
     (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 12 (:DEFINITION LEN))
     (88 88 (:TYPE-PRESCRIPTION LEN))
     (28 14 (:REWRITE DEFAULT-+-2))
     (23 22 (:REWRITE DEFAULT-CDR))
     (14 14 (:REWRITE DEFAULT-+-1))
     (12 11 (:REWRITE DEFAULT-CAR))
     (8 6 (:REWRITE DEFAULT-*-2))
     (8 6 (:REWRITE DEFAULT-*-1))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::SCALE--RATIONAL-LIST)))
(DEFDATA::SCALE--NUMBER-LIST
     (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 12 (:DEFINITION LEN))
     (88 88 (:TYPE-PRESCRIPTION LEN))
     (28 14 (:REWRITE DEFAULT-+-2))
     (23 22 (:REWRITE DEFAULT-CDR))
     (15 15
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (14 14 (:REWRITE DEFAULT-+-1))
     (12 11 (:REWRITE DEFAULT-CAR))
     (8 6 (:REWRITE DEFAULT-*-2))
     (8 6 (:REWRITE DEFAULT-*-1))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::SCALE--NUMBER-LIST)))
(DEFDATA::SCALE--CONSP (130 19 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                       (79 10 (:DEFINITION LEN))
                       (64 64 (:TYPE-PRESCRIPTION LEN))
                       (20 10 (:REWRITE DEFAULT-+-2))
                       (16 16
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (16 8 (:REWRITE DEFAULT-*-2))
                       (16 8 (:REWRITE DEFAULT-*-1))
                       (14 14 (:REWRITE DEFAULT-CDR))
                       (10 10 (:REWRITE DEFAULT-+-1))
                       (4 4 (:REWRITE DEFAULT-CAR))
                       (1 1
                          (:TYPE-PRESCRIPTION DEFDATA::SCALE--CONSP)))
(DEFDATA::SCALE--LEN (94 14 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                     (24 12 (:REWRITE DEFAULT-+-2))
                     (12 12
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                     (12 12 (:REWRITE DEFAULT-+-1))
                     (12 10 (:REWRITE DEFAULT-CDR))
                     (12 6 (:REWRITE DEFAULT-*-2))
                     (12 6 (:REWRITE DEFAULT-*-1))
                     (8 8
                        (:TYPE-PRESCRIPTION DEFDATA::SCALE--CONSP))
                     (3 3 (:REWRITE DEFDATA::SCALE--CONSP))
                     (3 3 (:REWRITE DEFAULT-CAR)))
(DEFDATA::SHIFT--POS-LIST (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                          (102 12 (:DEFINITION LEN))
                          (88 88 (:TYPE-PRESCRIPTION LEN))
                          (36 20 (:REWRITE DEFAULT-+-2))
                          (36 7 (:REWRITE DEFDATA::POS-LIST--FIRST))
                          (23 22 (:REWRITE DEFAULT-CDR))
                          (22 20 (:REWRITE DEFAULT-+-1))
                          (14 13 (:REWRITE DEFAULT-CAR))
                          (11 11 (:REWRITE DEFAULT-<-2))
                          (11 11 (:REWRITE DEFAULT-<-1))
                          (4 4 (:TYPE-PRESCRIPTION POSP))
                          (4 4
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                          (2 1
                             (:TYPE-PRESCRIPTION DEFDATA::SHIFT--POS-LIST)))
(DEFDATA::SHIFT--NAT-LIST (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                          (102 12 (:DEFINITION LEN))
                          (88 88 (:TYPE-PRESCRIPTION LEN))
                          (36 20 (:REWRITE DEFAULT-+-2))
                          (23 22 (:REWRITE DEFAULT-CDR))
                          (22 20 (:REWRITE DEFAULT-+-1))
                          (12 11 (:REWRITE DEFAULT-CAR))
                          (11 11 (:REWRITE DEFAULT-<-2))
                          (11 11 (:REWRITE DEFAULT-<-1))
                          (4 4
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                          (2 1
                             (:TYPE-PRESCRIPTION DEFDATA::SHIFT--NAT-LIST)))
(DEFDATA::SHIFT--INTEGER-LIST
     (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 12 (:DEFINITION LEN))
     (88 88 (:TYPE-PRESCRIPTION LEN))
     (36 20 (:REWRITE DEFAULT-+-2))
     (23 22 (:REWRITE DEFAULT-CDR))
     (22 20 (:REWRITE DEFAULT-+-1))
     (12 11 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::SHIFT--INTEGER-LIST)))
(DEFDATA::SHIFT--RATIONAL-LIST
     (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 12 (:DEFINITION LEN))
     (88 88 (:TYPE-PRESCRIPTION LEN))
     (36 20 (:REWRITE DEFAULT-+-2))
     (23 22 (:REWRITE DEFAULT-CDR))
     (22 20 (:REWRITE DEFAULT-+-1))
     (12 11 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::SHIFT--RATIONAL-LIST)))
(DEFDATA::SHIFT--NUMBER-LIST
     (172 24 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 12 (:DEFINITION LEN))
     (88 88 (:TYPE-PRESCRIPTION LEN))
     (36 20 (:REWRITE DEFAULT-+-2))
     (23 22 (:REWRITE DEFAULT-CDR))
     (22 20 (:REWRITE DEFAULT-+-1))
     (15 15
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (12 11 (:REWRITE DEFAULT-CAR))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::SHIFT--NUMBER-LIST)))
(DEFDATA::SHIFT--CONSP (130 19 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                       (79 10 (:DEFINITION LEN))
                       (64 64 (:TYPE-PRESCRIPTION LEN))
                       (36 18 (:REWRITE DEFAULT-+-2))
                       (26 18 (:REWRITE DEFAULT-+-1))
                       (16 16
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (14 14 (:REWRITE DEFAULT-CDR))
                       (4 4 (:REWRITE DEFAULT-CAR))
                       (1 1
                          (:TYPE-PRESCRIPTION DEFDATA::SHIFT--CONSP)))
(DEFDATA::SHIFT--LEN (94 14 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                     (36 18 (:REWRITE DEFAULT-+-2))
                     (24 18 (:REWRITE DEFAULT-+-1))
                     (12 12
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                     (12 10 (:REWRITE DEFAULT-CDR))
                     (8 8
                        (:TYPE-PRESCRIPTION DEFDATA::SHIFT--CONSP))
                     (3 3 (:REWRITE DEFDATA::SHIFT--CONSP))
                     (3 3 (:REWRITE DEFAULT-CAR)))
(DEFDATA::LIST-EXPT--NUMBER-LIST
     (423 3 (:DEFINITION EXPT))
     (348 8 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (340 4 (:DEFINITION DEFDATA::POS-LISTP))
     (242 34 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (230 14 (:DEFINITION NAT-LISTP))
     (200 4 (:DEFINITION POSP))
     (137 17 (:DEFINITION LEN))
     (132 9 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (132 9
          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (128 128 (:TYPE-PRESCRIPTION LEN))
     (74 14 (:DEFINITION NATP))
     (66 66 (:TYPE-PRESCRIPTION NAT-LISTP))
     (51 50 (:REWRITE DEFAULT-CDR))
     (50 31 (:REWRITE DEFAULT-+-2))
     (40 40
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (35 34 (:REWRITE DEFAULT-CAR))
     (31 31 (:REWRITE DEFAULT-+-1))
     (30 30 (:REWRITE DEFAULT-<-2))
     (30 30 (:REWRITE DEFAULT-<-1))
     (18 9
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (18 9 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (18 6 (:REWRITE DEFAULT-*-2))
     (18 6 (:REWRITE COMMUTATIVITY-OF-+))
     (7 7
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (7 7
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6 (:REWRITE DEFAULT-*-1))
     (6 3 (:REWRITE ZIP-OPEN))
     (3 3 (:REWRITE DEFAULT-UNARY-/))
     (3 3 (:DEFINITION FIX))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::LIST-EXPT--NUMBER-LIST)))
(DEFDATA::LIST-EXPT--CONSP
     (563 4 (:DEFINITION EXPT))
     (435 11 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (425 6 (:DEFINITION DEFDATA::POS-LISTP))
     (282 22 (:DEFINITION NAT-LISTP))
     (239 5 (:DEFINITION POSP))
     (200 29 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (162 11 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (162 11
          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (114 15 (:DEFINITION LEN))
     (104 104 (:TYPE-PRESCRIPTION LEN))
     (86 18 (:DEFINITION NATP))
     (78 78 (:TYPE-PRESCRIPTION NAT-LISTP))
     (52 52 (:REWRITE DEFAULT-CDR))
     (49 49
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (46 31 (:REWRITE DEFAULT-+-2))
     (37 37 (:REWRITE DEFAULT-CAR))
     (37 37 (:REWRITE DEFAULT-<-2))
     (37 37 (:REWRITE DEFAULT-<-1))
     (32 8 (:REWRITE DEFAULT-*-2))
     (31 31 (:REWRITE DEFAULT-+-1))
     (24 8 (:REWRITE COMMUTATIVITY-OF-+))
     (22 11
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (22 11 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (16 16
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (16 4 (:REWRITE DEFAULT-UNARY-/))
     (12 8 (:REWRITE DEFAULT-*-1))
     (8 8
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (8 8
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (8 8 (:TYPE-PRESCRIPTION EXPT))
     (8 4 (:REWRITE ZIP-OPEN))
     (8 4 (:DEFINITION FIX))
     (1 1
        (:TYPE-PRESCRIPTION DEFDATA::LIST-EXPT--CONSP)))
(DEFDATA::LIST-EXPT--LEN
     (404 3 (:DEFINITION EXPT))
     (308 8 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (300 4 (:DEFINITION DEFDATA::POS-LISTP))
     (198 14 (:DEFINITION NAT-LISTP))
     (184 4 (:DEFINITION POSP))
     (124 19 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (116 9 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (116 9
          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (74 14 (:DEFINITION NATP))
     (66 66 (:TYPE-PRESCRIPTION NAT-LISTP))
     (40 40
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (36 24 (:REWRITE DEFAULT-+-2))
     (35 33 (:REWRITE DEFAULT-CDR))
     (26 26 (:REWRITE DEFAULT-CAR))
     (26 26 (:REWRITE DEFAULT-<-2))
     (26 26 (:REWRITE DEFAULT-<-1))
     (24 24 (:REWRITE DEFAULT-+-1))
     (24 6 (:REWRITE DEFAULT-*-2))
     (18 9
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (18 9 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (18 6 (:REWRITE COMMUTATIVITY-OF-+))
     (12 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (12 3 (:REWRITE DEFAULT-UNARY-/))
     (9 6 (:REWRITE DEFAULT-*-1))
     (8 8
        (:TYPE-PRESCRIPTION DEFDATA::LIST-EXPT--CONSP))
     (6 6
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (6 6
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (6 6 (:TYPE-PRESCRIPTION EXPT))
     (6 3 (:REWRITE ZIP-OPEN))
     (6 3 (:DEFINITION FIX))
     (3 3 (:REWRITE DEFDATA::LIST-EXPT--CONSP)))
(DEFDATA::EXPT--INTEGER (8 8 (:REWRITE DEFAULT-<-2))
                        (8 8 (:REWRITE DEFAULT-<-1))
                        (7 3 (:REWRITE DEFAULT-*-2))
                        (6 2 (:REWRITE COMMUTATIVITY-OF-+))
                        (4 4 (:REWRITE DEFAULT-+-2))
                        (4 4 (:REWRITE DEFAULT-+-1))
                        (3 3 (:REWRITE ZIP-OPEN))
                        (3 3 (:REWRITE DEFAULT-*-1)))
(DEFDATA::EXPT-->=0 (21 15 (:REWRITE DEFAULT-<-2))
                    (15 15 (:REWRITE DEFAULT-<-1))
                    (7 3 (:REWRITE DEFAULT-*-2))
                    (6 2 (:REWRITE COMMUTATIVITY-OF-+))
                    (4 4 (:REWRITE DEFAULT-+-2))
                    (4 4 (:REWRITE DEFAULT-+-1))
                    (3 3 (:REWRITE ZIP-OPEN))
                    (3 3 (:REWRITE DEFAULT-*-1)))
(DEFDATA::EXPT--2 (23 17 (:REWRITE DEFAULT-<-1))
                  (17 17 (:REWRITE DEFAULT-<-2))
                  (17 7 (:REWRITE DEFAULT-*-2))
                  (12 4 (:REWRITE COMMUTATIVITY-OF-+))
                  (8 8 (:REWRITE DEFAULT-+-2))
                  (8 8 (:REWRITE DEFAULT-+-1))
                  (7 7 (:REWRITE DEFAULT-*-1)))
(DEFDATA::<=-LISTS--TRANSITIVE
     (1308 48 (:DEFINITION DEFDATA::POS-LISTP))
     (1252 56 (:DEFINITION NAT-LISTP))
     (931 134
          (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (828 48 (:DEFINITION POSP))
     (760 44
          (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (760 44 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (714 44 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (714 44
          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (540 56 (:DEFINITION NATP))
     (511 67 (:DEFINITION LEN))
     (508 508 (:TYPE-PRESCRIPTION LEN))
     (276 276 (:TYPE-PRESCRIPTION NAT-LISTP))
     (208 208
          (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (196 196 (:REWRITE DEFAULT-CAR))
     (176 150 (:REWRITE DEFAULT-<-2))
     (176 150 (:REWRITE DEFAULT-<-1))
     (170 170 (:REWRITE DEFAULT-CDR))
     (148 74 (:REWRITE DEFAULT-+-2))
     (104 52 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (74 74 (:REWRITE DEFAULT-+-1))
     (52 52
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(DEFDATA::<=-LISTS--REFLEXIVE (69 10 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                              (41 5 (:DEFINITION LEN))
                              (36 36 (:TYPE-PRESCRIPTION LEN))
                              (12 6 (:REWRITE DEFAULT-+-2))
                              (10 10 (:REWRITE DEFAULT-CDR))
                              (8 8
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                              (8 8 (:REWRITE DEFAULT-CAR))
                              (8 4 (:REWRITE DEFAULT-<-2))
                              (8 4 (:REWRITE DEFAULT-<-1))
                              (6 6 (:REWRITE DEFAULT-+-1))
                              (6 6
                                 (:REWRITE DEFDATA::<=-LISTS--TRANSITIVE)))
(DEFDATA::ALL-<=--<= (362 18 (:DEFINITION DEFDATA::POS-LISTP))
                     (326 18 (:DEFINITION NAT-LISTP))
                     (250 36 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                     (202 18 (:DEFINITION POSP))
                     (200 11
                          (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                     (200 11 (:LINEAR DEFDATA::POS-LIST--FIRST))
                     (186 11 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                     (186 11
                          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                     (142 18 (:DEFINITION NATP))
                     (138 18 (:DEFINITION LEN))
                     (136 136 (:TYPE-PRESCRIPTION LEN))
                     (86 86 (:TYPE-PRESCRIPTION NAT-LISTP))
                     (78 61 (:REWRITE DEFAULT-<-2))
                     (78 61 (:REWRITE DEFAULT-<-1))
                     (76 76
                         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                     (64 64 (:REWRITE DEFAULT-CAR))
                     (60 60 (:REWRITE DEFAULT-CDR))
                     (44 22 (:REWRITE DEFDATA::POS-LIST--FIRST))
                     (40 20 (:REWRITE DEFAULT-+-2))
                     (34 34
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                     (20 20 (:REWRITE DEFAULT-+-1)))
(DEFDATA::ALL-<=--NTH-<= (42 24 (:REWRITE DEFAULT-<-2))
                         (36 24 (:REWRITE DEFAULT-<-1))
                         (24 24
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (23 11 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                         (15 9 (:REWRITE DEFAULT-+-2))
                         (10 10 (:REWRITE DEFAULT-CAR))
                         (9 9 (:REWRITE DEFAULT-+-1))
                         (9 9 (:REWRITE DEFDATA::ALL-<=--<=))
                         (6 6 (:REWRITE DEFAULT-CDR))
                         (5 5 (:REWRITE ZP-OPEN)))
(DEFDATA::ALL-<=--CAR-<= (22 2 (:DEFINITION DEFDATA::POS-LISTP))
                         (18 2 (:DEFINITION NAT-LISTP))
                         (14 1
                             (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                         (14 1 (:LINEAR DEFDATA::POS-LIST--FIRST))
                         (12 12
                             (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                         (12 1 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                         (12 1
                             (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                         (10 10 (:TYPE-PRESCRIPTION NAT-LISTP))
                         (10 2 (:DEFINITION POSP))
                         (6 5 (:REWRITE DEFAULT-<-2))
                         (6 5 (:REWRITE DEFAULT-<-1))
                         (6 2 (:DEFINITION NATP))
                         (5 5 (:REWRITE DEFAULT-CAR))
                         (4 4 (:REWRITE DEFAULT-CDR))
                         (4 2 (:REWRITE DEFDATA::POS-LIST--FIRST))
                         (2 2
                            (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (1 1 (:REWRITE DEFDATA::ALL-<=--<=)))
(DEFDATA::<=-LISTS--ALL-<= (1202 72 (:DEFINITION DEFDATA::POS-LISTP))
                           (1058 72 (:DEFINITION NAT-LISTP))
                           (751 108
                                (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                           (689 41
                                (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                           (689 41 (:LINEAR DEFDATA::POS-LIST--FIRST))
                           (640 72 (:DEFINITION POSP))
                           (627 41 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                           (627 41
                                (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                           (436 72 (:DEFINITION NATP))
                           (412 412 (:TYPE-PRESCRIPTION LEN))
                           (408 54 (:DEFINITION LEN))
                           (352 352
                                (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                           (350 350 (:TYPE-PRESCRIPTION NAT-LISTP))
                           (242 206 (:REWRITE DEFAULT-<-2))
                           (242 206 (:REWRITE DEFAULT-<-1))
                           (233 233 (:REWRITE DEFAULT-CAR))
                           (218 218 (:REWRITE DEFAULT-CDR))
                           (164 82 (:REWRITE DEFDATA::POS-LIST--FIRST))
                           (157 45 (:REWRITE DEFDATA::ALL-<=--<=))
                           (118 59 (:REWRITE DEFAULT-+-2))
                           (72 72
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                           (59 59 (:REWRITE DEFAULT-+-1))
                           (13 13
                               (:REWRITE DEFDATA::<=-LISTS--TRANSITIVE)))
(DEFDATA::*-LISTS-POSES-TYPE
     (4078 89 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (3908 42 (:DEFINITION DEFDATA::ALL-<=))
     (2171 99 (:DEFINITION NAT-LISTP))
     (1332 190
           (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (827 99 (:DEFINITION NATP))
     (744 744 (:TYPE-PRESCRIPTION LEN))
     (695 95 (:DEFINITION LEN))
     (561 158 (:REWRITE DEFAULT-<-1))
     (336 80 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (331 330 (:REWRITE DEFAULT-CAR))
     (315 314 (:REWRITE DEFAULT-CDR))
     (306 117 (:REWRITE DEFAULT-+-2))
     (239 53
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (229 229
          (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (172 158 (:REWRITE DEFAULT-<-2))
     (119 117 (:REWRITE DEFAULT-+-1))
     (89 17 (:REWRITE DEFAULT-*-2))
     (80 80 (:REWRITE DEFDATA::ALL-<=--<=))
     (80 80 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (21 17 (:REWRITE DEFAULT-*-1))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::*-LISTS-POSES-TYPE)))
(DEFDATA::*-LISTS-NATS-TYPE
     (1171 26 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (1106 13 (:DEFINITION DEFDATA::ALL-<=))
     (758 108
          (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (467 37 (:DEFINITION DEFDATA::POS-LISTP))
     (416 416 (:TYPE-PRESCRIPTION LEN))
     (414 100 (:REWRITE DEFAULT-<-1))
     (408 54 (:DEFINITION LEN))
     (234 21
          (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (234 21 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (233 37 (:DEFINITION POSP))
     (184 40
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (182 69 (:REWRITE DEFAULT-+-2))
     (140 139 (:REWRITE DEFAULT-CAR))
     (139 138 (:REWRITE DEFAULT-CDR))
     (130 130
          (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (108 100 (:REWRITE DEFAULT-<-2))
     (86 3
         (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (82 41 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (78 78 (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (71 69 (:REWRITE DEFAULT-+-1))
     (26 26 (:REWRITE DEFDATA::ALL-<=--<=))
     (26 26 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (5 3 (:REWRITE DEFAULT-*-2))
     (5 3 (:REWRITE DEFAULT-*-1))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::*-LISTS-NATS-TYPE)))
(DEFDATA::*-LISTS-INTEGERS-TYPE
     (394 56 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (226 28 (:DEFINITION LEN))
     (208 208 (:TYPE-PRESCRIPTION LEN))
     (64 32 (:REWRITE DEFAULT-+-2))
     (45 44 (:REWRITE DEFAULT-CDR))
     (33 32 (:REWRITE DEFAULT-CAR))
     (32 32 (:REWRITE DEFAULT-+-1))
     (5 3 (:REWRITE DEFAULT-*-2))
     (5 3 (:REWRITE DEFAULT-*-1))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::*-LISTS-INTEGERS-TYPE)))
(DEFDATA::*-LISTS-RATIONALS-TYPE
     (394 56 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (226 28 (:DEFINITION LEN))
     (208 208 (:TYPE-PRESCRIPTION LEN))
     (64 32 (:REWRITE DEFAULT-+-2))
     (45 44 (:REWRITE DEFAULT-CDR))
     (33 32 (:REWRITE DEFAULT-CAR))
     (32 32 (:REWRITE DEFAULT-+-1))
     (5 3 (:REWRITE DEFAULT-*-2))
     (5 3 (:REWRITE DEFAULT-*-1))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::*-LISTS-RATIONALS-TYPE)))
(DEFDATA::*-LISTS--LEN (199 103 (:REWRITE DEFAULT-+-2))
                       (103 103 (:REWRITE DEFAULT-+-1))
                       (29 16 (:REWRITE DEFAULT-<-1))
                       (28 16 (:REWRITE DEFAULT-<-2))
                       (26 26
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (26 26 (:REWRITE DEFAULT-CAR))
                       (26 13 (:REWRITE DEFAULT-*-2))
                       (26 13 (:REWRITE DEFAULT-*-1)))
(DEFDATA::+-LISTS-POSES-TYPE
     (4078 89 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (3908 42 (:DEFINITION DEFDATA::ALL-<=))
     (2171 99 (:DEFINITION NAT-LISTP))
     (1332 190
           (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (827 99 (:DEFINITION NATP))
     (744 744 (:TYPE-PRESCRIPTION LEN))
     (695 95 (:DEFINITION LEN))
     (561 158 (:REWRITE DEFAULT-<-1))
     (336 80 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (331 330 (:REWRITE DEFAULT-CAR))
     (315 314 (:REWRITE DEFAULT-CDR))
     (311 120 (:REWRITE DEFAULT-+-2))
     (239 53
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (229 229
          (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (172 158 (:REWRITE DEFAULT-<-2))
     (124 120 (:REWRITE DEFAULT-+-1))
     (84 14 (:REWRITE DEFAULT-*-2))
     (80 80 (:REWRITE DEFDATA::ALL-<=--<=))
     (80 80 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (16 14 (:REWRITE DEFAULT-*-1))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::+-LISTS-POSES-TYPE)))
(DEFDATA::+-LISTS-NATS-TYPE
     (1171 26 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (1106 13 (:DEFINITION DEFDATA::ALL-<=))
     (758 108
          (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (467 37 (:DEFINITION DEFDATA::POS-LISTP))
     (416 416 (:TYPE-PRESCRIPTION LEN))
     (414 100 (:REWRITE DEFAULT-<-1))
     (408 54 (:DEFINITION LEN))
     (234 21
          (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (234 21 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (233 37 (:DEFINITION POSP))
     (187 72 (:REWRITE DEFAULT-+-2))
     (184 40
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (140 139 (:REWRITE DEFAULT-CAR))
     (139 138 (:REWRITE DEFAULT-CDR))
     (130 130
          (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (108 100 (:REWRITE DEFAULT-<-2))
     (86 3
         (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (82 41 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (78 78 (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (76 72 (:REWRITE DEFAULT-+-1))
     (26 26 (:REWRITE DEFDATA::ALL-<=--<=))
     (26 26 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::+-LISTS-NATS-TYPE)))
(DEFDATA::+-LISTS-INTEGERS-TYPE
     (394 56 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (226 28 (:DEFINITION LEN))
     (208 208 (:TYPE-PRESCRIPTION LEN))
     (69 35 (:REWRITE DEFAULT-+-2))
     (45 44 (:REWRITE DEFAULT-CDR))
     (37 35 (:REWRITE DEFAULT-+-1))
     (33 32 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::+-LISTS-INTEGERS-TYPE)))
(DEFDATA::+-LISTS-RATIONALS-TYPE
     (394 56 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (226 28 (:DEFINITION LEN))
     (208 208 (:TYPE-PRESCRIPTION LEN))
     (69 35 (:REWRITE DEFAULT-+-2))
     (45 44 (:REWRITE DEFAULT-CDR))
     (37 35 (:REWRITE DEFAULT-+-1))
     (33 32 (:REWRITE DEFAULT-CAR))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:TYPE-PRESCRIPTION DEFDATA::+-LISTS-RATIONALS-TYPE)))
(DEFDATA::+-LISTS--LEN (225 116 (:REWRITE DEFAULT-+-2))
                       (129 116 (:REWRITE DEFAULT-+-1))
                       (29 16 (:REWRITE DEFAULT-<-1))
                       (28 16 (:REWRITE DEFAULT-<-2))
                       (26 26
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (26 26 (:REWRITE DEFAULT-CAR)))
(DEFDATA::MAKE-LIST-AC=MAKE-LIST-LOGIC--LEMMA
     (128 16 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (72 8 (:DEFINITION LEN))
     (64 64 (:TYPE-PRESCRIPTION LEN))
     (50 24 (:REWRITE DEFAULT-CDR))
     (42 16 (:REWRITE DEFAULT-CAR))
     (20 12 (:REWRITE DEFAULT-+-2))
     (12 12 (:REWRITE DEFAULT-+-1))
     (6 6 (:REWRITE ZP-OPEN)))
(DEFDATA::MAKE-LIST-AC=MAKE-LIST-LOGIC-APPEND
     (48 6 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (27 3 (:DEFINITION LEN))
     (24 24 (:TYPE-PRESCRIPTION LEN))
     (15 9 (:REWRITE DEFAULT-CDR))
     (12 6 (:REWRITE DEFAULT-CAR))
     (10 7 (:REWRITE DEFAULT-+-2))
     (7 7 (:REWRITE DEFAULT-+-1))
     (6 6 (:REWRITE ZP-OPEN)))
(DEFDATA::MAKE-LIST-AC--TO--MAKE-LIST-LOGIC
     (8 2
        (:DEFINITION DEFDATA::MAKE-LIST-LOGIC))
     (2 2 (:REWRITE ZP-OPEN))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1)))
(DEFDATA::MAKE-LIST--LEN (20 3 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                         (10 7 (:REWRITE DEFAULT-+-2))
                         (7 7 (:REWRITE DEFAULT-+-1))
                         (5 4 (:REWRITE DEFAULT-CDR))
                         (3 3 (:REWRITE ZP-OPEN))
                         (3 3 (:REWRITE DEFAULT-<-2))
                         (3 3 (:REWRITE DEFAULT-<-1)))
(DEFDATA::MAKE-LIST--CONSP (9 3 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                           (3 3 (:TYPE-PRESCRIPTION LEN))
                           (3 3 (:REWRITE DEFDATA::MAKE-LIST--LEN))
                           (3 3 (:REWRITE DEFAULT-<-2))
                           (3 3 (:REWRITE DEFAULT-<-1))
                           (2 2 (:REWRITE DEFAULT-+-2))
                           (2 2 (:REWRITE DEFAULT-+-1)))
(DEFDATA::MAKE-LIST--NATS (43 5 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                          (24 2 (:DEFINITION LEN))
                          (17 17 (:TYPE-PRESCRIPTION LEN))
                          (9 3 (:DEFINITION NATP))
                          (8 8 (:REWRITE DEFAULT-<-2))
                          (8 8 (:REWRITE DEFAULT-<-1))
                          (8 6 (:REWRITE DEFAULT-CDR))
                          (7 5 (:REWRITE DEFDATA::MAKE-LIST--CONSP))
                          (6 4 (:REWRITE DEFAULT-CAR))
                          (6 4 (:REWRITE DEFAULT-+-2))
                          (4 4 (:REWRITE ZP-OPEN))
                          (4 4 (:REWRITE DEFAULT-+-1))
                          (3 3 (:REWRITE DEFDATA::MAKE-LIST--LEN)))
(DEFDATA::MAKE-LIST--POS
     (948 3 (:DEFINITION POSP))
     (927 21 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (912 3 (:DEFINITION DEFDATA::ALL-<=))
     (405 15 (:DEFINITION DEFDATA::MAX-NAT-LIST))
     (360 15 (:DEFINITION MAX))
     (333 156
          (:TYPE-PRESCRIPTION DEFDATA::MAX-NAT-LIST--NAT-LISTP))
     (303 6
          (:LINEAR DEFDATA::MAX-NAT-LIST<=SUM-LIST))
     (221 26 (:REWRITE DEFAULT-<-1))
     (213 6
          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (150 15 (:DEFINITION DEFDATA::SUM-LIST))
     (129 6 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (108 3
          (:LINEAR DEFDATA::MAX-NAT-LIST--NAT-LISTP2))
     (105 15
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (96 19 (:REWRITE DEFAULT-+-2))
     (78 39
         (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST-RATIONALS-TYPE))
     (78 39
         (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST-INTEGERS-TYPE))
     (69 3 (:LINEAR DEFDATA::SUM-LIST-NATS-TYPE))
     (51 49 (:REWRITE DEFAULT-CAR))
     (43 5 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (41 39 (:REWRITE DEFAULT-CDR))
     (39 39
         (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST))
     (33 33 (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (26 26 (:REWRITE DEFAULT-<-2))
     (24 6 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (24 2 (:DEFINITION LEN))
     (19 19 (:REWRITE DEFAULT-+-1))
     (17 17 (:TYPE-PRESCRIPTION LEN))
     (12 3
         (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (12 3
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (12 3 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (7 5 (:REWRITE DEFDATA::MAKE-LIST--CONSP))
     (6 6 (:REWRITE DEFDATA::ALL-<=--<=))
     (6 6 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (4 4 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE DEFDATA::MAKE-LIST--LEN)))
(DEFDATA::CAR--MAKE-LIST (40 2 (:DEFINITION DEFDATA::POS-LISTP))
                         (40 2 (:DEFINITION NAT-LISTP))
                         (27 9 (:REWRITE DEFAULT-CAR))
                         (26 1 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                         (26 1
                             (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                         (26 1 (:LINEAR DEFDATA::POS-LIST--FIRST))
                         (26 1
                             (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                         (15 5 (:REWRITE DEFDATA::MAKE-LIST--CONSP))
                         (15 5 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                         (12 12 (:REWRITE DEFAULT-<-2))
                         (12 12 (:REWRITE DEFAULT-<-1))
                         (10 10
                             (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                         (10 10 (:TYPE-PRESCRIPTION NAT-LISTP))
                         (6 6
                            (:TYPE-PRESCRIPTION DEFDATA::MAKE-LIST--POS))
                         (6 6
                            (:TYPE-PRESCRIPTION DEFDATA::MAKE-LIST--NATS))
                         (6 2 (:DEFINITION POSP))
                         (6 2 (:DEFINITION NATP))
                         (5 5 (:TYPE-PRESCRIPTION LEN))
                         (5 5 (:REWRITE DEFDATA::MAKE-LIST--LEN))
                         (4 4 (:REWRITE DEFAULT-CDR))
                         (2 2 (:REWRITE DEFDATA::MAKE-LIST--POS))
                         (2 2 (:REWRITE DEFDATA::MAKE-LIST--NATS))
                         (2 2 (:REWRITE DEFAULT-+-2))
                         (2 2 (:REWRITE DEFAULT-+-1)))
(DEFDATA::CDR--MAKE-LIST (8 2 (:REWRITE ZP-OPEN))
                         (6 2 (:REWRITE FOLD-CONSTS-IN-+))
                         (5 5 (:REWRITE DEFAULT-+-2))
                         (5 5 (:REWRITE DEFAULT-+-1))
                         (3 3 (:REWRITE DEFAULT-<-2))
                         (3 3 (:REWRITE DEFAULT-<-1))
                         (3 1 (:REWRITE DEFAULT-CDR)))
(DEFDATA::ALL-<=--MAKE-LIST
     (496 2 (:DEFINITION DEFDATA::<=-LISTS))
     (188 8 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (162 10 (:DEFINITION DEFDATA::POS-LISTP))
     (138 10 (:DEFINITION NAT-LISTP))
     (108 11 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (102 5
          (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (102 5 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (90 24 (:REWRITE DEFDATA::ALL-<=--<=))
     (90 5 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (90 5
         (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (88 68 (:REWRITE DEFAULT-<-2))
     (86 68 (:REWRITE DEFAULT-<-1))
     (74 10 (:DEFINITION POSP))
     (65 5 (:DEFINITION LEN))
     (60 60
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (50 50 (:TYPE-PRESCRIPTION NAT-LISTP))
     (50 10 (:DEFINITION NATP))
     (49 23 (:REWRITE DEFDATA::CDR--MAKE-LIST))
     (41 41 (:TYPE-PRESCRIPTION LEN))
     (40 38 (:REWRITE DEFAULT-CDR))
     (38 38
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (35 33 (:REWRITE DEFAULT-CAR))
     (24 10 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (19 13 (:REWRITE DEFDATA::MAKE-LIST--CONSP))
     (16 16
         (:TYPE-PRESCRIPTION DEFDATA::MAKE-LIST--POS))
     (15 10 (:REWRITE DEFAULT-+-2))
     (12 12
         (:TYPE-PRESCRIPTION DEFDATA::MAKE-LIST--NATS))
     (10 10 (:REWRITE DEFAULT-+-1))
     (9 9 (:REWRITE ZP-OPEN))
     (6 6 (:REWRITE DEFDATA::MAKE-LIST--LEN))
     (4 4 (:REWRITE DEFDATA::MAKE-LIST--POS))
     (4 4 (:REWRITE DEFDATA::MAKE-LIST--NATS))
     (4 4
        (:REWRITE DEFDATA::<=-LISTS--TRANSITIVE)))
(DEFDATA::PFIX--INTEGERP)
(DEFDATA::PFIX>=1)
(DEFDATA::PFIX= (4 2 (:LINEAR DEFDATA::PFIX>=1))
                (1 1 (:REWRITE DEFAULT-<-2))
                (1 1 (:REWRITE DEFAULT-<-1)))
(DEFDATA::POS-LIST-FIX--POS-LISTP
     (171 3 (:DEFINITION POSP))
     (150 6 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (135 3 (:DEFINITION DEFDATA::ALL-<=))
     (117 16 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (68 8 (:DEFINITION LEN))
     (60 60 (:TYPE-PRESCRIPTION LEN))
     (42 6 (:DEFINITION NAT-LISTP))
     (30 3 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (30 3
         (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (25 24 (:REWRITE DEFAULT-CDR))
     (24 6 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (18 18 (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (18 9 (:REWRITE DEFAULT-+-2))
     (17 16 (:REWRITE DEFAULT-CAR))
     (12 3
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (12 3 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (9 9 (:REWRITE DEFAULT-+-1))
     (6 6 (:REWRITE DEFAULT-<-2))
     (6 6 (:REWRITE DEFAULT-<-1))
     (6 6 (:REWRITE DEFDATA::ALL-<=--<=))
     (6 6 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (6 6 (:DEFINITION NATP))
     (3 3 (:REWRITE DEFDATA::PFIX=)))
(DEFDATA::POS-LIST-FIX--NAT-LISTP)
(DEFDATA::POS-LIST-FIX--INTEGER-LISTP)
(DEFDATA::POS-LIST-FIX--RATIONAL-LISTP)
(DEFDATA::POS-LIST-FIX--POS-LIST
     (1932 39 (:REWRITE DEFDATA::ALL-<=--CAR-<=))
     (1862 17 (:DEFINITION DEFDATA::ALL-<=))
     (1154 38 (:DEFINITION NAT-LISTP))
     (698 100
          (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (506 38 (:DEFINITION NATP))
     (480 12
          (:LINEAR DEFDATA::MAX-NAT-LIST<=SUM-LIST))
     (392 392 (:TYPE-PRESCRIPTION LEN))
     (362 50 (:DEFINITION LEN))
     (360 87 (:REWRITE DEFAULT-<-1))
     (358 9
          (:LINEAR DEFDATA::MAX-NAT-LIST--NAT-LISTP2))
     (176 64 (:REWRITE DEFAULT-+-2))
     (162 37 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (161 35
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (152 152 (:REWRITE DEFAULT-CAR))
     (148 148 (:REWRITE DEFAULT-CDR))
     (97 87 (:REWRITE DEFAULT-<-2))
     (91 91 (:TYPE-PRESCRIPTION DEFDATA::ALL-<=))
     (83 3 (:LINEAR DEFDATA::SUM-LIST-NATS-TYPE))
     (66 64 (:REWRITE DEFAULT-+-1))
     (60 10 (:REWRITE DEFAULT-*-2))
     (42 26
         (:TYPE-PRESCRIPTION DEFDATA::SUM-LIST-INTEGERS-TYPE))
     (35 21
         (:TYPE-PRESCRIPTION DEFDATA::PRODUCT-LIST-INTEGERS-TYPE))
     (31 31 (:REWRITE DEFDATA::ALL-<=--<=))
     (31 31 (:REWRITE DEFDATA::<=-LISTS--ALL-<=))
     (19 3
         (:LINEAR DEFDATA::SUM-LIST-POSES-TYPE))
     (15 1
         (:LINEAR DEFDATA::PRODUCT-LIST-POSES-TYPE))
     (15 1
         (:LINEAR DEFDATA::PRODUCT-LIST-NATS-TYPE))
     (12 10 (:REWRITE DEFAULT-*-1)))
(DEFDATA::POS-LIST-FIX--LEN (452 6
                                 (:REWRITE DEFDATA::POS-LIST-FIX--POS-LIST))
                            (436 7 (:DEFINITION DEFDATA::POS-LISTP))
                            (250 6 (:DEFINITION POSP))
                            (234 18 (:DEFINITION NAT-LISTP))
                            (180 27 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                            (140 11 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                            (140 11
                                 (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                            (86 86 (:TYPE-PRESCRIPTION NAT-LISTP))
                            (86 18 (:DEFINITION NATP))
                            (57 57
                                (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                            (44 43 (:REWRITE DEFAULT-CDR))
                            (33 33 (:REWRITE DEFAULT-CAR))
                            (32 16 (:REWRITE DEFAULT-+-2))
                            (29 29 (:REWRITE DEFAULT-<-2))
                            (29 29 (:REWRITE DEFAULT-<-1))
                            (22 11
                                (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                            (22 11 (:LINEAR DEFDATA::POS-LIST--FIRST))
                            (16 16 (:REWRITE DEFAULT-+-1))
                            (14 7 (:REWRITE DEFDATA::POS-LIST--FIRST))
                            (3 3 (:REWRITE DEFDATA::PFIX=)))
(DEFDATA::POS-LIST-FIX--CONS (438 8
                                  (:REWRITE DEFDATA::POS-LIST-FIX--POS-LIST))
                             (415 9 (:DEFINITION DEFDATA::POS-LISTP))
                             (273 9 (:DEFINITION POSP))
                             (152 20 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                             (144 16 (:DEFINITION NAT-LISTP))
                             (120 12 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                             (120 12
                                  (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                             (88 88 (:TYPE-PRESCRIPTION NAT-LISTP))
                             (86 86 (:TYPE-PRESCRIPTION LEN))
                             (80 80
                                 (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                             (73 11 (:DEFINITION LEN))
                             (67 34 (:REWRITE DEFAULT-CAR))
                             (48 16 (:DEFINITION NATP))
                             (42 12
                                 (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                             (42 12 (:LINEAR DEFDATA::POS-LIST--FIRST))
                             (40 40 (:REWRITE DEFAULT-CDR))
                             (26 26 (:REWRITE DEFAULT-<-2))
                             (26 26 (:REWRITE DEFAULT-<-1))
                             (22 11 (:REWRITE DEFAULT-+-2))
                             (18 8 (:REWRITE DEFDATA::POS-LIST--FIRST))
                             (12 12 (:REWRITE DEFDATA::PFIX=))
                             (12 2 (:REWRITE DEFDATA::POS-LIST-FIX--LEN))
                             (11 11 (:REWRITE DEFAULT-+-1))
                             (8 8
                                (:REWRITE DEFDATA::POS-LIST-FIX--POS-LISTP))
                             (8 8
                                (:REWRITE DEFDATA::POS-LIST-FIX--NAT-LISTP)))
(DEFDATA::POS-LIST-FIX--CDR (599 6
                                 (:REWRITE DEFDATA::POS-LIST-FIX--POS-LIST))
                            (582 7 (:DEFINITION DEFDATA::POS-LISTP))
                            (346 50 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
                            (299 7 (:DEFINITION POSP))
                            (284 20 (:DEFINITION NAT-LISTP))
                            (213 25 (:DEFINITION LEN))
                            (176 176 (:TYPE-PRESCRIPTION LEN))
                            (168 12 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
                            (168 12
                                 (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
                            (96 96 (:TYPE-PRESCRIPTION NAT-LISTP))
                            (92 20 (:DEFINITION NATP))
                            (64 64
                                (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
                            (62 31 (:REWRITE DEFAULT-+-2))
                            (37 37 (:REWRITE DEFAULT-CAR))
                            (32 32 (:REWRITE DEFAULT-<-2))
                            (32 32 (:REWRITE DEFAULT-<-1))
                            (31 31 (:REWRITE DEFAULT-+-1))
                            (24 12
                                (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
                            (24 12 (:LINEAR DEFDATA::POS-LIST--FIRST))
                            (16 8 (:REWRITE DEFDATA::POS-LIST--FIRST))
                            (4 4 (:REWRITE DEFDATA::PFIX=)))
(DEFDATA::POS-LIST-FIX--CONSP
     (492 6
          (:REWRITE DEFDATA::POS-LIST-FIX--POS-LIST))
     (476 7 (:DEFINITION DEFDATA::POS-LISTP))
     (297 40 (:REWRITE DEFDATA::LEN=0--NOT-CONSP))
     (266 18 (:DEFINITION NAT-LISTP))
     (266 6 (:DEFINITION POSP))
     (171 171 (:TYPE-PRESCRIPTION LEN))
     (161 20 (:DEFINITION LEN))
     (156 11 (:LINEAR DEFDATA::SUM-LIST>=ELEMENT))
     (156 11
          (:LINEAR DEFDATA::MAX-NAT-LIST>=ELEMENT))
     (86 86 (:TYPE-PRESCRIPTION NAT-LISTP))
     (86 18 (:DEFINITION NATP))
     (57 57
         (:TYPE-PRESCRIPTION DEFDATA::POS-LISTP))
     (53 53 (:REWRITE DEFAULT-CDR))
     (42 21 (:REWRITE DEFAULT-+-2))
     (39 3 (:REWRITE DEFDATA::POS-LIST-FIX--LEN))
     (33 33 (:REWRITE DEFAULT-CAR))
     (29 29 (:REWRITE DEFAULT-<-2))
     (29 29 (:REWRITE DEFAULT-<-1))
     (22 11
         (:LINEAR DEFDATA::PRODUCT-LIST>=ELEMENT))
     (22 11 (:LINEAR DEFDATA::POS-LIST--FIRST))
     (21 21 (:REWRITE DEFAULT-+-1))
     (14 7 (:REWRITE DEFDATA::POS-LIST--FIRST))
     (3 3 (:REWRITE DEFDATA::PFIX=)))