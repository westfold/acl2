(|(+ (if a b c) x)|)
(|(+ x (if a b c))|)
(|(- (if a b c))|)
(|(* (if a b c) x)|)
(|(* x (if a b c))|)
(|(/ (if a b c))|)
(|(expt (if a b c) x)|
     (9 9
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (9 9
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE)))
(|(expt x (if a b c))|
     (9 9
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (9 9
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE)))
(|(equal x (if a b c))|)
(|(equal (if a b c) x)|)
(|(< x (if a b c))|)
(|(< (if a b c) x)|)