(NEXTT)
(RUN (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(DEFAULT-STATE)
(CUTPOINT)
(ASSERTION)
(EXITPOINT)
(|STEPS-TO-CUTPOINT-TAIL-arity-1-defpun-test|)
(|STEPS-TO-CUTPOINT-TAIL-arity-1-defpun-base|)
(|STEPS-TO-CUTPOINT-TAIL-arity-1-step|)
(|STEPS-TO-CUTPOINT-TAIL-arity-1-defpun-stn|
     (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(|STEPS-TO-CUTPOINT-TAIL-arity-1-defpun-fn|
     (12 12
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
     (5 1 (:REWRITE O<=-O-FINP-DEF))
     (3 3 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE DEFAULT-<-1))
     (2 1 (:REWRITE O-INFP-O-FINP-O<=))
     (2 1 (:REWRITE AC-<))
     (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE DEFAULT-+-2))
     (1 1 (:REWRITE DEFAULT-+-1)))
(|STEPS-TO-CUTPOINT-TAIL-arity-1|
     (1 1
        (:TYPE-PRESCRIPTION |STEPS-TO-CUTPOINT-TAIL-arity-1-defpun-stn|)))
(|STEPS-TO-CUTPOINT-TAIL-arity-1-DEF|)
(STEPS-TO-CUTPOINT-TAIL)
(STEPS-TO-CUTPOINT-TAIL-DEF (6 6 (:REWRITE DEFAULT-CAR))
                            (4 2 (:REWRITE DEFAULT-+-2))
                            (3 3 (:REWRITE DEFAULT-CDR))
                            (2 2
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (2 2 (:REWRITE DEFAULT-+-1))
                            (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
                            (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(STEPS-TO-CUTPOINT)
(NEXTT-CUTPOINT)
(|default state is not cutpoint|)
(|some cutpoint reachable via nextt|)
(CUTPOINT-INDUCTION (3 3
                       (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|)))
(STEPS-TO-CUTPOINT-TAIL-INV
     (254 13 (:REWRITE ZP-OPEN))
     (192 3 (:REWRITE NATP-POSP))
     (130 130
          (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (101 5 (:REWRITE NATP-RW))
     (87 3 (:REWRITE POSP-RW))
     (70 69 (:REWRITE DEFAULT-+-2))
     (69 69
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (69 69 (:REWRITE DEFAULT-+-1))
     (64 19 (:REWRITE |(< d (+ c x))|))
     (61 50
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (56 56
         (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (50 50 (:REWRITE |(< (- x) (- y))|))
     (30 30 (:REWRITE SIMPLIFY-SUMS-<))
     (30 30 (:REWRITE DEFAULT-<-2))
     (30 30 (:REWRITE DEFAULT-<-1))
     (30 30 (:META CANCEL_PLUS-LESSP-CORRECT))
     (15 15 (:REWRITE |(< (- x) 0)|))
     (14 14 (:REWRITE |(< (+ c x) d)|))
     (10 10 (:REWRITE REDUCE-INTEGERP-+))
     (10 10 (:REWRITE INTEGERP-MINUS-X))
     (10 10 (:META META-INTEGERP-CORRECT))
     (9 9
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-A+AB-<-0))
     (9 9 (:REWRITE FOLD-CONSTS-IN-+))
     (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
     (7 7 (:REWRITE |(< 0 (- x))|))
     (5 5 (:REWRITE |(< d (+ c x y))|))
     (1 1 (:REWRITE |(< (+ d x) (+ c y))|))
     (1 1 (:REWRITE |(< (+ c x) (+ d y))|)))
(STEPS-TO-CUTPOINT-IS-NATP
     (44 5 (:REWRITE ZP-OPEN))
     (19 4 (:REWRITE NATP-RW))
     (13 2 (:REWRITE |(< d (+ c x))|))
     (6 6
        (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (6 6
        (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (6 6
        (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
     (6 6
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (6 6 (:REWRITE NORMALIZE-ADDENDS))
     (6 6 (:REWRITE DEFAULT-+-2))
     (6 6 (:REWRITE DEFAULT-+-1))
     (5 5 (:REWRITE SIMPLIFY-SUMS-<))
     (5 5
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (5 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (5 5 (:REWRITE DEFAULT-<-2))
     (5 5 (:REWRITE DEFAULT-<-1))
     (5 5 (:REWRITE |(< (- x) (- y))|))
     (5 5 (:META CANCEL_PLUS-LESSP-CORRECT))
     (5 1 (:REWRITE |(+ c (+ d x))|))
     (4 4 (:REWRITE REDUCE-INTEGERP-+))
     (4 4 (:REWRITE INTEGERP-MINUS-X))
     (4 4 (:META META-INTEGERP-CORRECT))
     (3 3
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
     (3 3 (:REWRITE |(< 0 (- x))|)))
(STEPS-TO-CUTPOINT-NATP-OR-ORDINAL
     (32 2 (:REWRITE ZP-OPEN))
     (7 1 (:REWRITE NATP-RW))
     (3 3 (:REWRITE REDUCE-INTEGERP-+))
     (3 3 (:REWRITE INTEGERP-MINUS-X))
     (3 3 (:META META-INTEGERP-CORRECT))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-A+AB))
     (2 2 (:REWRITE SIMPLIFY-SUMS-<))
     (2 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (2 2
        (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (2 2
        (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
     (2 2 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (2 2
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (2 2 (:REWRITE NORMALIZE-ADDENDS))
     (2 2 (:REWRITE DEFAULT-<-2))
     (2 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE DEFAULT-+-2))
     (2 2 (:REWRITE DEFAULT-+-1))
     (2 2 (:REWRITE |(< 0 (- x))|))
     (2 2 (:REWRITE |(< (- x) (- y))|))
     (2 2 (:META CANCEL_PLUS-LESSP-CORRECT))
     (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (1 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (1 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:META CANCEL_TIMES-EQUAL-CORRECT))
     (1 1 (:META CANCEL_PLUS-EQUAL-CORRECT)))
(|some cutpoint is reachable|
     (58 1 (:DEFINITION RUN))
     (51 1 (:REWRITE ZP-OPEN))
     (22 2
         (:REWRITE INTEGERP-+-REDUCE-LEADING-RATIONAL-CONSTANT))
     (18 2 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (14 4 (:REWRITE REDUCE-INTEGERP-+))
     (11 2 (:REWRITE |(+ c (+ d x))|))
     (8 2 (:REWRITE NATP-RW))
     (5 5 (:META META-INTEGERP-CORRECT))
     (4 4
        (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (4 4
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (4 4 (:REWRITE NORMALIZE-ADDENDS))
     (4 4 (:REWRITE INTEGERP-MINUS-X))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1))
     (3 2
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (2 2
        (:REWRITE REMOVE-WEAK-INEQUALITIES-TWO))
     (2 2
        (:REWRITE REMOVE-WEAK-INEQUALITIES-ONE))
     (2 2 (:REWRITE |(< d (+ c x))|))
     (2 2 (:REWRITE |(< (- x) (- y))|))
     (2 2 (:REWRITE |(+ 0 x)|))
     (1 1 (:REWRITE SIMPLIFY-SUMS-<))
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE |(< 0 (- x))|))
     (1 1 (:META CANCEL_PLUS-LESSP-CORRECT)))
