(BUTLAST-OF-NIL
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(DEFUN-FORMP)
(GET-DECLARES-FROM-DEFUN)
(REPLACE-DECLARES-IN-DEFUN)
(GET-BODY-FROM-DEFUN)
(GET-XARGS-FROM-DEFUN)
(ALL-DEFUN-FORMP)
(MUTUAL-RECURSION-FORMP)
(DEFUN-OR-MUTUAL-RECURSION-FORMP)
(FIND-DEFUN-IN-MUT-REC
 (30 30 (:REWRITE DEFAULT-CAR))
 (18 18 (:REWRITE DEFAULT-CDR))
 (14 1 (:DEFINITION ALL-DECLAREP))
 (11 7 (:REWRITE DEFAULT-+-2))
 (10 1 (:DEFINITION TAKE))
 (7 7 (:REWRITE DEFAULT-+-1))
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE ZP-OPEN))
 (4 1 (:REWRITE DECLAREP-OF-CAR))
 (3 1 (:REWRITE FOLD-CONSTS-IN-+))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (1 1 (:TYPE-PRESCRIPTION DECLAREP))
 )
(GET-DECLARES-FROM-EVENT
 (539 280 (:REWRITE DEFAULT-+-2))
 (355 280 (:REWRITE DEFAULT-+-1))
 (333 333 (:REWRITE DEFAULT-CDR))
 (304 304 (:REWRITE DEFAULT-CAR))
 (260 52 (:DEFINITION LEN))
 (192 48 (:DEFINITION INTEGER-ABS))
 (192 24 (:DEFINITION LENGTH))
 (140 105 (:REWRITE DEFAULT-<-2))
 (129 105 (:REWRITE DEFAULT-<-1))
 (100 10 (:DEFINITION TAKE))
 (48 48 (:REWRITE DEFAULT-UNARY-MINUS))
 (40 10 (:REWRITE ZP-OPEN))
 (24 24 (:REWRITE DEFAULT-REALPART))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (24 24 (:REWRITE DEFAULT-IMAGPART))
 (24 24 (:REWRITE DEFAULT-DENOMINATOR))
 (24 24 (:REWRITE DEFAULT-COERCE-2))
 (24 24 (:REWRITE DEFAULT-COERCE-1))
 (12 6 (:DEFINITION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION DECLAREP))
 )
(ALL-DECLAREP-OF-GET-DECLARES-FROM-EVENT
 (3416 33 (:DEFINITION ALL-DEFUN-FORMP))
 (2462 2462 (:REWRITE DEFAULT-CDR))
 (1920 1920 (:REWRITE DEFAULT-CAR))
 (883 561 (:REWRITE DEFAULT-+-2))
 (690 69 (:DEFINITION TAKE))
 (561 561 (:REWRITE DEFAULT-+-1))
 (366 266 (:REWRITE DEFAULT-<-1))
 (335 266 (:REWRITE DEFAULT-<-2))
 (276 69 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE CDR-CONS))
 (2 2 (:REWRITE CAR-CONS))
 )
(GET-XARGS-FROM-EVENT
 (539 280 (:REWRITE DEFAULT-+-2))
 (355 280 (:REWRITE DEFAULT-+-1))
 (333 333 (:REWRITE DEFAULT-CDR))
 (304 304 (:REWRITE DEFAULT-CAR))
 (260 52 (:DEFINITION LEN))
 (192 48 (:DEFINITION INTEGER-ABS))
 (192 24 (:DEFINITION LENGTH))
 (140 105 (:REWRITE DEFAULT-<-2))
 (129 105 (:REWRITE DEFAULT-<-1))
 (100 10 (:DEFINITION TAKE))
 (48 48 (:REWRITE DEFAULT-UNARY-MINUS))
 (40 10 (:REWRITE ZP-OPEN))
 (24 24 (:REWRITE DEFAULT-REALPART))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (24 24 (:REWRITE DEFAULT-IMAGPART))
 (24 24 (:REWRITE DEFAULT-DENOMINATOR))
 (24 24 (:REWRITE DEFAULT-COERCE-2))
 (24 24 (:REWRITE DEFAULT-COERCE-1))
 (12 6 (:DEFINITION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION DECLAREP))
 )
(GET-BODY-FROM-EVENT
 (539 280 (:REWRITE DEFAULT-+-2))
 (355 280 (:REWRITE DEFAULT-+-1))
 (333 333 (:REWRITE DEFAULT-CDR))
 (304 304 (:REWRITE DEFAULT-CAR))
 (260 52 (:DEFINITION LEN))
 (192 48 (:DEFINITION INTEGER-ABS))
 (192 24 (:DEFINITION LENGTH))
 (140 105 (:REWRITE DEFAULT-<-2))
 (129 105 (:REWRITE DEFAULT-<-1))
 (100 10 (:DEFINITION TAKE))
 (48 48 (:REWRITE DEFAULT-UNARY-MINUS))
 (40 10 (:REWRITE ZP-OPEN))
 (24 24 (:REWRITE DEFAULT-REALPART))
 (24 24 (:REWRITE DEFAULT-NUMERATOR))
 (24 24 (:REWRITE DEFAULT-IMAGPART))
 (24 24 (:REWRITE DEFAULT-DENOMINATOR))
 (24 24 (:REWRITE DEFAULT-COERCE-2))
 (24 24 (:REWRITE DEFAULT-COERCE-1))
 (12 6 (:DEFINITION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION DECLAREP))
 )
(DEFUN-HAS-EXPLICIT-GUARDP)
(ANY-DEFUN-HAS-EXPLICIT-GUARDP
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(KEYWORD-VALUE-LISTP-OF-GET-XARGS-FROM-DEFUN)
(DEFUN-HAS-VERIFY-GUARDS-NILP
 (452 452 (:REWRITE DEFAULT-CDR))
 (171 171 (:REWRITE DEFAULT-CAR))
 (120 12 (:DEFINITION TAKE))
 (96 16 (:DEFINITION ASSOC-KEYWORD))
 (48 12 (:REWRITE ZP-OPEN))
 (47 35 (:REWRITE DEFAULT-<-2))
 (38 35 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION DECLAREP))
 )
(ANY-DEFUN-HAS-VERIFY-GUARDS-NILP
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GUARDS-WERE-VERIFIED-IN-DEFUNP)
(GUARDS-WERE-VERIFIED-IN-EVENTP
 (180 180 (:REWRITE DEFAULT-CDR))
 (168 168 (:REWRITE DEFAULT-CAR))
 (110 11 (:DEFINITION TAKE))
 (53 1 (:DEFINITION ANY-DEFUN-HAS-EXPLICIT-GUARDP))
 (51 40 (:REWRITE DEFAULT-<-2))
 (49 1 (:DEFINITION DEFUN-HAS-EXPLICIT-GUARDP))
 (46 40 (:REWRITE DEFAULT-<-1))
 (44 11 (:REWRITE ZP-OPEN))
 (33 33 (:REWRITE DEFAULT-+-2))
 (33 33 (:REWRITE DEFAULT-+-1))
 (33 11 (:REWRITE FOLD-CONSTS-IN-+))
 (25 1 (:DEFINITION GET-DECLARES-FROM-DEFUN))
 (23 1 (:DEFINITION SOME-DECLARE-HAS-A-GUARD-OR-TYPE))
 (13 1 (:DEFINITION DECLARE-HAS-A-GUARD-OR-TYPE))
 (11 1 (:DEFINITION SOME-DECLARE-ARG-HAS-A-GUARD-OR-TYPE))
 (7 1 (:DEFINITION DECLARE-ARG-HAS-A-GUARD-OR-TYPE))
 (6 6 (:TYPE-PRESCRIPTION DECLAREP))
 (4 1 (:DEFINITION ASSOC-KEYWORD))
 (1 1 (:TYPE-PRESCRIPTION SOME-DECLARE-HAS-A-GUARD-OR-TYPE))
 (1 1 (:TYPE-PRESCRIPTION SOME-DECLARE-ARG-HAS-A-GUARD-OR-TYPE))
 (1 1 (:TYPE-PRESCRIPTION ASSOC-KEYWORD))
 )
(ADD-VERIFY-GUARDS-NIL-TO-DEFUN
 (288 288 (:REWRITE DEFAULT-CDR))
 (120 12 (:DEFINITION TAKE))
 (111 111 (:REWRITE DEFAULT-CAR))
 (63 51 (:REWRITE DEFAULT-<-2))
 (54 51 (:REWRITE DEFAULT-<-1))
 (48 12 (:REWRITE ZP-OPEN))
 (36 36 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION DECLAREP))
 )
(ADD-VERIFY-GUARDS-T-TO-DEFUN
 (288 288 (:REWRITE DEFAULT-CDR))
 (120 12 (:DEFINITION TAKE))
 (111 111 (:REWRITE DEFAULT-CAR))
 (63 51 (:REWRITE DEFAULT-<-2))
 (54 51 (:REWRITE DEFAULT-<-1))
 (48 12 (:REWRITE ZP-OPEN))
 (36 36 (:REWRITE DEFAULT-+-2))
 (36 36 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION DECLAREP))
 )
