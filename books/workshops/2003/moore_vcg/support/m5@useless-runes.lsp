(M5::PUSH)
(M5::TOP)
(JVM::POP)
(M5::POPN
 (17 9 (:REWRITE DEFAULT-+-2))
 (12 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (8 1 (:DEFINITION LENGTH))
 (7 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (5 1 (:DEFINITION LEN))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(M5::BOUND?)
(M5::BIND
 (74 36 (:REWRITE DEFAULT-+-2))
 (50 36 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::BINDING)
(M5::OP-CODE)
(M5::ARG1)
(M5::ARG2)
(M5::ARG3)
(M5::NULLREFP)
(M5::REVERSE
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::U-FIX)
(M5::S-FIX)
(M5::BYTE-FIX)
(M5::UBYTE-FIX)
(M5::SHORT-FIX)
(M5::INT-FIX)
(M5::UINT-FIX)
(M5::LONG-FIX)
(M5::ULONG-FIX)
(M5::CHAR-FIX)
(M5::6-BIT-FIX)
(M5::5-BIT-FIX)
(M5::EXPT2)
(M5::SHL)
(M5::SHR)
(M5::MAKE-STATE)
(M5::THREAD-TABLE)
(M5::HEAP)
(M5::CLASS-TABLE)
(M5::MAKE-THREAD)
(M5::CALL-STACK)
(M5::STATUS)
(M5::RREF)
(M5::MAKE-CLASS-DECL)
(M5::CLASS-DECL-NAME)
(M5::CLASS-DECL-SUPERCLASSES)
(M5::CLASS-DECL-FIELDS)
(M5::CLASS-DECL-SFIELDS)
(M5::CLASS-DECL-CP)
(M5::CLASS-DECL-METHODS)
(M5::CLASS-DECL-HEAPREF)
(M5::BASE-CLASS-DEF)
(M5::MAKE-CLASS-DEF
 (1 1 (:TYPE-PRESCRIPTION M5::MAKE-CLASS-DEF))
 )
(M5::CP-MAKE-INT-ENTRY)
(M5::CP-MAKE-STRING-ENTRY)
(M5::CP-STRING-RESOLVED?)
(M5::RETRIEVE-CP)
(M5::UPDATE-CT-STRING-REF
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::MAKE-TT)
(M5::ADDTO-TT)
(M5::MOD-THREAD-SCHEDULING)
(M5::SCHEDULE-THREAD)
(M5::UNSCHEDULE-THREAD)
(M5::RREFTOTHREAD
 (74 36 (:REWRITE DEFAULT-+-2))
 (50 36 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (14 14 (:REWRITE DEFAULT-CDR))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::IN-LIST
 (74 36 (:REWRITE DEFAULT-+-2))
 (50 36 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::ISTHREADOBJECT?)
(M5::LOCK-OBJECT)
(M5::UNLOCK-OBJECT)
(M5::OBJECTLOCKABLE?)
(M5::OBJECTUNLOCKABLE?)
(M5::MAKE-FRAME)
(M5::TOP-FRAME)
(M5::PC)
(M5::LOCALS)
(M5::STACK)
(M5::PROGRAM)
(M5::SYNC-FLG)
(M5::CUR-CLASS)
(M5::METHOD-NAME)
(M5::METHOD-FORMALS)
(M5::METHOD-SYNC)
(M5::METHOD-PROGRAM)
(M5::METHOD-ISNATIVE?)
(M5::SUPPLIEDP
 (74 36 (:REWRITE DEFAULT-+-2))
 (50 36 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::ACTUAL
 (74 36 (:REWRITE DEFAULT-+-2))
 (50 36 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (11 11 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (7 7 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::DEREF)
(M5::FIELD-VALUE)
(M5::BUILD-CLASS-FIELD-BINDINGS
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::BUILD-CLASS-OBJECT-FIELD-BINDINGS)
(M5::BUILD-IMMEDIATE-INSTANCE-DATA)
(M5::BUILD-AN-INSTANCE
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::BUILD-CLASS-DATA)
(M5::BUILD-A-CLASS-INSTANCE)
(M5::VALUE-OF)
(M5::SUPERCLASSES-OF)
(M5::ARRAY-CONTENT)
(M5::ARRAY-TYPE)
(M5::ARRAY-BOUND)
(M5::ARRAY-DATA)
(M5::ELEMENT-AT)
(M5::MAKEARRAY)
(M5::SET-ELEMENT-AT
 (6 3 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (3 3 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::PRIMITIVE-TYPE)
(M5::ATYPE-TO-IDENTIFIER)
(M5::IDENTIFIER-TO-ATYPE)
(M5::DEFAULT-VALUE1)
(M5::INIT-ARRAY
 (17 9 (:REWRITE DEFAULT-+-2))
 (12 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (8 1 (:DEFINITION LENGTH))
 (7 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (5 1 (:DEFINITION LEN))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(M5::NATURAL-SUM
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::MAKEMULTIARRAY2
 (184 106 (:REWRITE DEFAULT-+-2))
 (132 106 (:REWRITE DEFAULT-+-1))
 (81 71 (:REWRITE DEFAULT-CDR))
 (68 52 (:REWRITE DEFAULT-CAR))
 (48 39 (:REWRITE DEFAULT-<-1))
 (46 39 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE ZP-OPEN))
 )
(M5::INST-LENGTH)
(M5::EXECUTE-AALOAD)
(M5::EXECUTE-AASTORE)
(M5::EXECUTE-ACONST_NULL)
(M5::EXECUTE-ALOAD)
(M5::EXECUTE-ALOAD_X)
(M5::EXECUTE-ANEWARRAY)
(M5::EXECUTE-ARETURN)
(M5::EXECUTE-ARRAYLENGTH)
(M5::EXECUTE-ASTORE
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-ASTORE_X
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-BALOAD)
(M5::EXECUTE-BASTORE)
(M5::EXECUTE-BIPUSH)
(M5::EXECUTE-CALOAD)
(M5::EXECUTE-CASTORE)
(M5::EXECUTE-DUP)
(M5::EXECUTE-DUP_X1)
(M5::EXECUTE-DUP_X2)
(M5::EXECUTE-DUP2)
(M5::EXECUTE-DUP2_X1)
(M5::EXECUTE-DUP2_X2)
(M5::EXECUTE-GETFIELD)
(M5::STATIC-FIELD-VALUE)
(M5::EXECUTE-GETSTATIC)
(M5::EXECUTE-GOTO)
(M5::EXECUTE-GOTO_W)
(M5::EXECUTE-I2B)
(M5::EXECUTE-I2C)
(M5::EXECUTE-I2L)
(M5::EXECUTE-I2S)
(M5::EXECUTE-IADD)
(M5::EXECUTE-IALOAD)
(M5::EXECUTE-IAND)
(M5::EXECUTE-IASTORE)
(M5::EXECUTE-ICONST_X)
(M5::EXECUTE-IDIV)
(M5::EXECUTE-IF_ACMPEQ)
(M5::EXECUTE-IF_ACMPNE)
(M5::EXECUTE-IF_ICMPEQ)
(M5::EXECUTE-IF_ICMPGE)
(M5::EXECUTE-IF_ICMPGT)
(M5::EXECUTE-IF_ICMPLT)
(M5::EXECUTE-IF_ICMPLE)
(M5::EXECUTE-IF_ICMPNE)
(M5::EXECUTE-IFEQ)
(M5::EXECUTE-IFGE)
(M5::EXECUTE-IFGT)
(M5::EXECUTE-IFLE)
(M5::EXECUTE-IFLT)
(M5::EXECUTE-IFNE)
(M5::EXECUTE-IFNONNULL)
(M5::EXECUTE-IFNULL)
(M5::EXECUTE-IINC)
(M5::EXECUTE-ILOAD)
(M5::EXECUTE-ILOAD_X)
(M5::EXECUTE-IMUL)
(M5::EXECUTE-INEG)
(M5::EXECUTE-INSTANCEOF)
(M5::EXECUTE-IOR)
(M5::EXECUTE-IREM)
(M5::EXECUTE-IRETURN)
(M5::EXECUTE-ISHL)
(M5::EXECUTE-ISHR)
(M5::EXECUTE-ISTORE
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-ISTORE_X
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-ISUB)
(M5::EXECUTE-IUSHR)
(M5::EXECUTE-IXOR)
(M5::EXECUTE-JSR)
(M5::EXECUTE-JSR_W)
(M5::CLASS-NAME-OF-REF)
(M5::BIND-FORMALS
 (17 9 (:REWRITE DEFAULT-+-2))
 (12 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (8 1 (:DEFINITION LENGTH))
 (7 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (5 1 (:DEFINITION LEN))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(M5::LOOKUP-METHOD-IN-SUPERCLASSES
 (74 36 (:REWRITE DEFAULT-+-2))
 (50 36 (:REWRITE DEFAULT-+-1))
 (32 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 8 (:DEFINITION INTEGER-ABS))
 (32 4 (:DEFINITION LENGTH))
 (20 4 (:DEFINITION LEN))
 (14 14 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 10 (:REWRITE DEFAULT-<-2))
 (12 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:REWRITE DEFAULT-REALPART))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-IMAGPART))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:DEFINITION NTH))
 )
(M5::LOOKUP-METHOD)
(M5::EXECUTE-INVOKESPECIAL)
(M5::EXECUTE-INVOKESTATIC)
(M5::EXECUTE-INVOKEVIRTUAL)
(M5::EXECUTE-L2I)
(M5::EXECUTE-LADD)
(M5::EXECUTE-LALOAD)
(M5::EXECUTE-LAND)
(M5::EXECUTE-LASTORE)
(M5::EXECUTE-LCMP)
(M5::EXECUTE-LCONST_X)
(M5::SET-INSTANCE-FIELD)
(M5::EXECUTE-LDC)
(M5::EXECUTE-LDC2_W)
(M5::EXECUTE-LDIV)
(M5::EXECUTE-LLOAD)
(M5::EXECUTE-LLOAD_X)
(M5::EXECUTE-LMUL)
(M5::EXECUTE-LNEG)
(M5::EXECUTE-LOR)
(M5::EXECUTE-LREM)
(M5::EXECUTE-LRETURN)
(M5::EXECUTE-LSHL)
(M5::EXECUTE-LSHR)
(M5::EXECUTE-LSTORE
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-LSTORE_X
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-LSUB)
(M5::EXECUTE-LUSHR)
(M5::EXECUTE-LXOR)
(M5::EXECUTE-MONITORENTER)
(M5::EXECUTE-MONITOREXIT)
(M5::EXECUTE-MULTIANEWARRAY
 (2 1 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(M5::EXECUTE-NEW)
(M5::EXECUTE-NEWARRAY)
(M5::EXECUTE-NOP)
(M5::EXECUTE-POP)
(M5::EXECUTE-POP2)
(M5::EXECUTE-PUTFIELD)
(M5::EXECUTE-PUTSTATIC)
(M5::EXECUTE-RET)
(M5::EXECUTE-RETURN)
(M5::EXECUTE-SALOAD)
(M5::EXECUTE-SASTORE)
(M5::EXECUTE-SIPUSH)
(M5::EXECUTE-SWAP)
(M5::INDEX-INTO-PROGRAM
 (10 5 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 2 (:REWRITE DEFAULT-<-1))
 (3 2 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE ZP-OPEN))
 )
(M5::NEXT-INST)
(M5::DO-INST)
(M5::STEP)
(M5::RUN
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 (6 6 (:TYPE-PRESCRIPTION M5::STEP))
 )
(M5::ACK2
 (17 9 (:REWRITE DEFAULT-+-2))
 (12 9 (:REWRITE DEFAULT-+-1))
 (8 2 (:REWRITE COMMUTATIVITY-OF-+))
 (8 1 (:DEFINITION LENGTH))
 (7 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE DEFAULT-<-2))
 (5 1 (:DEFINITION LEN))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:TYPE-PRESCRIPTION LEN))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE DEFAULT-REALPART))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 (1 1 (:REWRITE DEFAULT-IMAGPART))
 (1 1 (:REWRITE DEFAULT-DENOMINATOR))
 (1 1 (:REWRITE DEFAULT-COERCE-2))
 (1 1 (:REWRITE DEFAULT-COERCE-1))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(M5::ACK0)
(M5::SIM-LOOP)
(M5::SIM)
(M5::ISLABEL?)
(M5::ISLABELEDINST?)
(M5::GEN_LABEL_ALIST
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::RESOLVE_LABELS
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::RESOLVE_BASIC_BLOCK)
(M5::ASSEMBLE_FRAME)
(M5::ASSEMBLE_CALL_STACK
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::ASSEMBLE_THREAD)
(M5::ASSEMBLE_THREAD_TABLE
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::ASSEMBLE_METHOD)
(M5::ASSEMBLE_METHODS
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::ASSEMBLE_CLASS)
(M5::ASSEMBLE_CLASS_TABLE
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::ASSEMBLE_STATE)
(M5::MAKE-STRING-OBJ)
(M5::RESOLVE-STRING-CONSTANTS
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::GEN_CLASS_OBJ)
(M5::LD_CLASS_LIB
 (137 66 (:REWRITE DEFAULT-+-2))
 (92 66 (:REWRITE DEFAULT-+-1))
 (56 14 (:REWRITE COMMUTATIVITY-OF-+))
 (56 14 (:DEFINITION INTEGER-ABS))
 (56 7 (:DEFINITION LENGTH))
 (35 7 (:DEFINITION LEN))
 (24 19 (:REWRITE DEFAULT-<-2))
 (24 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (11 11 (:REWRITE DEFAULT-CAR))
 (7 7 (:TYPE-PRESCRIPTION LEN))
 (7 7 (:REWRITE DEFAULT-REALPART))
 (7 7 (:REWRITE DEFAULT-NUMERATOR))
 (7 7 (:REWRITE DEFAULT-IMAGPART))
 (7 7 (:REWRITE DEFAULT-DENOMINATOR))
 (7 7 (:REWRITE DEFAULT-COERCE-2))
 (7 7 (:REWRITE DEFAULT-COERCE-1))
 )
(M5::LOAD_CLASS_LIBRARY
 (1 1 (:TYPE-PRESCRIPTION M5::LOAD_CLASS_LIBRARY))
 )
(M5::M5_LOAD)
