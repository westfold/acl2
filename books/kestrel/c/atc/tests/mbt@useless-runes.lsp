(|mbt|)
(|mbt_dollar|)
(C::*PROGRAM*-WELL-FORMED)
(|mbt-RETURNS-VALUE|)
(|mbt-EXEC-CONST-LIMIT-CORRECT|
 (699 1 (:REWRITE C::EXEC-BLOCK-ITEM-LIST-UNROLL))
 (79 79 (:REWRITE C::VALUEP-WHEN-POINTERP))
 (37 31 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
 (31 31 (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
 (15 15 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
 (14 14 (:REWRITE C::NOT-ERRORP-WHEN-VALUE-LISTP))
 (14 14 (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
 (14 14 (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-2))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
 (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
 (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
 (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
 (1 1 (:REWRITE C::VALUEP-WHEN-UCHARP))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-4))
 )
(|mbt-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-mbt-CORRECT|)
(|mbt_dollar-RETURNS-VALUE|)
(|mbt_dollar-EXEC-CONST-LIMIT-CORRECT|
 (699 1 (:REWRITE C::EXEC-BLOCK-ITEM-LIST-UNROLL))
 (79 79 (:REWRITE C::VALUEP-WHEN-POINTERP))
 (35 29 (:REWRITE C::NOT-SINTP-WHEN-UCHARP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-USHORTP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-ULONGP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-ULLONGP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-UINTP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-SSHORTP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-SLONGP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-SLLONGP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-SCHARP))
 (29 29 (:REWRITE C::NOT-SINTP-WHEN-POINTERP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-ULONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-ULLONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-SLONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-SLLONGP))
 (22 22 (:REWRITE C::NOT-SSHORTP-WHEN-POINTERP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-ULONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-ULLONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-SLONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-SLLONGP))
 (22 22 (:REWRITE C::NOT-SCHARP-WHEN-POINTERP))
 (15 15 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-5))
 (14 14 (:REWRITE C::NOT-ERRORP-WHEN-VALUE-LISTP))
 (14 14 (:REWRITE C::NOT-ERRORP-WHEN-UCHAR-ARRAYP))
 (14 14 (:REWRITE C::NOT-ERRORP-WHEN-SCOPE-LISTP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-ULONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-ULLONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-SLONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-SLLONGP))
 (12 12 (:REWRITE C::NOT-USHORTP-WHEN-POINTERP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-ULONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-ULLONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-SLONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-SLLONGP))
 (12 12 (:REWRITE C::NOT-UCHARP-WHEN-POINTERP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-ULONGP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-ULLONGP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-SLLONGP))
 (10 10 (:REWRITE C::NOT-SLONGP-WHEN-POINTERP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-ULONGP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-ULLONGP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-SLONGP))
 (10 10 (:REWRITE C::NOT-SLLONGP-WHEN-POINTERP))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-3))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-2))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-UNROLL-1))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-8))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-7))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-6))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-5))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-4))
 (10 10 (:REWRITE C::EXEC-EXPR-PURE-BASE-3))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-ULONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-ULLONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-SLONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-SLLONGP))
 (7 7 (:REWRITE C::NOT-UINTP-WHEN-POINTERP))
 (6 6 (:REWRITE C::EXEC-STMT-UNROLL-2))
 (6 6 (:REWRITE C::EXEC-STMT-UNROLL-1))
 (2 1 (:REWRITE C::INIT-SCOPE-BASE-2))
 (1 1 (:REWRITE C::VALUEP-WHEN-UCHARP))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-8))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-7))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-6))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-5))
 (1 1 (:REWRITE C::EXEC-STMT-BASE-4))
 )
(|mbt_dollar-EXEC-VAR-LIMIT-CORRECT|)
(C::|*PROGRAM*-mbt_dollar-CORRECT|)
