(IFF*)
(IFF*-IS-AN-EQUIVALENCE)
(IFF-REFINES-IFF*)
(IFF*-REFINES-IFF)
(IFF*-OF-NONNILS)
(IFF*-WITH-NIL)
(IFF*-WHEN-OTHER)
(XOR*)
(IFF-IMPLIES-EQUAL-XOR*-1)
(IFF-IMPLIES-EQUAL-XOR*-2)
(XOR*-OF-NONNILS)
(XOR*-WITH-NIL)
(XOR*-WHEN-OTHER)
(BINARY-AND*)
(AND*-MACRO)
(IFF-IMPLIES-EQUAL-AND*-1
 (38 38 (:TYPE-PRESCRIPTION BINARY-AND*))
 )
(IFF-IMPLIES-IFF-AND*-2)
(AND*-REM-FIRST
 (17 17 (:TYPE-PRESCRIPTION BINARY-AND*))
 )
(AND*-REM-SECOND
 (1 1 (:REWRITE AND*-REM-FIRST))
 )
(AND*-NIL-FIRST
 (3 3 (:TYPE-PRESCRIPTION BINARY-AND*))
 )
(AND*-NIL-SECOND)
(AND*-FORWARD
 (3 3 (:TYPE-PRESCRIPTION BINARY-AND*))
 )
(BINARY-OR*)
(OR*-MACRO)
(IFF-IMPLIES-IFF-OR*-1
 (20 20 (:TYPE-PRESCRIPTION BINARY-OR*))
 )
(IFF-IMPLIES-IFF-OR*-2
 (20 20 (:TYPE-PRESCRIPTION BINARY-OR*))
 )
(OR*-TRUE-FIRST
 (19 19 (:TYPE-PRESCRIPTION BINARY-OR*))
 )
(OR*-TRUE-SECOND
 (16 16 (:TYPE-PRESCRIPTION BINARY-OR*))
 (1 1 (:REWRITE OR*-TRUE-FIRST))
 )
(OR*-NIL-FIRST
 (11 11 (:TYPE-PRESCRIPTION BINARY-OR*))
 (1 1 (:REWRITE OR*-TRUE-FIRST))
 )
(OR*-NIL-SECOND
 (11 11 (:TYPE-PRESCRIPTION BINARY-OR*))
 (1 1 (:REWRITE OR*-TRUE-FIRST))
 )
(OR*-FORWARD)
