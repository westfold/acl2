(PROOF-CHECKER-ITP13::VARIABLEP)
(PROOF-CHECKER-ITP13::LITERALP)
(PROOF-CHECKER-ITP13::LITERALP-IMPLIES-EQLABLEP)
(PROOF-CHECKER-ITP13::LITERAL-LISTP)
(PROOF-CHECKER-ITP13::LITERAL-LISTP-IMPLIES-EQLABLE-LISTP
 (15 5 (:REWRITE PROOF-CHECKER-ITP13::LITERALP-IMPLIES-EQLABLEP))
 (11 11 (:REWRITE DEFAULT-CAR))
 (5 5 (:TYPE-PRESCRIPTION PROOF-CHECKER-ITP13::LITERALP))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(PROOF-CHECKER-ITP13::LITERAL-LISTP-IMPLIES-LITERALP-MEMBER
 (23 23 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 )
(PROOF-CHECKER-ITP13::LITERAL-LISTP-APPEND
 (46 23 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (41 35 (:REWRITE DEFAULT-CAR))
 (37 31 (:REWRITE DEFAULT-CDR))
 (23 23 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (23 23 (:TYPE-PRESCRIPTION BINARY-APPEND))
 )
(PROOF-CHECKER-ITP13::NEGATEDP)
(PROOF-CHECKER-ITP13::NEGATE)
(PROOF-CHECKER-ITP13::LITERALP-NEGATE
 (2 2 (:REWRITE PROOF-CHECKER-ITP13::LITERAL-LISTP-IMPLIES-LITERALP-MEMBER))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(PROOF-CHECKER-ITP13::LITERALP-IMPLIES-NOT-EQUAL-NEGATE)
(PROOF-CHECKER-ITP13::NEGATE-NEGATE)
