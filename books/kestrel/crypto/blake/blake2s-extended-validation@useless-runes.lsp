(BLAKE::XOR-LEMMA
 (17 9 (:REWRITE BVCAT-TRIM-CONSTANT-ARG2))
 (11 6 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
 (10 9 (:REWRITE BVCAT-TRIM-CONSTANT-ARG4))
 (10 2 (:REWRITE BOUND-FROM-NATP-FACT))
 (9 9 (:REWRITE UNSIGNED-BYTE-P-WHEN-ZP-CHEAP))
 (9 9 (:REWRITE BVCAT-TIGHTEN-LOW-ARG))
 (9 9 (:REWRITE BVCAT-TIGHTEN-HIGH-ARG))
 (9 5 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (8 8 (:REWRITE UNSIGNED-BYTE-P-WHEN-TOP-BIT-0))
 (8 8 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND-<=-VERSION))
 (8 8 (:REWRITE REWRITE-UNSIGNED-BYTE-P-WHEN-TERM-SIZE-IS-LARGER))
 (7 6 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
 (6 6 (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
 (6 6 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (5 5 (:REWRITE BVXOR-TRIM-ARG2))
 (5 5 (:REWRITE BVCHOP-WHEN-TOP-BIT-NOT-1-FAKE-FREE))
 (5 5 (:REWRITE BVCHOP-WHEN-GETBIT-AND-BVCHOP-KNOWN))
 (5 5 (:REWRITE BVCHOP-SUBST-WHEN-EQUAL-OF-BVCHOPS-GEN))
 (5 5 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (5 5 (:REWRITE BVCHOP-OF-EXPT-ALT))
 (5 5 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (5 5 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (4 4 (:TYPE-PRESCRIPTION NATP-OF-BVCHOP))
 (4 4 (:REWRITE BVCAT-OF-BVCHOP-LOW))
 (4 4 (:REWRITE <-FROM-<=-FREE))
 (4 2 (:REWRITE NOT-<-WHEN-SBVLT-ALT))
 (4 2 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 (3 3 (:REWRITE SLICE-WHEN-NOT-BVLT-FREE))
 (3 3 (:REWRITE SLICE-WHEN-BVLT-GEN))
 (3 3 (:REWRITE SLICE-TOO-HIGH-IS-0-CHEAP))
 (3 3 (:REWRITE SLICE-TIGHTEN-TOP-QUOTEP))
 (3 3 (:REWRITE SLICE-TIGHTEN-TOP-FREE))
 (3 3 (:REWRITE SLICE-TIGHTEN-TOP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE BVXOR-WITH-SMALLER-ARG-2))
 (3 3 (:REWRITE BOUND-WHEN-USB2))
 (3 3 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (3 3 (:REWRITE <-WHEN-BVLT))
 (3 3 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (2 2 (:REWRITE USE-<=-BOUND-TO-DROP-<=-HYP))
 (2 2 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (2 2 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (2 2 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (2 2 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (2 2 (:REWRITE SLICE-OUT-OF-ORDER))
 (2 2 (:REWRITE NOT-<-WHEN-SBVLT))
 (2 2 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (2 2 (:REWRITE BVXOR-SUBST-ARG3))
 (2 2 (:REWRITE BVXOR-SUBST-ARG2))
 (2 2 (:REWRITE BOUND-WHEN-USB))
 (2 2 (:REWRITE <-OF-NEGATIVE-WHEN-USBP))
 (2 2 (:REWRITE <-OF-CONSTANT-WHEN-UNSIGNED-BYTE-P-SIZE-PARAM))
 (2 2 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-ALT-NON-DAG))
 (1 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (1 1 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (1 1 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (1 1 (:REWRITE UBP-LONGER-BETTER))
 (1 1 (:REWRITE SLICE-OF-BVXOR-TOO-HIGH))
 (1 1 (:REWRITE SLICE-OF-BVXOR-TIGHTEN))
 (1 1 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-2))
 (1 1 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-1))
 (1 1 (:REWRITE NOT-EQUAL-WHEN-NOT-EQUAL-BVCHOP))
 (1 1 (:REWRITE INTEGERP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (1 1 (:REWRITE INTEGERP-WHEN-UNSIGNED-BYTE-P-FREE))
 (1 1 (:REWRITE INTEGERP-WHEN-SIGNED-BYTE-P))
 (1 1 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (1 1 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (1 1 (:REWRITE EQUAL-WHEN-BVLT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P-ALT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-SLICE-EQUAL-CONSTANT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SLICE-EQUAL-CONSTANT))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (1 1 (:REWRITE ADD-BVCHOPS-TO-EQUALITY-OF-SBPS-1))
 )
(BLAKE::XOR-LEMMA2
 (42 27 (:REWRITE UNSIGNED-BYTE-P-WHEN-ZP-CHEAP))
 (26 26 (:REWRITE UNSIGNED-BYTE-P-WHEN-TOP-BIT-0))
 (26 26 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND-<=-VERSION))
 (25 17 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
 (24 3 (:DEFINITION LEN))
 (23 23 (:REWRITE SLICE-WHEN-NOT-BVLT-FREE))
 (23 23 (:REWRITE SLICE-WHEN-BVLT-GEN))
 (23 23 (:REWRITE SLICE-TOO-HIGH-IS-0-CHEAP))
 (23 23 (:REWRITE SLICE-TIGHTEN-TOP-QUOTEP))
 (23 23 (:REWRITE SLICE-TIGHTEN-TOP-FREE))
 (23 23 (:REWRITE SLICE-TIGHTEN-TOP))
 (23 12 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (21 19 (:REWRITE BVCAT-TRIM-CONSTANT-ARG4))
 (20 13 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (20 10 (:REWRITE SLICE-SAME-WHEN-NOT-0))
 (19 17 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
 (19 13 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (18 18 (:REWRITE BVCHOP-WHEN-GETBIT-AND-BVCHOP-KNOWN))
 (18 18 (:REWRITE BVCHOP-SUBST-WHEN-EQUAL-OF-BVCHOPS-GEN))
 (18 18 (:REWRITE BVCHOP-SUBST-CONSTANT-FROM-LOGEXT))
 (18 18 (:REWRITE BVCHOP-OF-EXPT-ALT))
 (18 18 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (18 18 (:REWRITE BVCAT-TIGHTEN-LOW-ARG))
 (18 18 (:REWRITE BVCAT-TIGHTEN-HIGH-ARG))
 (17 17 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (16 16 (:REWRITE BVCHOP-WHEN-TOP-BIT-NOT-1-FAKE-FREE))
 (16 12 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 (15 15 (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
 (12 12 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (12 12 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (12 12 (:REWRITE BVXOR-SUBST-ARG3))
 (12 12 (:REWRITE BVXOR-SUBST-ARG2))
 (12 3 (:REWRITE BOUND-FROM-NATP-FACT))
 (10 10 (:TYPE-PRESCRIPTION SLICE-SAME-TYPE))
 (8 8 (:TYPE-PRESCRIPTION GETBIT-TYPE))
 (8 8 (:REWRITE BVXOR-OF-BVCAT-LOW-ARG3))
 (8 4 (:REWRITE GETBIT-WHEN-NOT-1))
 (8 4 (:REWRITE GETBIT-WHEN-NOT-0))
 (8 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (6 6 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (6 6 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (6 6 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (6 6 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (6 6 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (6 6 (:REWRITE SLICE-OUT-OF-ORDER))
 (6 6 (:REWRITE SLICE-OF-BVXOR-TOO-HIGH))
 (6 6 (:REWRITE SLICE-OF-BVXOR-TIGHTEN))
 (6 6 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-2))
 (6 6 (:REWRITE <-FROM-<=-FREE))
 (6 3 (:REWRITE NOT-<-WHEN-SBVLT-ALT))
 (6 3 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE ADD-BVCHOPS-TO-EQUALITY-OF-SBPS-1))
 (5 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (4 4 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (4 4 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (4 4 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (4 4 (:REWRITE GETBIT-WHEN-BVLT-OF-SMALL))
 (4 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP-FREE))
 (4 4 (:REWRITE GETBIT-TOO-HIGH-CHEAP))
 (4 4 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE BOUND-WHEN-USB2))
 (4 4 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (4 4 (:REWRITE <-WHEN-BVLT))
 (4 4 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (3 3 (:REWRITE USE-<=-BOUND-TO-DROP-<=-HYP))
 (3 3 (:REWRITE PLUS-BVCAT-WITH-0-ALT))
 (3 3 (:REWRITE PLUS-BVCAT-WITH-0))
 (3 3 (:REWRITE NOT-EQUAL-WHEN-NOT-EQUAL-BVCHOP))
 (3 3 (:REWRITE NOT-<-WHEN-SBVLT))
 (3 3 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (3 3 (:REWRITE EQUAL-WHEN-BVLT))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (3 3 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P-ALT))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-SLICE-EQUAL-CONSTANT))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SLICE-EQUAL-CONSTANT))
 (3 3 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE BOUND-WHEN-USB))
 (3 3 (:REWRITE <-OF-NEGATIVE-WHEN-USBP))
 (3 3 (:REWRITE <-OF-CONSTANT-WHEN-UNSIGNED-BYTE-P-SIZE-PARAM))
 (3 3 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-ALT-NON-DAG))
 (3 3 (:REWRITE +-OF-MINUS-CONSTANT-VERSION))
 (2 2 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (2 2 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-WHEN-<=-CHEAP))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-FROM-BOUND))
 (2 2 (:REWRITE UNSIGNED-BYTE-P-FALSE-WHEN-NOT-LONGER))
 (2 2 (:REWRITE UBP-LONGER-BETTER))
 (2 2 (:REWRITE BVXOR-OF-BVXOR-TIGHTEN-ALT))
 (2 2 (:REWRITE BVXOR-COMMUTATIVE-2-ALT))
 (2 2 (:REWRITE BVXOR-COMBINE-CONSTANTS))
 (1 1 (:REWRITE INTEGERP-WHEN-UNSIGNED-BYTE-P-SIZE-ARG))
 (1 1 (:REWRITE INTEGERP-WHEN-UNSIGNED-BYTE-P-FREE))
 (1 1 (:REWRITE INTEGERP-WHEN-SIGNED-BYTE-P))
 (1 1 (:REWRITE INTEGERP-FROM-UNSIGNED-BYTE-P-SIZE-PARAM))
 (1 1 (:REWRITE EQUAL-OF-CONSTANT-AND-BVXOR-OF-CONSTANT))
 (1 1 (:REWRITE BVCAT-WHEN-EQUAL-OF-GETBIT-0-HIGH))
 (1 1 (:REWRITE BVCAT-SUBST-1))
 )
(BLAKE::BLAKE2S-EXTENDED-WHEN-NO-SALT-OR-PERSONALIZATION
 (128 4 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (74 37 (:REWRITE DEFAULT-+-2))
 (65 13 (:DEFINITION LEN))
 (57 37 (:REWRITE DEFAULT-+-1))
 (28 16 (:REWRITE DEFAULT-<-1))
 (24 4 (:DEFINITION NFIX))
 (22 16 (:REWRITE DEFAULT-<-2))
 (20 20 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (20 20 (:REWRITE DEFAULT-CDR))
 (13 7 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (12 8 (:REWRITE DEFAULT-*-2))
 (12 8 (:REWRITE DEFAULT-*-1))
 (12 1 (:REWRITE BLAKE::XOR-LEMMA))
 (11 11 (:TYPE-PRESCRIPTION BVXOR-TYPE))
 (11 7 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 (8 8 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (8 7 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (8 6 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
 (8 6 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
 (8 5 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (8 4 (:REWRITE IFIX-WHEN-INTEGERP))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE DEFAULT-NUMERATOR))
 (8 4 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (7 7 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVXOR-SUBST-ARG3))
 (7 7 (:REWRITE BVXOR-SUBST-ARG2))
 (7 5 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (5 5 (:TYPE-PRESCRIPTION NATP-OF-BVCAT-TYPE))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
 (5 5 (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
(BLAKE::BLAKE2S-EXTENDED-WHEN-ZERO-SALT-AND-PERSONALIZATION
 (128 4 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (74 37 (:REWRITE DEFAULT-+-2))
 (65 13 (:DEFINITION LEN))
 (57 37 (:REWRITE DEFAULT-+-1))
 (28 16 (:REWRITE DEFAULT-<-1))
 (24 4 (:DEFINITION NFIX))
 (22 16 (:REWRITE DEFAULT-<-2))
 (20 20 (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (20 20 (:REWRITE DEFAULT-CDR))
 (13 7 (:REWRITE BVXOR-WHEN-Y-IS-NOT-AN-INTEGER))
 (12 8 (:REWRITE DEFAULT-*-2))
 (12 8 (:REWRITE DEFAULT-*-1))
 (12 1 (:REWRITE BLAKE::XOR-LEMMA))
 (11 11 (:TYPE-PRESCRIPTION BVXOR-TYPE))
 (11 7 (:REWRITE BVXOR-OF-CONSTANT-TRIM-ARG1))
 (8 8 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (8 7 (:REWRITE BVXOR-WHEN-X-IS-NOT-AN-INTEGER))
 (8 6 (:REWRITE BVCAT-FIX-CONSTANT-ARG4))
 (8 6 (:REWRITE BVCAT-FIX-CONSTANT-ARG2))
 (8 5 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (8 4 (:REWRITE IFIX-WHEN-INTEGERP))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 4 (:REWRITE DEFAULT-NUMERATOR))
 (8 4 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-POSITIVE))
 (7 7 (:REWRITE BVXOR-WHEN-SIZE-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVXOR-SUBST-ARG3))
 (7 7 (:REWRITE BVXOR-SUBST-ARG2))
 (7 5 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (6 6 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (5 5 (:TYPE-PRESCRIPTION NATP-OF-BVCAT-TYPE))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
 (5 5 (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
 (4 4 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:TYPE-PRESCRIPTION POSP))
 )
