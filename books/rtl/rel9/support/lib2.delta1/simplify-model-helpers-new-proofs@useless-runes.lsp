(LNOT_ALT-IS-LNOT
 (16 2 (:REWRITE BITS-TAIL))
 (14 8 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE A4))
 (10 8 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION BITS-NONNEGATIVE-INTEGERP-TYPE))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 2 (:REWRITE BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (6 2 (:REWRITE BITS-NEG))
 (4 4 (:TYPE-PRESCRIPTION EXPT-2-POSITIVE-INTEGER-TYPE))
 (4 4 (:TYPE-PRESCRIPTION BVECP))
 (4 2 (:REWRITE UNICITY-OF-0))
 (4 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:DEFINITION FIX))
 )
(EQUAL-LNOT_ALT-0
 (1 1 (:REWRITE BVECP-MONOTONE))
 )
(EQUAL-LNOT_ALT-1
 (1 1 (:REWRITE BVECP-MONOTONE))
 )
(BITS_ALT-IF)
(BITN_ALT-IF)
(BITS_ALT-IF1
 (8 4 (:REWRITE BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (6 4 (:REWRITE BITS-NEG))
 (3 3 (:REWRITE IF1-NON-0))
 (3 2 (:REWRITE DEFAULT-<-2))
 (3 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(BITN_ALT-IF1
 (10 4 (:REWRITE BVECP-BITN-0))
 (7 4 (:REWRITE BITN-NEG))
 (3 3 (:REWRITE IF1-NON-0))
 (2 2 (:REWRITE BVECP-MONOTONE))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(LOG=-0-REWRITE_ALT
 (1 1 (:REWRITE BVECP-MONOTONE))
 )
(LOG<>-IS-LNOT_ALT-LOG=)
(CAT_ALT-COMBINE-CONSTANTS
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CAT-COMBINE-CONSTANTS))
 )
