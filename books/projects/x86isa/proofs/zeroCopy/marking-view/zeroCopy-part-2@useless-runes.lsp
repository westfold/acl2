(X86ISA::I64-WHEN-CANONICAL-ADDRESS-P
 (41654 2979 (:REWRITE |(* (- x) y)|))
 (41510 2973 (:REWRITE |(- (* c x))|))
 (41450 2967 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-LEFT))
 (31428 9 (:REWRITE CANCEL-MOD-+))
 (14875 2979 (:REWRITE DEFAULT-MINUS))
 (10495 3 (:REWRITE CANCEL-FLOOR-+))
 (6061 6061 (:REWRITE DEFAULT-TIMES-2))
 (6054 6054 (:REWRITE DEFAULT-TIMES-1))
 (5985 5985 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (3089 3089 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (3085 3085 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (3085 3085 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (3085 3085 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (560 560 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (560 560 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (560 560 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (387 12 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (385 11 (:REWRITE MOD-X-Y-=-X . 4))
 (325 11 (:REWRITE MOD-X-Y-=-X . 3))
 (315 95 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
 (315 95 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
 (285 3 (:REWRITE FLOOR-ZERO . 3))
 (251 95 (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
 (251 95 (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
 (228 57 (:REWRITE |(* y x)|))
 (228 11 (:REWRITE MOD-ZERO . 3))
 (198 11 (:REWRITE MOD-ZERO . 4))
 (156 15 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (140 140 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (140 140 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (140 140 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (140 140 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (140 140 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (140 4 (:REWRITE FLOOR-ZERO . 5))
 (135 2 (:REWRITE MOD-X-Y-=-X-Y . 1))
 (129 12 (:REWRITE DEFAULT-MOD-RATIO))
 (104 104 (:TYPE-PRESCRIPTION INTEGERP-/-EXPT-1))
 (100 5 (:REWRITE FLOOR-=-X/Y . 3))
 (100 5 (:REWRITE FLOOR-=-X/Y . 2))
 (99 43 (:REWRITE DEFAULT-PLUS-2))
 (95 95 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
 (95 95 (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
 (95 95 (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
 (95 95 (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
 (95 95 (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
 (93 3 (:REWRITE <-*-/-LEFT-COMMUTED))
 (81 4 (:LINEAR MOD-BOUNDS-3))
 (80 5 (:REWRITE |(integerp (- x))|))
 (78 18 (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (77 43 (:REWRITE DEFAULT-PLUS-1))
 (72 15 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (72 15 (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (68 56 (:REWRITE DEFAULT-LESS-THAN-1))
 (67 55 (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (67 55 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (60 12 (:REWRITE MOD-X-Y-=-X-Y . 3))
 (60 12 (:REWRITE MOD-X-Y-=-X-Y . 2))
 (60 12 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (59 56 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (59 56 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (56 56 (:REWRITE THE-FLOOR-BELOW))
 (56 56 (:REWRITE THE-FLOOR-ABOVE))
 (56 56 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (56 56 (:REWRITE DEFAULT-LESS-THAN-2))
 (56 56 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (56 56 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (56 56 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (56 56 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (56 56 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (56 56 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (56 56 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (56 56 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (56 56 (:REWRITE |(< (/ x) (/ y))|))
 (56 56 (:REWRITE |(< (- x) (- y))|))
 (55 55 (:REWRITE SIMPLIFY-SUMS-<))
 (55 55 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (55 55 (:REWRITE INTEGERP-<-CONSTANT))
 (55 55 (:REWRITE CONSTANT-<-INTEGERP))
 (55 55 (:REWRITE |(< (- x) c)|))
 (54 18 (:REWRITE NORMALIZE-ADDENDS))
 (52 5 (:REWRITE DEFAULT-FLOOR-RATIO))
 (50 4 (:REWRITE |(+ y (+ x z))|))
 (45 9 (:REWRITE MOD-X-Y-=-X . 2))
 (45 9 (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
 (45 9 (:REWRITE MOD-CANCEL-*-CONST))
 (45 9 (:REWRITE |(mod (+ x (mod a b)) y)|))
 (45 9 (:REWRITE |(mod (+ x (- (mod a b))) y)|))
 (45 9 (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
 (41 41 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (40 8 (:LINEAR MOD-BOUNDS-2))
 (36 36 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (36 36 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (36 36 (:REWRITE |(< (/ x) 0)|))
 (36 36 (:REWRITE |(< (* x y) 0)|))
 (32 32 (:REWRITE REDUCE-INTEGERP-+))
 (32 32 (:REWRITE INTEGERP-MINUS-X))
 (32 32 (:META META-INTEGERP-CORRECT))
 (25 5 (:REWRITE FLOOR-X-Y-=--1 . 3))
 (20 20 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
 (20 4 (:REWRITE FLOOR-X-Y-=-1 . 3))
 (20 4 (:REWRITE FLOOR-X-Y-=-1 . 2))
 (18 18 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (16 16 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (16 16 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (16 16 (:REWRITE |(< 0 (/ x))|))
 (16 16 (:REWRITE |(< 0 (* x y))|))
 (15 15 (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (15 15 (:REWRITE |(equal c (/ x))|))
 (15 15 (:REWRITE |(equal c (- x))|))
 (15 15 (:REWRITE |(equal (/ x) c)|))
 (15 15 (:REWRITE |(equal (/ x) (/ y))|))
 (15 15 (:REWRITE |(equal (- x) c)|))
 (15 15 (:REWRITE |(equal (- x) (- y))|))
 (15 3 (:REWRITE FLOOR-ZERO . 2))
 (15 3 (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
 (15 3 (:REWRITE FLOOR-CANCEL-*-CONST))
 (15 3 (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
 (12 12 (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (12 12 (:REWRITE DEFAULT-MOD-2))
 (12 12 (:REWRITE DEFAULT-MOD-1))
 (12 6 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (11 11 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (9 9 (:REWRITE THIS-NEEDS-TO-BE-ADDED-TO-QUOTIENT-REMAINDER-LEMMAS))
 (9 9 (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (9 9 (:REWRITE |(mod x (- y))| . 3))
 (9 9 (:REWRITE |(mod x (- y))| . 2))
 (9 9 (:REWRITE |(mod x (- y))| . 1))
 (9 9 (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
 (9 9 (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
 (9 9 (:REWRITE |(mod (- x) y)| . 3))
 (9 9 (:REWRITE |(mod (- x) y)| . 2))
 (9 9 (:REWRITE |(mod (- x) y)| . 1))
 (9 9 (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
 (9 9 (:DEFINITION FIX))
 (9 2 (:REWRITE |(+ c (+ d x))|))
 (6 6 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (6 6 (:TYPE-PRESCRIPTION ABS))
 (6 6 (:REWRITE |(+ x (- x))|))
 (5 5 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (5 5 (:REWRITE DEFAULT-FLOOR-2))
 (5 5 (:REWRITE DEFAULT-FLOOR-1))
 (3 3 (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (3 3 (:REWRITE |(floor x (- y))| . 2))
 (3 3 (:REWRITE |(floor x (- y))| . 1))
 (3 3 (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
 (3 3 (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
 (3 3 (:REWRITE |(floor (- x) y)| . 2))
 (3 3 (:REWRITE |(floor (- x) y)| . 1))
 (3 3 (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
 (3 3 (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (1 1 (:REWRITE |(equal x (if a b c))|))
 (1 1 (:REWRITE |(equal (if a b c) x)|))
 (1 1 (:REWRITE |(- (if a b c))|))
 (1 1 (:REWRITE |(+ 0 x)|))
 )
(X86ISA::REWIRE_DST_TO_SRC-EFFECTS-46-TO-58-INSTRUCTIONS
 (2013394 1006697 (:REWRITE-QUOTED-CONSTANT GL::BFR-VARNAME-FIX-UNDER-BFR-VARNAME-EQUIV))
 (1635443 1635443 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (1006697 1006697 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1006697 1006697 (:REWRITE GL::BFR-VARNAME-FIX-UNDER-BFR-VARNAME-EQUIV))
 (11745 11745 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (7 7 (:REWRITE-QUOTED-CONSTANT X86ISA::RFLAGSBITS-FIX-UNDER-RFLAGSBITS-EQUIV))
 )
