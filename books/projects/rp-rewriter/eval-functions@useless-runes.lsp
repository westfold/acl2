(RP::CREATE-EVAL-FNC
 (24 24 (:REWRITE DEFAULT-CAR))
 (10 10 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(APPLY-FOR-DEFEVALUATOR)
(RP::RP-EVL)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(RP::RP-EVL-OF-FNCALL-ARGS)
(RP::RP-EVL-OF-VARIABLE)
(RP::RP-EVL-OF-QUOTE)
(RP::RP-EVL-OF-LAMBDA)
(RP::RP-EVL-LST-OF-ATOM)
(RP::RP-EVL-LST-OF-CONS)
(RP::RP-EVL-OF-NONSYMBOL-ATOM)
(RP::RP-EVL-OF-BAD-FNCALL)
(RP::RP-EVL-OF-EQUAL-CALL)
(RP::RP-EVL-OF-FALIST-CALL)
(RP::RP-EVL-OF-NOT-CALL)
(RP::RP-EVL-OF-IF-CALL)
(RP::RP-EVL-OF-HIDE-CALL)
(RP::RP-EVL-OF-IMPLIES-CALL)
(RP::RP-EVL-OF-CONS-CALL)
(RP::RP-EVL-OF-SYNP-CALL)
(RP::RP-EVL-OF-RETURN-LAST-CALL)
(RP::RP-EVL-OF-RP-CALL)
(RP::RP-EVL-OF-CDR-CALL)
(RP::RP-EVL-OF-CAR-CALL)
(RP::RP-EVL-OF-IFF-CALL)
(RP::RP-EVL-OF-TYPESPEC-CHECK-CALL)
(RP::RP-EVL-OF-ACL2-NUMBERP-CALL)
(RP::RP-EVL-OF-UNARY---CALL)
(RP::RP-EVL-OF-UNARY-/-CALL)
(RP::RP-EVL-OF-<-CALL)
(RP::RP-EVL-OF-CHAR-CODE-CALL)
(RP::RP-EVL-OF-CHARACTERP-CALL)
(RP::RP-EVL-OF-CODE-CHAR-CALL)
(RP::RP-EVL-OF-INTEGERP-CALL)
(RP::RP-EVL-OF-NATP-CALL)
(RP::RP-EVL-OF-ZP-CALL)
(RP::RP-EVL-OF-BITP-CALL)
(RP::RP-EVL-OF-RATIONALP-CALL)
(RP::RP-EVL-OF-SYMBOLP-CALL)
(RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL)
(RP::RP-EVL-OF-DENOMINATOR-CALL)
(RP::RP-EVL-OF-STRINGP-CALL)
(RP::RP-EVL-OF-NUMERATOR-CALL)
(RP::RP-EVL-OF-REALPART-CALL)
(RP::RP-EVL-OF-IMAGPART-CALL)
(RP::RP-EVL-OF-COERCE-CALL)
(RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL)
(RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL)
(RP::RP-EVL-OF-SYMBOL-NAME-CALL)
(RP::RP-EVL-OF-BAD-ATOM<=-CALL)
(RP::RP-EVL-OF-BINARY-+-CALL)
(RP::RP-EVL-OF-BINARY-*-CALL)
(RP::RP-EVL-OF-CONSP-CALL)
(RP::RP-EVL-OF-FORCE-CALL)
(RP::RP-EVL-OF-FORCE$-CALL)
(RP::RP-EVL-OF-RP-EQUAL-CALL)
(RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL)
(RP::RP-EVL-OF-RP-EQUAL-CNT-CALL)
(RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL)
(RP::RP-EVL-DISJOIN-CONS)
(RP::RP-EVL-DISJOIN-WHEN-CONSP)
(RP::RP-EVL-DISJOIN-ATOM
 (1 1 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 )
(RP::RP-EVL-DISJOIN-APPEND
 (23 23 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (23 23 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 )
(RP::RP-EVL-CONJOIN-CONS)
(RP::RP-EVL-CONJOIN-WHEN-CONSP)
(RP::RP-EVL-CONJOIN-ATOM
 (1 1 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 )
(RP::RP-EVL-CONJOIN-APPEND
 (23 23 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (23 23 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 )
(RP::RP-EVL-CONJOIN-CLAUSES-CONS
 (100 50 (:DEFINITION DISJOIN))
 (50 50 (:DEFINITION DISJOIN2))
 (7 7 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (5 5 (:REWRITE RP::RP-EVL-CONJOIN-ATOM))
 )
(RP::RP-EVL-CONJOIN-CLAUSES-WHEN-CONSP
 (24 24 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (24 24 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (18 9 (:DEFINITION DISJOIN))
 (9 9 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (9 9 (:DEFINITION DISJOIN2))
 )
(RP::RP-EVL-CONJOIN-CLAUSES-ATOM
 (1 1 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 )
(RP::RP-EVL-CONJOIN-CLAUSES-APPEND
 (65 65 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (65 65 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (24 12 (:DEFINITION DISJOIN))
 (12 12 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (12 12 (:DEFINITION DISJOIN2))
 )
(RP::RP-EVL-THEOREMP-CONJOIN-CONS
 (53 53 (:REWRITE RP::RP-EVL-CONJOIN-ATOM))
 )
(RP::RP-EVL-THEOREMP-CONJOIN-APPEND)
(RP::RP-EVL-THEOREMP-CONJOIN-CLAUSES-CONS
 (3 3 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 (3 3 (:REWRITE RP::RP-EVL-CONJOIN-ATOM))
 )
(RP::RP-EVL-THEOREMP-CONJOIN-CLAUSES-APPEND
 (15 15 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 )
(RP::RP-EVL-THEOREMP-DISJOIN-CONS-UNLESS-THEOREMP
 (4 4 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 )
(RP::RP-EVL-THEOREMP-DISJOIN-WHEN-CONSP-UNLESS-THEOREMP
 (4 4 (:REWRITE RP::RP-EVL-DISJOIN-ATOM))
 )
(RP::RP-EVL-FALSIFY-SUFFICIENT)
(RP::RP-EVL-META-EXTRACT-CONTEXTUAL-BADGUY-SUFFICIENT)
(RP::RP-EVL-META-EXTRACT-GLOBAL-BADGUY-SUFFICIENT)
(RP::RP-EVL-META-EXTRACT-GLOBAL-BADGUY-TRUE-LISTP)
(RP::RP-EVL-META-EXTRACT-TYPESET)
(RP::RP-EVL-META-EXTRACT-RW+-EQUAL)
(RP::RP-EVL-META-EXTRACT-RW+-IFF)
(RP::RP-EVL-META-EXTRACT-RW+-EQUIV)
(RP::RP-EVL-META-EXTRACT-RW-EQUAL)
(RP::RP-EVL-META-EXTRACT-RW-IFF)
(RP::RP-EVL-META-EXTRACT-RW-EQUIV)
(RP::RP-EVL-META-EXTRACT-MFC-AP)
(RP::RP-EVL-META-EXTRACT-RELIEVE-HYP)
(RP::RP-EVL-META-EXTRACT-FORMULA
 (9 9 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (9 9 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (9 9 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (9 9 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (9 9 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (9 9 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (9 9 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (9 9 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (9 9 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (8 8 (:REWRITE RP::RP-EVL-OF-NONSYMBOL-ATOM))
 (8 8 (:REWRITE RP::RP-EVL-OF-BAD-FNCALL))
 )
(RP::RP-EVL-META-EXTRACT-LEMMA-TERM)
(RP::RP-EVL-META-EXTRACT-LEMMA)
(RP::RP-EVL-META-EXTRACT-FNCALL-LOGIC)
(RP::RP-EVL-META-EXTRACT-FNCALL)
(RP::RP-EVL-META-EXTRACT-MAGIC-EV)
(RP::RP-EVL-META-EXTRACT-MAGIC-EV-LST)
(RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF)
(RP::RP-EVL-LST-OF-PAIRLIS)
(RP::RP-EVL-LST-OF-PAIRLIS-APPEND-REST)
(RP::RP-EVL-LST-OF-PAIRLIS-APPEND-HEAD-REST)
(RP::EVAL-AND-ALL
 (4 1 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (3 1 (:DEFINITION ALISTP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(RP::VALID-SC
 (993 722 (:REWRITE RP::MEASURE-LEMMA1))
 (699 3 (:DEFINITION RP::RP-TRANS))
 (542 34 (:DEFINITION RP::EX-FROM-RP))
 (437 163 (:REWRITE DEFAULT-CDR))
 (416 1 (:DEFINITION RP::EVAL-AND-ALL))
 (403 232 (:REWRITE RP::MEASURE-LEMMA1-2))
 (336 3 (:DEFINITION RP::IS-FALIST))
 (267 3 (:DEFINITION RP::TRANS-LIST))
 (260 84 (:REWRITE DEFAULT-CAR))
 (36 18 (:REWRITE RP::CONS-COUNT-ATOM))
 (33 33 (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
 (9 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (9 3 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (9 3 (:DEFINITION QUOTEP))
 (8 8 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (3 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (1 1 (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
 )
(RP::FLAG-VALID-SC
 (993 722 (:REWRITE RP::MEASURE-LEMMA1))
 (699 3 (:DEFINITION RP::RP-TRANS))
 (542 34 (:DEFINITION RP::EX-FROM-RP))
 (437 163 (:REWRITE DEFAULT-CDR))
 (416 1 (:DEFINITION RP::EVAL-AND-ALL))
 (403 232 (:REWRITE RP::MEASURE-LEMMA1-2))
 (336 3 (:DEFINITION RP::IS-FALIST))
 (267 3 (:DEFINITION RP::TRANS-LIST))
 (260 84 (:REWRITE DEFAULT-CAR))
 (36 18 (:REWRITE RP::CONS-COUNT-ATOM))
 (33 33 (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
 (11 11 (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
 (9 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (9 3 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (9 3 (:DEFINITION QUOTEP))
 (8 8 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (3 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (1 1 (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(RP::FLAG-VALID-SC-EQUIVALENCES)
(RP::EVALS-EQUAL-SK)
(RP::EVALS-EQUAL-SK-NECC)
(RP::EVAL-AND-ALL-NT
 (4 1 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (3 1 (:DEFINITION ALISTP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 )
(RP::VALID-SC-NT
 (525 434 (:REWRITE RP::MEASURE-LEMMA1))
 (183 1 (:DEFINITION RP::EVAL-AND-ALL-NT))
 (155 10 (:DEFINITION RP::EX-FROM-RP))
 (137 61 (:REWRITE DEFAULT-CDR))
 (110 39 (:REWRITE DEFAULT-CAR))
 (64 64 (:REWRITE RP::MEASURE-LEMMA1-2))
 (36 18 (:REWRITE RP::CONS-COUNT-ATOM))
 (9 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (9 3 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (3 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (1 1 (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
 )
(RP::FLAG-VALID-SC-NT
 (525 434 (:REWRITE RP::MEASURE-LEMMA1))
 (183 1 (:DEFINITION RP::EVAL-AND-ALL-NT))
 (155 10 (:DEFINITION RP::EX-FROM-RP))
 (137 61 (:REWRITE DEFAULT-CDR))
 (110 39 (:REWRITE DEFAULT-CAR))
 (64 64 (:REWRITE RP::MEASURE-LEMMA1-2))
 (36 18 (:REWRITE RP::CONS-COUNT-ATOM))
 (11 11 (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
 (9 3 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (9 3 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (9 3 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (3 3 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (1 1 (:REWRITE RP::EQUALITY-MEASURE-LEMMA3))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(RP::FLAG-VALID-SC-NT-EQUIVALENCES)
