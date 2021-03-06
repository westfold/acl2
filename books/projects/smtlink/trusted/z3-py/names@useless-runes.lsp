(SMT::CHARACTER-FIX)
(SMT::CHARACTER-FIX-IDEMPOTENT-LEMMA)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(SMT::CHARACTER-EQUIV$INLINE)
(SMT::CHARACTER-EQUIV-IS-AN-EQUIVALENCE)
(SMT::CHARACTER-EQUIV-IMPLIES-EQUAL-CHARACTER-FIX-1)
(SMT::CHARACTER-FIX-UNDER-CHARACTER-EQUIV)
(TMP-DEFTYPES-CHARACTERP-OF-CHARACTER-FIX)
(TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP)
(SMT::SPECIAL-CHAR-ALISTP)
(SMT::BOOLEANP-OF-CHARACTERP-FOR-SPECIAL-CHAR-ALISTP-KEY-LEMMA)
(SMT::BOOLEANP-OF-CHARACTER-LISTP-FOR-SPECIAL-CHAR-ALISTP-VAL-LEMMA)
(SMT::BOOLEANP-OF-CHARACTERP-FOR-SPECIAL-CHAR-ALISTP-KEY)
(SMT::BOOLEANP-OF-CHARACTER-LISTP-FOR-SPECIAL-CHAR-ALISTP-VAL)
(SMT::SPECIAL-CHAR-ALISTP-OF-REVAPPEND)
(SMT::SPECIAL-CHAR-ALISTP-OF-REMOVE)
(SMT::SPECIAL-CHAR-ALISTP-OF-LAST)
(SMT::SPECIAL-CHAR-ALISTP-OF-NTHCDR)
(SMT::SPECIAL-CHAR-ALISTP-OF-BUTLAST)
(SMT::SPECIAL-CHAR-ALISTP-OF-UPDATE-NTH)
(SMT::SPECIAL-CHAR-ALISTP-OF-REPEAT)
(SMT::SPECIAL-CHAR-ALISTP-OF-TAKE)
(SMT::SPECIAL-CHAR-ALISTP-OF-UNION-EQUAL)
(SMT::SPECIAL-CHAR-ALISTP-OF-INTERSECTION-EQUAL-2)
(SMT::SPECIAL-CHAR-ALISTP-OF-INTERSECTION-EQUAL-1)
(SMT::SPECIAL-CHAR-ALISTP-OF-SET-DIFFERENCE-EQUAL)
(SMT::SPECIAL-CHAR-ALISTP-SET-EQUIV-CONGRUENCE)
(SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL)
(SMT::SPECIAL-CHAR-ALISTP-OF-RCONS)
(SMT::SPECIAL-CHAR-ALISTP-OF-REV)
(SMT::SPECIAL-CHAR-ALISTP-OF-DUPLICATED-MEMBERS)
(SMT::SPECIAL-CHAR-ALISTP-OF-DIFFERENCE)
(SMT::SPECIAL-CHAR-ALISTP-OF-INTERSECT-2)
(SMT::SPECIAL-CHAR-ALISTP-OF-INTERSECT-1)
(SMT::SPECIAL-CHAR-ALISTP-OF-UNION)
(SMT::SPECIAL-CHAR-ALISTP-OF-MERGESORT)
(SMT::SPECIAL-CHAR-ALISTP-OF-DELETE)
(SMT::SPECIAL-CHAR-ALISTP-OF-INSERT)
(SMT::SPECIAL-CHAR-ALISTP-OF-SFIX)
(SMT::SPECIAL-CHAR-ALISTP-OF-LIST-FIX)
(SMT::SPECIAL-CHAR-ALISTP-OF-APPEND)
(SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP)
(SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP)
(SMT::SPECIAL-CHAR-ALISTP-OF-CONS)
(SMT::SPECIAL-CHAR-ALISTP-OF-HONS-SHRINK-ALIST
     (74 10
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP))
     (32 32
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
     (16 16
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP))
     (1 1
        (:TYPE-PRESCRIPTION
             SMT::BOOLEANP-OF-CHARACTERP-FOR-SPECIAL-CHAR-ALISTP-KEY)))
(SMT::SPECIAL-CHAR-ALISTP-OF-HONS-ACONS)
(SMT::CHARACTER-LISTP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-SPECIAL-CHAR-ALISTP)
(SMT::CHARACTER-LISTP-OF-CDAR-WHEN-SPECIAL-CHAR-ALISTP)
(SMT::CHARACTERP-OF-CAAR-WHEN-SPECIAL-CHAR-ALISTP)
(SMT::SPECIAL-CHAR-ALIST-FIX$INLINE)
(SMT::SPECIAL-CHAR-ALISTP-OF-SPECIAL-CHAR-ALIST-FIX
 (300 7
      (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
 (257 19
      (:REWRITE SMT::CHARACTERP-OF-CAAR-WHEN-SPECIAL-CHAR-ALISTP))
 (257 7
      (:REWRITE TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP))
 (237 8
      (:DEFINITION SMT::SPECIAL-CHAR-ALISTP))
 (182 12
      (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP))
 (168 6 (:DEFINITION CHARACTER-LISTP))
 (97 15
     (:REWRITE SMT::CHARACTER-LISTP-OF-CDAR-WHEN-SPECIAL-CHAR-ALISTP))
 (96 12
     (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
 (96 12
     (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
 (90 80
     (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
 (72 12
     (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
 (48 48 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (36 36
     (:TYPE-PRESCRIPTION STR::OCTAL-DIGIT-LISTP))
 (36 36
     (:TYPE-PRESCRIPTION STR::HEX-DIGIT-LISTP))
 (36 36
     (:TYPE-PRESCRIPTION STR::DIGIT-LISTP))
 (32 32 (:REWRITE DEFAULT-CAR))
 (24 24
     (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (24 24
     (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (24 24 (:REWRITE DEFAULT-CDR))
 (24 12
     (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
 (24 12
     (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (24 12
     (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
 (18 18
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
 (12 12
     (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
 (12 12
     (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (12 12
     (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
 (10 10 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (8 4 (:DEFINITION SMT::CHARACTER-FIX))
 (4 4
    (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-ATOM)))
(SMT::SPECIAL-CHAR-ALIST-FIX-WHEN-SPECIAL-CHAR-ALISTP
 (479 29
      (:REWRITE SMT::CHARACTER-LISTP-OF-CDAR-WHEN-SPECIAL-CHAR-ALISTP))
 (461 17 (:DEFINITION CHARACTER-LISTP))
 (338 19
      (:REWRITE SMT::CHARACTERP-OF-CAAR-WHEN-SPECIAL-CHAR-ALISTP))
 (330 26
      (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP))
 (248 122
      (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
 (226 34
      (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
 (226 34
      (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
 (170 34
      (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
 (78 78 (:REWRITE DEFAULT-CAR))
 (56 56
     (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (56 56
     (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
 (54 54 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (53 53 (:REWRITE DEFAULT-CDR))
 (52 26
     (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
 (52 26
     (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
 (52 26
     (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
 (42 6
     (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (28 28
     (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
 (28 28
     (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
 (28 28
     (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
 (25 25
     (:REWRITE CAR-OF-TRUE-LIST-LIST-FIX-X-NORMALIZE-CONST-UNDER-LIST-EQUIV))
 (18 18 (:REWRITE SUBSETP-TRANS2))
 (18 18 (:REWRITE SUBSETP-TRANS))
 (12 12 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (12 12 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (6 6 (:REWRITE SUBSETP-REFL)))
(SMT::SPECIAL-CHAR-ALIST-FIX$INLINE
     (38 6
         (:REWRITE SMT::CHARACTER-LISTP-OF-CDAR-WHEN-SPECIAL-CHAR-ALISTP))
     (34 26
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
     (29 5
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP))
     (29 4
         (:REWRITE SMT::CHARACTERP-OF-CAAR-WHEN-SPECIAL-CHAR-ALISTP))
     (13 13
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP))
     (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL)))
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
     (2 2
        (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
     (1 1
        (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP)))
(SMT::SPECIAL-CHAR-ALIST-EQUIV$INLINE)
(SMT::SPECIAL-CHAR-ALIST-EQUIV-IS-AN-EQUIVALENCE)
(SMT::SPECIAL-CHAR-ALIST-EQUIV-IMPLIES-EQUAL-SPECIAL-CHAR-ALIST-FIX-1)
(SMT::SPECIAL-CHAR-ALIST-FIX-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::EQUAL-OF-SPECIAL-CHAR-ALIST-FIX-1-FORWARD-TO-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::EQUAL-OF-SPECIAL-CHAR-ALIST-FIX-2-FORWARD-TO-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::SPECIAL-CHAR-ALIST-EQUIV-OF-SPECIAL-CHAR-ALIST-FIX-1-FORWARD)
(SMT::SPECIAL-CHAR-ALIST-EQUIV-OF-SPECIAL-CHAR-ALIST-FIX-2-FORWARD)
(SMT::CONS-OF-CHARACTER-FIX-K-UNDER-SPECIAL-CHAR-ALIST-EQUIV
     (30 4
         (:REWRITE SMT::SPECIAL-CHAR-ALIST-FIX-WHEN-SPECIAL-CHAR-ALISTP))
     (19 2
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CONS))
     (6 6
        (:TYPE-PRESCRIPTION SMT::SPECIAL-CHAR-ALISTP))
     (6 6 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
     (6 6
        (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
     (4 2
        (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
     (3 3
        (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP)))
(SMT::CONS-OF-CHARACTER-FIX-K-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::CONS-CHARACTER-EQUIV-CONGRUENCE-ON-K-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::CONS-OF-MAKE-CHARACTER-LIST-V-UNDER-SPECIAL-CHAR-ALIST-EQUIV
 (29 4
     (:REWRITE SMT::SPECIAL-CHAR-ALIST-FIX-WHEN-SPECIAL-CHAR-ALISTP))
 (18 2
     (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CONS))
 (6 6
    (:TYPE-PRESCRIPTION SMT::SPECIAL-CHAR-ALISTP))
 (6 6
    (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
 (3 3
    (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP))
 (2 2
    (:REWRITE TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP))
 (2
  2
  (:REWRITE
   SMT::CONS-OF-CHARACTER-FIX-K-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV)))
(SMT::CONS-OF-MAKE-CHARACTER-LIST-V-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::CONS-CHARLISTEQV-CONGRUENCE-ON-V-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::CONS-OF-SPECIAL-CHAR-ALIST-FIX-Y-UNDER-SPECIAL-CHAR-ALIST-EQUIV
     (12 2
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CONS))
     (9 9 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
     (8 8
        (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
     (6 2
        (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
     (4 4
        (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP)))
(SMT::CONS-OF-SPECIAL-CHAR-ALIST-FIX-Y-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::CONS-SPECIAL-CHAR-ALIST-EQUIV-CONGRUENCE-ON-Y-UNDER-SPECIAL-CHAR-ALIST-EQUIV)
(SMT::SPECIAL-CHAR-ALIST-FIX-OF-ACONS
 (18 3
     (:REWRITE SMT::SPECIAL-CHAR-ALIST-FIX-WHEN-SPECIAL-CHAR-ALISTP))
 (9 1
    (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CONS))
 (4 4
    (:TYPE-PRESCRIPTION SMT::SPECIAL-CHAR-ALISTP))
 (4 4 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (4 4
    (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
 (4 2
    (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
 (2 2
    (:REWRITE TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP))
 (2 2
    (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-NOT-CONSP))
 (1
  1
  (:REWRITE
   SMT::CONS-OF-SPECIAL-CHAR-ALIST-FIX-Y-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV))
 (1
  1
  (:REWRITE
   SMT::CONS-OF-MAKE-CHARACTER-LIST-V-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV))
 (1
  1
  (:REWRITE
   SMT::CONS-OF-CHARACTER-FIX-K-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV)))
(SMT::SPECIAL-CHAR-ALIST-FIX-OF-APPEND
 (108 6
      (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-APPEND))
 (100 100 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (90 78
     (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
 (51 11
     (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP))
 (37 1
     (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CONS))
 (28 4
     (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
 (24 4
     (:REWRITE SMT::CHARACTERP-OF-CAAR-WHEN-SPECIAL-CHAR-ALISTP))
 (24 4
     (:REWRITE SMT::CHARACTER-LISTP-OF-CDAR-WHEN-SPECIAL-CHAR-ALISTP))
 (22 4
     (:REWRITE TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP))
 (12 12 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
 (1
  1
  (:REWRITE
   SMT::CONS-OF-SPECIAL-CHAR-ALIST-FIX-Y-NORMALIZE-CONST-UNDER-SPECIAL-CHAR-ALIST-EQUIV)))
(SMT::CONSP-CAR-OF-SPECIAL-CHAR-ALIST-FIX
     (30 30
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-WHEN-SUBSETP-EQUAL))
     (30 5
         (:REWRITE SMT::SPECIAL-CHAR-ALISTP-OF-CDR-WHEN-SPECIAL-CHAR-ALISTP))
     (18 2
         (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
     (14 2
         (:REWRITE TMP-DEFTYPES-CHARACTER-FIX-WHEN-CHARACTERP))
     (12 2
         (:REWRITE SMT::CHARACTERP-OF-CAAR-WHEN-SPECIAL-CHAR-ALISTP))
     (12 2
         (:REWRITE SMT::CHARACTER-LISTP-OF-CDAR-WHEN-SPECIAL-CHAR-ALISTP))
     (4 4 (:TYPE-PRESCRIPTION CHARACTER-LISTP)))
(SMT::SPECIAL-LIST)
(SMT::SPECIAL-CHAR-ALISTP-OF-SPECIAL-LIST)
(SMT::SPECIAL-CHAR)
(SMT::BOOLEANP-OF-SPECIAL-CHAR)
(SMT::TRANSFORM-SPECIAL)
(SMT::CHARACTER-LISTP-OF-TRANSFORM-SPECIAL
     (25 1 (:DEFINITION CHARACTER-LISTP))
     (16 2
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (16 2
         (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (12 2
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (4 4
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (4 4
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (4 2
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (4 2
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (4 2
        (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
     (2 2
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (2 2
        (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (2 2 (:REWRITE DEFAULT-CDR))
     (1 1 (:REWRITE DEFAULT-CAR)))
(SMT::TO-HEX)
(SMT::HEX-DIGIT-LISTP-OF-TO-HEX)
(SMT::CONSTRUCT-HEX)
(SMT::CHARACTER-LISTP-OF-CONSTRUCT-HEX
     (38 4
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (21 3
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (20 2 (:DEFINITION BINARY-APPEND))
     (14 2
         (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-APPEND))
     (12 12
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (10 4
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (10 2 (:REWRITE STR::DIGIT-LISTP-OF-APPEND))
     (9 9
        (:TYPE-PRESCRIPTION STR::OCTAL-DIGIT-LISTP))
     (8 3
        (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (8 3 (:REWRITE DEFAULT-CDR))
     (8 3 (:REWRITE DEFAULT-CAR))
     (7 7 (:TYPE-PRESCRIPTION STR::DIGIT-LISTP))
     (6 6
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (4 2
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-APPEND))
     (4 1
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (2 2 (:REWRITE DEFAULT-CHAR-CODE))
     (1 1
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CONS))
     (1 1
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CONS))
     (1 1 (:REWRITE STR::DIGIT-LISTP-OF-CONS)))
(SMT::CHAR-IS-NUMBER)
(SMT::BOOLEANP-OF-CHAR-IS-NUMBER)
(SMT::CHARACTERP-OF-CHAR-IS-NUMBER)
(SMT::CHAR-IS-LETTER)
(SMT::BOOLEANP-OF-CHAR-IS-LETTER)
(SMT::CHARACTERP-OF-CHAR-IS-LETTER)
(SMT::LISP-TO-PYTHON-NAMES-CHAR)
(SMT::CHARACTER-LISTP-OF-LISP-TO-PYTHON-NAMES-CHAR
     (52 4
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (52 4
         (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (36 4
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (24 2
         (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CONS))
     (24 2
         (:REWRITE STR::HEX-DIGIT-LISTP-OF-CONS))
     (16 2 (:REWRITE STR::DIGIT-LISTP-OF-CONS))
     (8 8
        (:REWRITE STR::OCTAL-DIGITP-WHEN-MEMBER-EQUAL-OF-OCTAL-DIGIT-LISTP))
     (8 8
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (8 8
        (:REWRITE STR::HEX-DIGITP-WHEN-MEMBER-EQUAL-OF-HEX-DIGIT-LISTP))
     (8 8
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (8 4
        (:REWRITE STR::OCTAL-DIGITP-WHEN-NONZERO-OCTAL-DIGITP))
     (8 4
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (8 4
        (:REWRITE STR::HEX-DIGITP-WHEN-NONZERO-HEX-DIGITP))
     (8 4
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (8 4
        (:REWRITE STR::DIGITP-WHEN-NONZERO-DIGITP))
     (8 4
        (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 7
        (:TYPE-PRESCRIPTION STR::OCTAL-DIGIT-LISTP))
     (7 7
        (:TYPE-PRESCRIPTION STR::HEX-DIGIT-LISTP))
     (7 7 (:TYPE-PRESCRIPTION STR::DIGIT-LISTP))
     (6 6
        (:TYPE-PRESCRIPTION STR::OCTAL-DIGITP$INLINE))
     (6 6
        (:TYPE-PRESCRIPTION STR::HEX-DIGITP$INLINE))
     (6 6
        (:TYPE-PRESCRIPTION STR::DIGITP$INLINE))
     (5 5
        (:TYPE-PRESCRIPTION SMT::CONSTRUCT-HEX))
     (4 4
        (:TYPE-PRESCRIPTION STR::NONZERO-OCTAL-DIGITP$INLINE))
     (4 4
        (:TYPE-PRESCRIPTION STR::NONZERO-HEX-DIGITP$INLINE))
     (4 4
        (:TYPE-PRESCRIPTION STR::NONZERO-DIGITP$INLINE))
     (3 3 (:REWRITE DEFAULT-CDR))
     (3 3 (:REWRITE DEFAULT-CAR))
     (2 1
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (2 1
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (2 1
        (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP)))
(SMT::LEMMA
     (71 9
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (71 9
         (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (48 9
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (24 24
         (:TYPE-PRESCRIPTION STR::OCTAL-DIGIT-LISTP))
     (24 24
         (:TYPE-PRESCRIPTION STR::HEX-DIGIT-LISTP))
     (24 24
         (:TYPE-PRESCRIPTION STR::DIGIT-LISTP))
     (23 22
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (23 22
         (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (12 4
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-NUMBER))
     (12 4
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-LETTER))
     (11 1
         (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-APPEND))
     (11 1
         (:REWRITE STR::HEX-DIGIT-LISTP-OF-APPEND))
     (10 10
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (10 10
         (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (10 10
         (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (8 8
        (:TYPE-PRESCRIPTION SMT::CHAR-IS-NUMBER))
     (8 8
        (:TYPE-PRESCRIPTION SMT::CHAR-IS-LETTER))
     (8 4
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (8 4
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (8 4
        (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
     (6 1 (:REWRITE STR::DIGIT-LISTP-OF-APPEND))
     (5 5 (:REWRITE DEFAULT-CDR))
     (5 5 (:REWRITE DEFAULT-CAR))
     (4 1 (:DEFINITION BINARY-APPEND))
     (2 2 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (2 2 (:REWRITE APPEND-WHEN-NOT-CONSP)))
(SMT::LISP-TO-PYTHON-NAMES-LIST
     (50 7
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (50 7
         (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (36 7
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (14 14
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (14 14
         (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (12 4
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-NUMBER))
     (12 4
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-LETTER))
     (12 2
         (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
     (8 8
        (:TYPE-PRESCRIPTION SMT::CHAR-IS-NUMBER))
     (8 8
        (:TYPE-PRESCRIPTION SMT::CHAR-IS-LETTER))
     (8 4
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (8 4
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (8 4
        (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
     (8 1 (:DEFINITION TRUE-LISTP))
     (7 7
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 7
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 7
        (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (6 6 (:REWRITE DEFAULT-CAR))
     (5 5 (:REWRITE DEFAULT-CDR))
     (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
     (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
     (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
     (2 2 (:REWRITE SET::IN-SET)))
(SMT::CHARACTER-LISTP-OF-LISP-TO-PYTHON-NAMES-LIST
     (231 7 (:DEFINITION CHARACTER-LISTP))
     (105 14
          (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (105 14
          (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (77 14
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (28 28
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (28 28
         (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (21 14
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (21 14
         (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (21 14
         (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (21 7
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-NUMBER))
     (21 7
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-LETTER))
     (14 14
         (:TYPE-PRESCRIPTION SMT::CHAR-IS-NUMBER))
     (14 14
         (:TYPE-PRESCRIPTION SMT::CHAR-IS-LETTER))
     (14 7
         (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (14 7
         (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (14 7
         (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
     (9 9 (:REWRITE DEFAULT-CDR))
     (9 9 (:REWRITE DEFAULT-CAR))
     (4 1 (:DEFINITION BINARY-APPEND))
     (2 2 (:REWRITE APPEND-WHEN-NOT-CONSP)))
(SMT::LISP-TO-PYTHON-NAMES-LIST-TOP
     (48 7
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (48 7
         (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (34 7
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (17 17
         (:TYPE-PRESCRIPTION STR::OCTAL-DIGIT-LISTP))
     (17 17
         (:TYPE-PRESCRIPTION STR::HEX-DIGIT-LISTP))
     (17 17
         (:TYPE-PRESCRIPTION STR::DIGIT-LISTP))
     (14 14
         (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (14 14
         (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (12 4
         (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-LETTER))
     (8 8
        (:TYPE-PRESCRIPTION SMT::CHAR-IS-LETTER))
     (7 7
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 7
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 7
        (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 7 (:REWRITE DEFAULT-CAR))
     (6 3
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (6 3
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (6 3
        (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
     (3 3 (:REWRITE DEFAULT-CDR)))
(SMT::CHARACTER-LISTP-OF-LISP-TO-PYTHON-NAMES-LIST-TOP
     (24 3
         (:REWRITE STR::CHARACTER-LISTP-WHEN-OCTAL-DIGIT-LISTP))
     (24 3
         (:REWRITE STR::CHARACTER-LISTP-WHEN-HEX-DIGIT-LISTP))
     (18 3
         (:REWRITE STR::CHARACTER-LISTP-WHEN-DIGIT-LISTP))
     (7 3
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 3
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-NOT-CONSP))
     (7 3
        (:REWRITE STR::DIGIT-LISTP-WHEN-NOT-CONSP))
     (6 6
        (:TYPE-PRESCRIPTION STR::OCTAL-DIGIT-LISTP))
     (6 6
        (:TYPE-PRESCRIPTION STR::HEX-DIGIT-LISTP))
     (6 6 (:TYPE-PRESCRIPTION STR::DIGIT-LISTP))
     (6 6
        (:REWRITE STR::OCTAL-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (6 6
        (:REWRITE STR::HEX-DIGIT-LISTP-WHEN-SUBSETP-EQUAL))
     (5 4 (:REWRITE DEFAULT-CAR))
     (3 2 (:REWRITE DEFAULT-CDR))
     (3 1
        (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-NUMBER))
     (3 1
        (:REWRITE SMT::CHARACTERP-OF-CHAR-IS-LETTER))
     (2 2
        (:TYPE-PRESCRIPTION SMT::CHAR-IS-LETTER))
     (2 1
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CDR-WHEN-OCTAL-DIGIT-LISTP))
     (2 1
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CDR-WHEN-HEX-DIGIT-LISTP))
     (2 1
        (:REWRITE STR::DIGIT-LISTP-OF-CDR-WHEN-DIGIT-LISTP))
     (1 1
        (:REWRITE STR::OCTAL-DIGIT-LISTP-OF-CONS))
     (1 1
        (:REWRITE STR::HEX-DIGIT-LISTP-OF-CONS))
     (1 1 (:REWRITE STR::DIGIT-LISTP-OF-CONS)))
(SMT::STRING-OR-SYMBOL-P)
(SMT::BOOLEANP-OF-STRING-OR-SYMBOL-P)
(SMT::STRING-OR-SYMBOL-FIX
     (1 1
        (:TYPE-PRESCRIPTION SMT::STRING-OR-SYMBOL-FIX)))
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
     (45 44
         (:TYPE-PRESCRIPTION SMT::STRING-OR-SYMBOL-FIX)))
(SMT::STRING-OR-SYMBOL-EQUIV$INLINE
     (4 4
        (:TYPE-PRESCRIPTION SMT::STRING-OR-SYMBOL-FIX)))
(SMT::STRING-OR-SYMBOL-EQUIV-IS-AN-EQUIVALENCE)
(SMT::STRING-OR-SYMBOL-EQUIV-IMPLIES-EQUAL-STRING-OR-SYMBOL-FIX-1)
(SMT::STRING-OR-SYMBOL-FIX-UNDER-STRING-OR-SYMBOL-EQUIV)
(SMT::LISP-TO-PYTHON-NAMES)
(SMT::STRINGP-OF-LISP-TO-PYTHON-NAMES)
