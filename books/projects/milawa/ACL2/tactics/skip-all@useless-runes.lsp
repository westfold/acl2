(MILAWA::TACTIC.SKIP-ALL-OKP
     (64 1
         (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (62 1
         (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (6 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
     (6 1
        (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (6 1
        (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (2 2 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (2 2
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (2 2
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (2 2 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (2 2
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
     (2 2
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
     (2 2
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP))
     (1 1
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (1 1
        (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP-ALT))
     (1 1
        (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP))
     (1 1
        (:REWRITE MILAWA::EQUAL-OF-BOOLEANS-REWRITE))
     (1 1
        (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PORS))
     (1 1
        (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PNOTS))
     (1 1
        (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PEQUALS)))
(MILAWA::BOOLEANP-OF-TACTIC.SKIP-ALL-OKP
     (128 2
          (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
     (124 2
          (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
     (62 2 (:DEFINITION NOT))
     (21 5
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
     (12 2
         (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
     (10 5
         (:REWRITE MILAWA::CONSP-WHEN-TRUE-LISTP-CHEAP))
     (10 5
         (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
     (6 1
        (:REWRITE MILAWA::BOOLEANP-WHEN-NATP-CHEAP))
     (5 5
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
     (5 5
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
     (5 5
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP))
     (4 4 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
     (4 4
        (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
     (4 4 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
     (4 4
        (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
     (2 2 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
     (2 2
        (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
     (2 2
        (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP-ALT))
     (2 2
        (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP))
     (2 2 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
     (2 2
        (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (2 2
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (2 2
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (2 2
        (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
     (2 2
        (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP-ALT))
     (2 2
        (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP))
     (2 2
        (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PORS))
     (2 2
        (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PNOTS))
     (2 2
        (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PEQUALS))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP-ALT))
     (1 1
        (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP))
     (1 1
        (:REWRITE MILAWA::FORCING-TRUE-LISTP-OF-TACTIC.SKELETON->GOALS))
     (1 1
        (:REWRITE MILAWA::BOOLEANP-WHEN-CONSP-CHEAP)))
(MILAWA::TACTIC.SKIP-ALL-TAC)
(MILAWA::FORCING-TACTIC.SKELETONP-OF-TACTIC.SKIP-ALL-TAC
     (18 2
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
     (4 4
        (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (4 4
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (4 4
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (2 2
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
     (2 2
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
     (2 2
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP)))
(MILAWA::FORCING-TACTIC.SKIP-ALL-OKP-OF-TACTIC.SKIP-ALL-TAC
     (27 3
         (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
     (6 6
        (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
     (6 6
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
     (6 6
        (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
     (3 3
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
     (3 3
        (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
     (3 3
        (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP)))
(MILAWA::TACTIC.SKIP-ALL-COMPILE)
(MILAWA::TACTIC.SKIP-ALL-COMPILE
 (196 4
      (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
 (187 4
      (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
 (138 3
      (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-WHEN-NOT-CONSP))
 (93 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
 (50 2
     (:REWRITE MILAWA::LOGIC.DISJOIN-EACH-FORMULA-LIST-WHEN-NOT-CONSP))
 (46 1
     (:REWRITE MILAWA::LOGIC.STRIP-CONCLUSIONS-WHEN-NOT-CONSP))
 (38 2
     (:REWRITE MILAWA::LOGIC.TERM-LIST-LIST-FORMULAS-WHEN-NOT-CONSP))
 (36 11
     (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
 (33 3
     (:REWRITE MILAWA::CONSP-OF-LOGIC.TERM-LIST-LIST-FORMULAS))
 (26 1
     (:REWRITE MILAWA::LOGIC.FORMULA-LISTP-WHEN-DEFINITION-LISTP))
 (24 4
     (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
 (24 4
     (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
 (23 1
     (:REWRITE MILAWA::DEFINITION-LISTP-WHEN-NOT-CONSP))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
 (19 19
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
 (16 16
     (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
 (16 16
     (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
 (16 16
     (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
 (16 16
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
 (16 16
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
 (16 16
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
 (16 16
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
 (15 15
     (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
 (15 15
     (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
 (15 15
     (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP))
 (10 1
     (:REWRITE MILAWA::CONSP-OF-LOGIC.DISJOIN-EACH-FORMULA-LIST))
 (8 8 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
 (8 8
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
 (8 8
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
 (8 8 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
 (8 8
    (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
 (5 5
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
 (5 5
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
 (5 5
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP-ALT))
 (5 5
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP))
 (5 5 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
 (5 5
    (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
 (5 5
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP-ALT))
 (5 5
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP))
 (5 5 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
 (4 4
    (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
 (4 4
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP-ALT))
 (4 4
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP))
 (4 4
    (:REWRITE MILAWA::EQUAL-OF-BOOLEANS-REWRITE))
 (4 4
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PORS))
 (4 4
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PNOTS))
 (4 4
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PEQUALS))
 (3
  3
  (:REWRITE
     MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP-ALT))
 (3 3
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP))
 (3 3
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP-ALT))
 (3 3
    (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP))
 (1 1
    (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-ONE))
 (1 1
    (:REWRITE MILAWA::DEFINITION-LISTP-OF-SUBSETP-WHEN-DEFINITION-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::DEFINITION-LISTP-OF-SUBSETP-WHEN-DEFINITION-LISTP))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP)))
(MILAWA::FORCING-LOGIC.APPEAL-LISTP-OF-TACTIC.SKIP-ALL-COMPILE
 (93 3
     (:REWRITE MILAWA::CONSP-OF-LOGIC.TERM-LIST-LIST-FORMULAS))
 (80 2
     (:REWRITE MILAWA::CONSP-OF-LOGIC.DISJOIN-EACH-FORMULA-LIST))
 (64 1
     (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
 (62 1
     (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
 (56 1
     (:REWRITE MILAWA::LOGIC.FORMULA-LISTP-WHEN-DEFINITION-LISTP))
 (53 1
     (:REWRITE MILAWA::DEFINITION-LISTP-WHEN-NOT-CONSP))
 (53 1
     (:REWRITE MILAWA::BUILD.SKIP-LIST-WHEN-NOT-CONSP))
 (51 9
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
 (46 1
     (:REWRITE MILAWA::LOGIC.STRIP-CONCLUSIONS-WHEN-NOT-CONSP))
 (46 1
     (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-WHEN-NOT-CONSP))
 (40 1
     (:REWRITE MILAWA::LOGIC.DISJOIN-EACH-FORMULA-LIST-WHEN-NOT-CONSP))
 (37 1
     (:REWRITE MILAWA::LOGIC.TERM-LIST-LIST-FORMULAS-WHEN-NOT-CONSP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
 (14 4
     (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
 (9 9
    (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
 (9 9
    (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP))
 (8 8
    (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
 (8 8
    (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
 (8 8
    (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
 (6 1
    (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
 (6 1
    (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP-ALT))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP))
 (2 2 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
 (2 2
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
 (2 2
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
 (2 2 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
 (2 2 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
 (2 2
    (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
 (2 2
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP-ALT))
 (2 2
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP))
 (2 2 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
 (2 2
    (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
 (1
  1
  (:REWRITE
     MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP-ALT))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP))
 (1 1
    (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
 (1 1
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP-ALT))
 (1 1
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP))
 (1 1
    (:REWRITE MILAWA::EQUAL-OF-BOOLEANS-REWRITE))
 (1 1
    (:REWRITE MILAWA::DEFINITION-LISTP-OF-SUBSETP-WHEN-DEFINITION-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::DEFINITION-LISTP-OF-SUBSETP-WHEN-DEFINITION-LISTP))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PORS))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PNOTS))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PEQUALS)))
(MILAWA::FORCING-LOGIC.STRIP-CONCLUSIONS-OF-TACTIC.SKIP-ALL-COMPILE
 (93 3
     (:REWRITE MILAWA::CONSP-OF-LOGIC.TERM-LIST-LIST-FORMULAS))
 (80 2
     (:REWRITE MILAWA::CONSP-OF-LOGIC.DISJOIN-EACH-FORMULA-LIST))
 (64 1
     (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
 (62 1
     (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
 (56 1
     (:REWRITE MILAWA::LOGIC.FORMULA-LISTP-WHEN-DEFINITION-LISTP))
 (53 1
     (:REWRITE MILAWA::DEFINITION-LISTP-WHEN-NOT-CONSP))
 (53 1
     (:REWRITE MILAWA::BUILD.SKIP-LIST-WHEN-NOT-CONSP))
 (51 9
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
 (46 1
     (:REWRITE MILAWA::LOGIC.STRIP-CONCLUSIONS-WHEN-NOT-CONSP))
 (46 1
     (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-WHEN-NOT-CONSP))
 (41 2
     (:REWRITE MILAWA::LOGIC.DISJOIN-EACH-FORMULA-LIST-WHEN-NOT-CONSP))
 (38 2
     (:REWRITE MILAWA::LOGIC.TERM-LIST-LIST-FORMULAS-WHEN-NOT-CONSP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
 (14 14
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
 (14 4
     (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
 (11 11
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
 (9 9
    (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
 (9 9
    (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP))
 (8 8
    (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
 (8 8
    (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
 (8 8
    (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
 (6 1
    (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
 (6 1
    (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP-ALT))
 (2 2
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP))
 (2 2 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
 (2 2
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
 (2 2
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
 (2 2 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
 (2 2 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
 (2 2
    (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
 (2 2
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP-ALT))
 (2 2
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP))
 (2 2 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
 (2 2
    (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
 (1
  1
  (:REWRITE
     MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP-ALT))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP))
 (1 1
    (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
 (1 1
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP-ALT))
 (1 1
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP))
 (1 1
    (:REWRITE MILAWA::EQUAL-OF-BOOLEANS-REWRITE))
 (1 1
    (:REWRITE MILAWA::DEFINITION-LISTP-OF-SUBSETP-WHEN-DEFINITION-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::DEFINITION-LISTP-OF-SUBSETP-WHEN-DEFINITION-LISTP))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PORS))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PNOTS))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PEQUALS)))
(MILAWA::FORCING-LOGIC.PROOF-LISTP-OF-TACTIC.SKIP-ALL-COMPILE
 (64 1
     (:REWRITE MILAWA::SAME-LENGTH-PREFIXES-EQUAL-CHEAP))
 (62 2
     (:REWRITE MILAWA::CONSP-OF-LOGIC.TERM-LIST-LIST-FORMULAS))
 (62 1
     (:REWRITE MILAWA::PREFIXP-WHEN-NOT-CONSP-TWO))
 (57 9
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP))
 (53 1
     (:REWRITE MILAWA::BUILD.SKIP-LIST-WHEN-NOT-CONSP))
 (46 1
     (:REWRITE MILAWA::LOGIC.STRIP-CONCLUSIONS-WHEN-NOT-CONSP))
 (46 1
     (:REWRITE MILAWA::LOGIC.PROOF-LISTP-WHEN-NOT-CONSP))
 (46 1
     (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-WHEN-NOT-CONSP))
 (40 1
     (:REWRITE MILAWA::LOGIC.DISJOIN-EACH-FORMULA-LIST-WHEN-NOT-CONSP))
 (40 1
     (:REWRITE MILAWA::CONSP-OF-LOGIC.DISJOIN-EACH-FORMULA-LIST))
 (37 1
     (:REWRITE MILAWA::LOGIC.TERM-LIST-LIST-FORMULAS-WHEN-NOT-CONSP))
 (20 5
     (:REWRITE MILAWA::CONSP-WHEN-NATP-CHEAP))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP-ALT))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.TYPED-RULEMAPP))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP-ALT))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.THEORY-MAPP))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP-ALT))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.FAST-CACHEMAPP))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP-ALT))
 (12 12
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-RW.CACHEMAPP))
 (10 10
     (:REWRITE MILAWA::MEMBERP-WHEN-MEMBERP-OF-CDR))
 (10 10
     (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-TWO))
 (10 10
     (:REWRITE MILAWA::IN-SUPERSET-WHEN-IN-SUBSET-ONE))
 (10 10
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP-ALT))
 (10 10
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAPP))
 (10 10
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP-ALT))
 (10 10
     (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.CALLMAP-ATBLP))
 (9 9
    (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-REWRITE.SYNTAXP-ARITY-TABLE))
 (9 9
    (:REWRITE MILAWA::LOGIC.ARITY-TABLEP-OF-LOGIC.INITIAL-ARITY-TABLE))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-NONEMPTY-SUBSET-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-NONE-CONSP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.SIGMA-ATBLP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-LOGIC.ARITY-TABLEP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP-ALT))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-OF-CONS-LISTP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-MEMBERP-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-LOGIC.LAMBDAP-CHEAP))
 (9 9
    (:REWRITE MILAWA::CONSP-WHEN-LOGIC.FUNCTIONP-CHEAP))
 (6 1
    (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS-TWO))
 (6 1
    (:REWRITE MILAWA::NOT-EQUAL-WHEN-LESS))
 (3 3
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-TUPLEP))
 (3 3
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-NOT-CONSP))
 (3 3
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP-ALT))
 (3 3
    (:REWRITE MILAWA::TRUE-LISTP-WHEN-MEMBERP-OF-TRUE-LIST-LISTP))
 (3 3 (:REWRITE MILAWA::NATP-WHEN-ZP-CHEAP))
 (3 3
    (:REWRITE MILAWA::NATP-WHEN-NOT-ZP-CHEAP))
 (3 3
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP-ALT))
 (3 3
    (:REWRITE MILAWA::NATP-WHEN-MEMBERP-OF-NAT-LISTP))
 (3 3 (:REWRITE MILAWA::NATP-OF-LEN-FREE))
 (2 2 (:REWRITE MILAWA::TRICHOTOMY-OF-<))
 (2 2
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-TWO))
 (2 2
    (:REWRITE MILAWA::TRANSITIVITY-OF-<-THREE))
 (2 2 (:REWRITE MILAWA::TRANSITIVITY-OF-<))
 (2 2
    (:REWRITE MILAWA::LESS-WHEN-ZP-LEFT-CHEAP))
 (1
  1
  (:REWRITE
       MILAWA::LOGIC.PROOF-LISTP-WHEN-MEMBERP-OF-LOGIC.PROOF-LIST-LISTP-ALT))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.PROOF-LISTP-WHEN-MEMBERP-OF-LOGIC.PROOF-LIST-LISTP))
 (1
  1
  (:REWRITE MILAWA::LOGIC.PROOF-LISTP-OF-SUBSETP-WHEN-LOGIC.PROOF-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::LOGIC.PROOF-LISTP-OF-SUBSETP-WHEN-LOGIC.PROOF-LISTP))
 (1 1
    (:REWRITE MILAWA::LOGIC.PROOF-LISTP-IN-LARGER-THEOREM-SET))
 (1 1
    (:REWRITE MILAWA::LOGIC.PROOF-LISTP-IN-LARGER-AXIOM-SET))
 (1 1
    (:REWRITE MILAWA::LOGIC.FORMULA-LIST-ATBLP-OF-WHEN-LOGIC.PROVABLE-LISTP))
 (1
  1
  (:REWRITE
     MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP-ALT))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-WHEN-MEMBERP-OF-LOGIC.APPEAL-LIST-LISTP))
 (1 1
    (:REWRITE
         MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::LOGIC.APPEAL-LISTP-OF-SUBSETP-WHEN-LOGIC.APPEAL-LISTP))
 (1 1
    (:REWRITE MILAWA::FORCING-PREFIXP-WHEN-NOT-PREFIXP-BADGUY))
 (1 1
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP-ALT))
 (1 1
    (:REWRITE MILAWA::EQUAL-WHEN-MEMBERP-OF-ALL-EQUALP))
 (1 1
    (:REWRITE MILAWA::EQUAL-OF-BOOLEANS-REWRITE))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP-ALT))
 (1 1
    (:REWRITE MILAWA::CONS-LISTP-WHEN-MEMBERP-OF-CONS-LIST-LISTP))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PORS))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PNOTS))
 (1 1
    (:REWRITE MILAWA::AGGRESSIVE-EQUAL-OF-LOGIC.PEQUALS)))
