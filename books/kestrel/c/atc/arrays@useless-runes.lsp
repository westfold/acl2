(C::UCHAR-ARRAYP
 (2 2 (:DEFINITION STRIP-CARS))
 )
(C::CONSP-WHEN-UCHAR-ARRAYP)
(C::UCHAR-ARRAY-FIX$INLINE)
(C::UCHAR-ARRAYP-OF-UCHAR-ARRAY-FIX
 (63 19 (:REWRITE C::UCHAR-LIST-FIX-WHEN-UCHAR-LISTP))
 (8 1 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (6 1 (:REWRITE HONS-DUPLICITY-ALIST-P-OF-CONS))
 (5 4 (:REWRITE DEFAULT-CDR))
 (5 1 (:REWRITE C::UCHAR-LISTP-OF-CDR-WHEN-UCHAR-LISTP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE C::UCHAR-LISTP-WHEN-NOT-CONSP))
 (1 1 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 )
(C::UCHAR-ARRAY-FIX-WHEN-UCHAR-ARRAYP
 (2 2 (:DEFINITION STRIP-CARS))
 )
(C::UCHAR-ARRAY-FIX$INLINE
 (2 2 (:DEFINITION STRIP-CARS))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(C::UCHAR-ARRAY-EQUIV$INLINE)
(C::UCHAR-ARRAY-EQUIV-IS-AN-EQUIVALENCE)
(C::UCHAR-ARRAY-EQUIV-IMPLIES-EQUAL-UCHAR-ARRAY-FIX-1)
(C::UCHAR-ARRAY-FIX-UNDER-UCHAR-ARRAY-EQUIV)
(C::EQUAL-OF-UCHAR-ARRAY-FIX-1-FORWARD-TO-UCHAR-ARRAY-EQUIV)
(C::EQUAL-OF-UCHAR-ARRAY-FIX-2-FORWARD-TO-UCHAR-ARRAY-EQUIV)
(C::UCHAR-ARRAY-EQUIV-OF-UCHAR-ARRAY-FIX-1-FORWARD)
(C::UCHAR-ARRAY-EQUIV-OF-UCHAR-ARRAY-FIX-2-FORWARD)
(C::UCHAR-ARRAY->ELEMENTS$INLINE
 (2 2 (:DEFINITION STRIP-CARS))
 )
(C::UCHAR-LISTP-OF-UCHAR-ARRAY->ELEMENTS
 (9 3 (:REWRITE C::UCHAR-LIST-FIX-WHEN-UCHAR-LISTP))
 )
(C::UCHAR-ARRAY->ELEMENTS$INLINE-OF-UCHAR-ARRAY-FIX-X
 (48 16 (:REWRITE C::UCHAR-ARRAY-FIX-WHEN-UCHAR-ARRAYP))
 (32 32 (:TYPE-PRESCRIPTION C::UCHAR-ARRAYP))
 )
(C::UCHAR-ARRAY->ELEMENTS$INLINE-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-X)
(C::UCHAR-ARRAY)
(C::UCHAR-ARRAYP-OF-UCHAR-ARRAY
 (40 13 (:REWRITE C::UCHAR-LIST-FIX-WHEN-UCHAR-LISTP))
 (8 1 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (6 1 (:REWRITE HONS-DUPLICITY-ALIST-P-OF-CONS))
 (3 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (1 1 (:REWRITE C::UCHAR-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(C::UCHAR-ARRAY->ELEMENTS-OF-UCHAR-ARRAY)
(C::UCHAR-ARRAY-REQUIREMENTS)
(C::UCHAR-ARRAY-OF-FIELDS
 (3 1 (:REWRITE C::UCHAR-ARRAY-FIX-WHEN-UCHAR-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION C::UCHAR-ARRAYP))
 )
(C::UCHAR-ARRAY-FIX-WHEN-UCHAR-ARRAY
 (3 1 (:REWRITE C::UCHAR-ARRAY-FIX-WHEN-UCHAR-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION C::UCHAR-ARRAYP))
 )
(C::EQUAL-OF-UCHAR-ARRAY)
(C::UCHAR-ARRAY-OF-UCHAR-LIST-FIX-ELEMENTS)
(C::UCHAR-ARRAY-UCHAR-LIST-EQUIV-CONGRUENCE-ON-ELEMENTS)
(C::UCHAR-ARRAY-FIX-REDEF)
(C::UCHAR-ARRAY-INDEX-OKP)
(C::BOOLEANP-OF-UCHAR-ARRAY-INDEX-OKP)
(C::UCHAR-ARRAY-INDEX-OKP-OF-UCHAR-ARRAY-FIX-ARRAY)
(C::UCHAR-ARRAY-INDEX-OKP-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-ARRAY)
(C::UCHAR-ARRAY-INDEX-OKP-OF-IFIX-INDEX)
(C::UCHAR-ARRAY-INDEX-OKP-INT-EQUIV-CONGRUENCE-ON-INDEX)
(C::UCHAR-ARRAY-SINT-INDEX-OKP)
(C::BOOLEANP-OF-UCHAR-ARRAY-SINT-INDEX-OKP)
(C::UCHAR-ARRAY-SINT-INDEX-OKP-OF-UCHAR-ARRAY-FIX-ARRAY)
(C::UCHAR-ARRAY-SINT-INDEX-OKP-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-ARRAY)
(C::UCHAR-ARRAY-SINT-INDEX-OKP-OF-SINT-FIX-INDEX)
(C::UCHAR-ARRAY-SINT-INDEX-OKP-SINT-EQUIV-CONGRUENCE-ON-INDEX)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(C::UCHAR-LISTP-OF-SFIX)
(C::UCHAR-LISTP-OF-INSERT)
(C::UCHAR-LISTP-OF-DELETE)
(C::UCHAR-LISTP-OF-MERGESORT)
(C::UCHAR-LISTP-OF-UNION)
(C::UCHAR-LISTP-OF-INTERSECT-1)
(C::UCHAR-LISTP-OF-INTERSECT-2)
(C::UCHAR-LISTP-OF-DIFFERENCE)
(C::UCHAR-LISTP-OF-DUPLICATED-MEMBERS)
(C::UCHAR-LISTP-OF-APPEND)
(C::UCHAR-LISTP-OF-RCONS)
(C::UCHARP-WHEN-MEMBER-EQUAL-OF-UCHAR-LISTP)
(C::UCHAR-LISTP-WHEN-SUBSETP-EQUAL)
(C::UCHAR-LISTP-OF-SET-DIFFERENCE-EQUAL)
(C::UCHAR-LISTP-OF-INTERSECTION-EQUAL-1)
(C::UCHAR-LISTP-OF-INTERSECTION-EQUAL-2)
(C::UCHAR-LISTP-OF-UNION-EQUAL)
(C::UCHAR-LISTP-OF-TAKE)
(C::UCHAR-LISTP-OF-REPEAT)
(C::UCHARP-OF-NTH-WHEN-UCHAR-LISTP)
(C::UCHAR-LISTP-OF-UPDATE-NTH)
(C::UCHAR-LISTP-OF-BUTLAST)
(C::UCHAR-LISTP-OF-NTHCDR)
(C::UCHAR-LISTP-OF-LAST)
(C::UCHAR-LISTP-OF-REMOVE)
(C::UCHAR-LISTP-OF-REVAPPEND)
(C::UCHAR-ARRAY-READ
 (40 1 (:DEFINITION NTH))
 (38 2 (:REWRITE NTH-WHEN-TOO-LARGE-CHEAP))
 (28 4 (:DEFINITION LEN))
 (15 11 (:REWRITE DEFAULT-<-2))
 (12 2 (:REWRITE NTH-WHEN-ZP))
 (11 11 (:REWRITE DEFAULT-<-1))
 (9 5 (:REWRITE DEFAULT-CDR))
 (9 5 (:REWRITE DEFAULT-+-2))
 (8 3 (:REWRITE ZP-OPEN))
 (6 2 (:REWRITE NTH-WHEN-ATOM))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE C::UCHAR-LISTP-WHEN-SUBSETP-EQUAL))
 (2 1 (:REWRITE DEFAULT-CAR))
 )
(C::UCHARP-OF-UCHAR-ARRAY-READ)
(C::UCHAR-ARRAY-READ-OF-UCHAR-ARRAY-FIX-ARRAY)
(C::UCHAR-ARRAY-READ-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-ARRAY)
(C::UCHAR-ARRAY-READ-OF-IFIX-INDEX
 (113 6 (:REWRITE NTH-WHEN-TOO-LARGE-CHEAP))
 (83 2 (:DEFINITION NTH))
 (56 8 (:DEFINITION LEN))
 (48 2 (:REWRITE C::UCHARP-OF-NTH-WHEN-UCHAR-LISTP))
 (29 21 (:REWRITE DEFAULT-<-2))
 (24 6 (:REWRITE ZP-OPEN))
 (23 21 (:REWRITE DEFAULT-<-1))
 (22 12 (:REWRITE DEFAULT-CDR))
 (19 7 (:DEFINITION NFIX))
 (18 10 (:REWRITE DEFAULT-+-2))
 (12 6 (:REWRITE DEFAULT-CAR))
 (12 4 (:REWRITE NTH-WHEN-ATOM))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 4 (:DEFINITION NOT))
 (8 8 (:REWRITE C::UCHAR-LISTP-WHEN-SUBSETP-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION ZP))
 (4 4 (:REWRITE C::UCHARP-WHEN-MEMBER-EQUAL-OF-UCHAR-LISTP))
 )
(C::UCHAR-ARRAY-READ-INT-EQUIV-CONGRUENCE-ON-INDEX)
(C::UCHAR-ARRAY-READ-SINT)
(C::UCHARP-OF-UCHAR-ARRAY-READ-SINT)
(C::UCHAR-ARRAY-READ-SINT-OF-UCHAR-ARRAY-FIX-ARRAY)
(C::UCHAR-ARRAY-READ-SINT-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-ARRAY)
(C::UCHAR-ARRAY-READ-SINT-OF-SINT-FIX-INDEX)
(C::UCHAR-ARRAY-READ-SINT-SINT-EQUIV-CONGRUENCE-ON-INDEX)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(C::UCHAR-LISTP-OF-SFIX)
(C::UCHAR-LISTP-OF-INSERT)
(C::UCHAR-LISTP-OF-DELETE)
(C::UCHAR-LISTP-OF-MERGESORT)
(C::UCHAR-LISTP-OF-UNION)
(C::UCHAR-LISTP-OF-INTERSECT-1)
(C::UCHAR-LISTP-OF-INTERSECT-2)
(C::UCHAR-LISTP-OF-DIFFERENCE)
(C::UCHAR-LISTP-OF-DUPLICATED-MEMBERS)
(C::UCHAR-LISTP-OF-APPEND)
(C::UCHAR-LISTP-OF-RCONS)
(C::UCHARP-WHEN-MEMBER-EQUAL-OF-UCHAR-LISTP)
(C::UCHAR-LISTP-WHEN-SUBSETP-EQUAL)
(C::UCHAR-LISTP-OF-SET-DIFFERENCE-EQUAL)
(C::UCHAR-LISTP-OF-INTERSECTION-EQUAL-1)
(C::UCHAR-LISTP-OF-INTERSECTION-EQUAL-2)
(C::UCHAR-LISTP-OF-UNION-EQUAL)
(C::UCHAR-LISTP-OF-TAKE)
(C::UCHAR-LISTP-OF-REPEAT)
(C::UCHARP-OF-NTH-WHEN-UCHAR-LISTP)
(C::UCHAR-LISTP-OF-UPDATE-NTH)
(C::UCHAR-LISTP-OF-BUTLAST)
(C::UCHAR-LISTP-OF-NTHCDR)
(C::UCHAR-LISTP-OF-LAST)
(C::UCHAR-LISTP-OF-REMOVE)
(C::UCHAR-LISTP-OF-REVAPPEND)
(C::UCHAR-ARRAY-WRITE
 (70 2 (:DEFINITION UPDATE-NTH))
 (46 4 (:REWRITE UPDATE-NTH-OF-NTH-FREE))
 (42 4 (:DEFINITION NTH))
 (26 10 (:REWRITE ZP-OPEN))
 (24 4 (:REWRITE UPDATE-NTH-WHEN-ZP))
 (21 3 (:DEFINITION LEN))
 (20 11 (:REWRITE DEFAULT-CDR))
 (15 13 (:REWRITE DEFAULT-<-1))
 (14 13 (:REWRITE DEFAULT-<-2))
 (12 9 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE UPDATE-NTH-WHEN-ATOM))
 (10 6 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION ZP))
 (6 6 (:REWRITE C::UCHARP-WHEN-MEMBER-EQUAL-OF-UCHAR-LISTP))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE C::UCHAR-LISTP-WHEN-SUBSETP-EQUAL))
 )
(C::UCHAR-ARRAYP-OF-UCHAR-ARRAY-WRITE)
(C::UCHAR-ARRAY-WRITE-OF-UCHAR-ARRAY-FIX-ARRAY)
(C::UCHAR-ARRAY-WRITE-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-ARRAY)
(C::UCHAR-ARRAY-WRITE-OF-IFIX-INDEX
 (110 2 (:REWRITE C::UCHAR-LISTP-OF-UPDATE-NTH))
 (89 6 (:REWRITE UPDATE-NTH-OF-NTH-FREE))
 (83 2 (:DEFINITION UPDATE-NTH))
 (53 6 (:DEFINITION NTH))
 (37 10 (:REWRITE ZP-OPEN))
 (34 9 (:DEFINITION NOT))
 (28 4 (:DEFINITION LEN))
 (26 26 (:TYPE-PRESCRIPTION LEN))
 (26 20 (:REWRITE DEFAULT-<-1))
 (26 14 (:REWRITE DEFAULT-CDR))
 (23 20 (:REWRITE DEFAULT-<-2))
 (14 10 (:REWRITE DEFAULT-+-2))
 (14 8 (:REWRITE DEFAULT-CAR))
 (14 6 (:REWRITE C::UCHAR-FIX-WHEN-UCHARP))
 (12 12 (:TYPE-PRESCRIPTION NFIX))
 (12 12 (:REWRITE C::UCHAR-LISTP-WHEN-SUBSETP-EQUAL))
 (12 4 (:REWRITE UPDATE-NTH-WHEN-ATOM))
 (12 4 (:DEFINITION NFIX))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE C::UCHARP-WHEN-MEMBER-EQUAL-OF-UCHAR-LISTP))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 5 (:TYPE-PRESCRIPTION ZP))
 (5 2 (:REWRITE C::UCHAR-LISTP-WHEN-NOT-CONSP))
 (4 4 (:TYPE-PRESCRIPTION C::UCHARP))
 (2 2 (:REWRITE C::UCHARP-OF-UCHAR-FIX))
 )
(C::UCHAR-ARRAY-WRITE-INT-EQUIV-CONGRUENCE-ON-INDEX)
(C::UCHAR-ARRAY-WRITE-OF-UCHAR-FIX-ELEMENT)
(C::UCHAR-ARRAY-WRITE-UCHAR-EQUIV-CONGRUENCE-ON-ELEMENT)
(C::UCHAR-ARRAY-WRITE-SINT)
(C::UCHAR-ARRAYP-OF-UCHAR-ARRAY-WRITE-SINT)
(C::UCHAR-ARRAY-WRITE-SINT-OF-UCHAR-ARRAY-FIX-ARRAY)
(C::UCHAR-ARRAY-WRITE-SINT-UCHAR-ARRAY-EQUIV-CONGRUENCE-ON-ARRAY)
(C::UCHAR-ARRAY-WRITE-SINT-OF-SINT-FIX-INDEX)
(C::UCHAR-ARRAY-WRITE-SINT-SINT-EQUIV-CONGRUENCE-ON-INDEX)
(C::UCHAR-ARRAY-WRITE-SINT-OF-UCHAR-FIX-ELEMENT)
(C::UCHAR-ARRAY-WRITE-SINT-UCHAR-EQUIV-CONGRUENCE-ON-ELEMENT)
