(in-package "RTL")

(include-book "basic")
(include-book "bits")
(include-book "float")
(include-book "old-round")

(local (include-book "arithmetic-5/top" :dir :system))

;; The following lemmas from arithmetic-5 have given me trouble:

(local-in-theory #!acl2(disable |(mod (+ x y) z) where (<= 0 z)| |(mod (+ x (- (mod a b))) y)| |(mod (mod x y) z)| |(mod (+ x (mod a b)) y)|
                    simplify-products-gather-exponents-equal mod-cancel-*-const cancel-mod-+ reduce-additive-constant-<
                    |(floor x 2)| |(equal x (if a b c))| |(equal (if a b c) x)|))

(local-defthmd drnd-exactp-c-1
  (implies (and (formatp f)
                (rationalp x)
                (<= (expo x) (- (bias f)))
                (>= (expo x) (+ 2 (- (bias f)) (- (prec f))))
                (exactp x (+ (1- (prec f)) (bias f) (expo x)))
                (common-mode-p mode))
           (drepp x f))
  :hints (("Goal" :in-theory (enable drepp bias prec formatp expw))))

(local-defthmd drnd-exactp-c-2
  (implies (and (formatp f)
                (rationalp x)
                (<= (expo x) (- (bias f)))
                (>= (expo x) (+ 2 (- (bias f)) (- (prec f))))
                (exactp x (+ (1- (prec f)) (bias f) (expo x)))
                (common-mode-p mode))
           (= (drnd x mode f) x))
  :hints (("Goal" :use (drnd-exactp-c-1 drnd-exactp-b))))

(local-defthmd drnd-exactp-c-3
  (implies (and (formatp f)
                (rationalp x)
                (<= (expo x) (- (bias f)))
                (>= (expo x) (+ 2 (- (bias f)) (- (prec f))))
                (common-mode-p mode))
           (< (abs x) (spn f)))
  :hints (("Goal" :use ((:instance expo>= (x (abs x)) (n (- 1 (bias f)))))
                  :in-theory (enable spn bias expw formatp))))

(local-defthmd drnd-exactp-c-4
  (implies (and (formatp f)
                (rationalp x)
                (<= (expo x) (- (bias f)))
                (>= (expo x) (+ 2 (- (bias f)) (- (prec f))))
                (= (drnd x mode f) x)
                (common-mode-p mode))
           (drepp x f))
  :hints (("Goal" :use (drnd-exactp-a drnd-exactp-c-3)
                  :in-theory (enable drepp bias prec formatp expw))))

(local-defthmd drnd-exactp-c-5
  (implies (and (formatp f)
                (rationalp x)
                (<= (expo x) (- (bias f)))
                (>= (expo x) (+ 2 (- (bias f)) (- (prec f))))
                (= (drnd x mode f) x)
                (common-mode-p mode))
           (exactp x (+ (1- (prec f)) (bias f) (expo x))))
  :hints (("Goal" :use (drnd-exactp-c-4)
                  :in-theory (enable drepp bias prec formatp expw))))

(defthmd drnd-exactp-c
  (implies (and (formatp f)
                (rationalp x)
                (<= (expo x) (- (bias f)))
                (>= (expo x) (+ 2 (- (bias f)) (- (prec f))))
                (common-mode-p mode))
           (iff (equal x (drnd x mode f))
                (exactp x (+ (1- (prec f)) (bias f) (expo x)))))
  :hints (("Goal" :use (drnd-exactp-c-2 drnd-exactp-c-5))))

(local-defthmd rnd-drnd-up-1
  (implies (and (rationalp x)
                (integerp k)
                (not (zp n))
                (< (abs x) (expt 2 k))
                (common-mode-p mode)
                (= (abs (rnd x mode n)) (expt 2 k)))
           (<= (expo x) (1- k)))
  :hints (("Goal" :use ((:instance expo<= (x (abs x)) (n (1- k)))))))

(local-defthmd rnd-drnd-up-2
  (implies (and (rationalp x)
                (integerp k)
                (not (zp n))
                (< (abs x) (expt 2 k))
                (common-mode-p mode)
                (= (abs (rnd x mode n)) (expt 2 k)))
           (equal (expo x) (1- k)))
  :hints (("Goal" :in-theory (enable flip-mode common-mode-p)
                  :use (rnd-minus rnd-drnd-up-1 expo-rnd
                        (:instance rnd-minus (mode (flip-mode mode)))
                        (:instance expo-rnd (mode (flip-mode mode)))))))

(defthmd rnd-drnd-up
  (implies (and (formatp f)
                (rationalp x)
                (< (abs x) (spn f))
                (common-mode-p mode)
                (= (abs (rnd x mode (prec f))) (spn f)))
           (equal (abs (drnd x mode f)) (spn f)))
  :hints (("Goal" :in-theory (e/d (drnd spn prec formatp expw bias sigw) (abs))
                  :use ((:instance rnd-up (k (- 1 (bias f))) (n (prec f)) (m (+ (prec f) (expo x) (1- (bias f)))))
                        (:instance rnd-drnd-up-2 (k (- 1 (bias f))) (n (prec f)))))))

(local-defthm rnd-drnd-exactp-1
  (implies (and (formatp f)
                (rationalp x)
                (<= (abs x) (spn f))
                (common-mode-p mode))
           (or (<= (- 2 (prec f)) (+ (expo (drnd x mode f)) (bias f)))
               (= (drnd x mode f) 0)))
  :rule-classes ()
  :hints (("Goal" :use (drnd-exactp-a)
                  :in-theory (enable drepp spn sgn bias expw formatp prec))))

(defthmd rnd-drnd-exactp
  (implies (and (formatp f)
                (rationalp x)
                (< (abs x) (spn f))
                (common-mode-p mode)
                (= (drnd x mode f) x))
           (equal (rnd x mode (prec f)) x))
  :hints (("Goal" :in-theory (enable common-mode-p drnd spn prec formatp expw bias sigw)
                  :use (rnd-drnd-exactp-1
                        (:instance expo<= (x (abs x)) (n (1- (expo (spn f)))))
                        (:instance rnd-exactp-b (n (+ (prec f) (expo x) (1- (bias f)))))
                        (:instance rnd-exactp-b (n (prec f)))
                        (:instance exactp-<= (m (+ (prec f) (expo x) (1- (bias f)))) (n (prec f)))))))

(defund xfp (k m x0)
  (+ x0 (* (expt 2 (- (1+ (expo x0)) m)) k)))

(local-defthm ratp-x-k
  (implies (and (rationalp x0)
                (integerp k)
  	        (integerp m))
	   (rationalp (xfp k m x0)))
  :rule-classes (:type-prescription :rewrite)
  :hints (("Goal" :in-theory (enable xfp))))

(local-defthm x-k-bounds
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(< k (expt 2 (- (1+ m) n))))
	   (and (<= x0 (xfp k m x0))
	        (< (xfp k m x0) (fp+ x0 (1- n)))))
  :rule-classes ()
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t)))

(local-defthmd x-k-expo
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (expo (xfp k m x0))
	           (expo x0)))
  :hints (("Goal" :use (x-k-bounds
		        (:instance expo-lower-bound (x x0))
                        (:instance expo-upper-bound (x x0))
			(:instance fp+2 (n (1- n)) (x x0) (y (expt 2 (1+ (expo x0)))))
			(:instance exactp-2**n (n (1+ (expo x0))) (m (1- n)))
			(:instance expo<= (x (xfp k m x0)) (n (expo x0)))
			(:instance expo>= (x (xfp k m x0)) (n (expo x0)))))))

(local-defthmd x-n-exactp
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (exactp (xfp (expt 2 (- (1+ m) n)) m x0) (1- n)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use ((:instance fp+1 (x x0) (n (1- n)))))))

(local-defthmd x-n-least
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(rationalp y)
		(> y x0)
		(exactp y (1- n)))
	    (>= y (xfp (expt 2 (- (1+ m) n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use ((:instance fp+2 (x x0) (n (1- n)))))))

(local-defthmd x-n/2-exactp
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (exactp (xfp (expt 2 (- m n)) m x0) n))
  :hints (("Goal" :in-theory (enable xfp)
                  :use ((:instance fp+1 (x x0))
		        (:instance exactp-<= (x x0) (m (1- n)))))))

(local-defthmd x-n/2-least
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(rationalp y)
		(> y x0)
		(exactp y n))
	    (>= y (xfp (expt 2 (- m n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use ((:instance fp+2 (x x0))
		        (:instance exactp-<= (x x0) (m (1- n)))))))

(local-defthmd x-n/4-exactp
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (exactp (xfp (expt 2 (- (1- m) n)) m x0) (1+ n)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use ((:instance fp+1 (x x0) (n (1+ n)))
		        (:instance exactp-<= (x x0) (m (1- n)) (n (1+ n)))))))

(local-defthmd x-n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (rne (xfp (expt 2 (- (1- m) n)) m x0) n)
	           x0))
  :hints (("Goal" :in-theory (enable xfp)
                  :use (x-n/4-exactp x-n/2-exactp
		        (:instance x-n/2-least (y (rne (xfp (expt 2 (- (1- m) n)) m x0) n)))
		        (:instance x-n/2-least (y (xfp (expt 2 (- (1- m) n)) m x0)))
			(:instance x-n-least (y (rne (xfp (expt 2 (- (1- m) n)) m x0) n)))
		        (:instance exactp-<= (x x0) (m (1- n)))
			(:instance rne-exactp-a (x (xfp (expt 2 (- (1- m) n)) m x0)))
			(:instance rne-exactp-c (x (xfp (expt 2 (- (1- m) n)) m x0)) (a (xfp (expt 2 (- m n)) m x0)))
			(:instance rne-exactp-d (x (xfp (expt 2 (- (1- m) n)) m x0)) (a x0))
			(:instance rne-midpoint (x (xfp (expt 2 (- (1- m) n)) m x0)))))))

(local-defthmd x<n/4-rne-1
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(<= k (expt 2 (- m n))))
	    (member (rne (xfp k m x0) n)
	            (list x0 (xfp (expt 2 (- m n)) m x0))))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t
                  :use (x-n/2-exactp
		        (:instance x-n/2-least (y (rne (xfp k m x0) n)))
		        (:instance exactp-<= (x x0) (m (1- n)))
			(:instance rne-exactp-a (x (xfp k m x0)))
			(:instance rne-exactp-c (x (xfp k m x0)) (a (xfp (expt 2 (- m n)) m x0)))
			(:instance rne-exactp-d (x (xfp k m x0)) (a x0))))))

(local-defthmd x<n/4-rne-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(< k (expt 2 (- (1- m) n))))
	    (< (abs (- (xfp k m x0) x0))
	       (abs (- (xfp k m x0) (xfp (expt 2 (- m n)) m x0)))))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t
                  :use (x-n/2-exactp
		        (:instance x-n/2-least (y (rne (xfp k m x0) n)))
			(:instance x-n-least (y (rne (xfp k m x0) n)))
		        (:instance exactp-<= (x x0) (m (1- n)))
			(:instance rne-exactp-a (x (xfp k m x0)))
			(:instance rne-exactp-c (x (xfp k m x0)) (a (xfp (expt 2 (- m n)) m x0)))
			(:instance rne-exactp-d (x (xfp k m x0)) (a x0))))))

(local-defthmd x<n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(< k (expt 2 (- (1- m) n))))
	    (equal (rne (xfp k m x0) n)
	           x0))
  :hints (("Goal" :in-theory (enable xfp)
                  :nonlinearp t
                  :use (x-n/2-exactp x<n/4-rne-1 x<n/4-rne-2
		        (:instance rne-nearest (x (xfp k m x0)) (y x0))
		        (:instance exactp-<= (x x0) (m (1- n)))))))

(local-defthmd x<=n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(<= k (expt 2 (- (1- m) n))))
	    (equal (rne (xfp k m x0) n)
	           x0))
  :hints (("Goal" :use (x-n/4-rne x<n/4-rne))))

(local-defthmd x>n/4-rne-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- (1- m) n))))
	    (> (abs (- (xfp k m x0) x0))
	       (abs (- (xfp k m x0) (xfp (expt 2 (- m n)) m x0)))))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t
                  :use (x-n/2-exactp
		        (:instance x-n/2-least (y (rne (xfp k m x0) n)))
			(:instance x-n-least (y (rne (xfp k m x0) n)))
		        (:instance exactp-<= (x x0) (m (1- n)))
			(:instance rne-exactp-a (x (xfp k m x0)))
			(:instance rne-exactp-c (x (xfp k m x0)) (a (xfp (expt 2 (- m n)) m x0)))
			(:instance rne-exactp-d (x (xfp k m x0)) (a x0))))))

(local-defthmd x>n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(<= k (expt 2 (- m n)))
		(> k (expt 2 (- (1- m) n))))
	    (equal (rne (xfp k m x0) n)
	           (xfp (expt 2 (- m n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp)
                  :nonlinearp t
                  :use (x-n/2-exactp x<n/4-rne-1 x>n/4-rne-2
		        (:instance rne-nearest (x (xfp k m x0)) (y (xfp (expt 2 (- m n)) m x0)))
		        (:instance exactp-<= (x x0) (m (1- n)))))))

(defund err-rne (k m n x0)
  (- (rne (xfp k m x0) n) (xfp k m x0)))

(defund sum-err-rne (i j m n x0)
  (declare (xargs :measure (nfix (1+ (- j i)))))
  (if (and (natp i) (natp j) (<= i j))
      (+ (sum-err-rne i (1- j) m n x0)
         (err-rne j m n x0))
    0))

#|
This is our objective:

(defthm rne-unbiased
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sum-err-rne 0 (1- (expt 2 (- (1+ m) n))) m n x0)
                  0)))
|#

(local-defthmd sum-err-rne-decomp
  (implies (and (natp i)
                (natp j)
                (natp l)
                (<= i l)
                (<= l j))
           (equal (+ (sum-err-rne i l m n x0)
                     (sum-err-rne (1+ l) j m n x0))
                  (sum-err-rne i j m n x0)))
  :hints (("Goal" :in-theory (enable sum-err-rne))))

(defund sigma1 (m n x0)
  (sum-err-rne 0 (expt 2 (- (1- m) n)) m n x0))

(defund sigma2 (m n x0)
  (sum-err-rne (1+ (expt 2 (- (1- m) n))) (expt 2 (- m n)) m n x0))

(defund sigma34 (m n x0)
  (sum-err-rne (1+ (expt 2 (- m n))) (1- (expt 2 (- (1+ m) n))) m n x0))

(local-defthmd sum-err-rne-decomp-1
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sum-err-rne 0 (1- (expt 2 (- (1+ m) n))) m n x0)
	          (+ (sigma1 m n x0)
		     (sigma2 m n x0)
		     (sigma34 m n x0))))
  :hints (("Goal" :in-theory (enable sigma1 sigma2 sigma34)
                  :nonlinearp t
		  :use ((:instance sum-err-rne-decomp (i 0) (l (expt 2 (- m n))) (j (1- (expt 2 (- (1+ m) n)))))
                        (:instance sum-err-rne-decomp (i 0) (j (expt 2 (- m n))) (l (expt 2 (- (1- m) n))))))))

(local-defthmd sigma1-1
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(<= k (expt 2 (- (1- m) n))))
	    (equal (err-rne k m n x0)
	           (- (* k (expt 2 (- (1+ (expo x0)) m))))))
  :hints (("Goal" :in-theory (enable xfp err-rne)
                  :use (x<=n/4-rne))))

(defund sum-nats (i j)
  (declare (xargs :measure (nfix (1+ (- j i)))))
  (if (and (natp i) (natp j) (<= i j))
      (+ j (sum-nats i (1- j)))
    0))

(local-defthmd sum-nats-rewrite
  (implies (natp k)
           (equal (sum-nats 0 k)
	          (* 1/2 k (1+ k))))
  :hints (("Goal" :in-theory (enable sum-nats))))

(local-defthmd sum-nats-decomp
  (implies (and (natp i)
                (natp j)
                (natp l)
                (<= i l)
                (<= l j))
           (equal (+ (sum-nats i l)
                     (sum-nats (1+ l) j))
                  (sum-nats i j)))
  :hints (("Goal" :in-theory (enable sum-nats))))

(local-defthmd sigma1-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(<= k (expt 2 (- (1- m) n))))
	    (equal (sum-err-rne 0 k m n x0)
	           (- (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats 0 k)))))
  :hints (("Goal" :in-theory (enable sum-nats sum-err-rne))
          ("Subgoal *1/4" :use (sigma1-1))
          ("Subgoal *1/2" :use ((:instance sigma1-1 (k 0))))))

(local-defthmd sigma1-rewrite
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (sigma1 m n x0)
	           (- (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats 0 (expt 2 (- (1- m) n)))))))
  :hints (("Goal" :in-theory (enable sigma1)
                  :use ((:instance sigma1-2 (k (expt 2 (- (1- m) n))))))))

(local-defthmd sigma2-1
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- (1- m) n)))
		(<= k (expt 2 (- m n))))
	    (equal (err-rne k m n x0)
	           (- (expt 2 (- (1+ (expo x0)) n))
		      (* k (expt 2 (- (1+ (expo x0)) m))))))
  :hints (("Goal" :in-theory (enable xfp err-rne)
                  :use (x>n/4-rne))))

(local-defthmd hack-1
  (implies (and (integerp r)
                (integerp k)
		(< K (+ 1 r)))
           (<= k r)))

(local-defthmd hack-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (integerp k)
		(< K (+ 1 (EXPT 2 (+ -1 M (- N))))))
           (<= k (EXPT 2 (+ -1 M (- N)))))
  :hints (("Goal" :use ((:instance hack-1 (r (EXPT 2 (+ -1 M (- N)))))))))

(local-defthmd sigma2-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- (1- m) n)))
		(<= k (expt 2 (- m n))))
	    (equal (sum-err-rne (1+ (expt 2 (- (1- m) n))) k m n x0)
	           (- (* (expt 2 (- (1+ (expo x0)) n))
		         (- k (expt 2 (- (1- m) n))))
		      (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats (1+ (expt 2 (- (1- m) n))) k)))))
  :hints (("Goal" :in-theory (enable sum-nats sum-err-rne))
          ("Subgoal *1/6" :use (sigma2-1 hack-2))
          ("Subgoal *1/5" :use (sigma2-1))
          ("Subgoal *1/4" :use (sigma2-1))
          ("Subgoal *1/3" :use (sigma2-1))))

(local-defthmd sigma2-rewrite
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (sigma2 m n x0)
	           (- (expt 2 (- (+ (expo x0) m) (* 2 n)))
		      (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats (1+ (expt 2 (- (1- m) n))) (expt 2 (- m n)))))))
  :hints (("Goal" :in-theory (enable sigma2)
                  :nonlinearp t
                  :use ((:instance sigma2-2 (k (expt 2 (- m n))))))))

(local-defthmd sigma12-1
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (+ (sigma1 m n x0) (sigma2 m n x0))
	           (- (expt 2 (- (+ (expo x0) m) (* 2 n)))
		      (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats 0 (expt 2 (- m n)))))))
  :hints (("Goal" :use (sigma1-rewrite sigma2-rewrite
		        (:instance sum-nats-decomp (i 0) (l (expt 2 (- (1- m) n))) (j (expt 2 (- m n))))))))

(local-defthmd sigma12-rewrite
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (+ (sigma1 m n x0) (sigma2 m n x0))
	           (- (expt 2 (- (expo x0) n)))))
  :hints (("Goal" :nonlinearp t
                  :in-theory (enable sum-nats-rewrite)
                  :use (sigma12-1))))

(local-defthmd x-n-least-n
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(rationalp y)
		(> y (xfp (expt 2 (- m n)) m x0))
		(exactp y n))
	    (>= y (xfp (expt 2 (- (1+ m) n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t
                  :use (x-n/2-exactp
		        (:instance x-k-expo (k (expt 2 (- m n))))
		        (:instance fp+2 (x (xfp (expt 2 (- m n)) m x0)))))))

(local-defthmd x-3n/4-exactp
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (exactp (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0) (1+ n)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use (x-n/2-exactp
		        (:instance x-k-expo (k (expt 2 (- m n))))
		        (:instance fp+1 (x (xfp (expt 2 (- m n)) m x0)) (n (1+ n)))
		        (:instance exactp-<= (x (xfp (expt 2 (- m n)) m x0)) (m n) (n (1+ n)))))))

(local-defthmd x-3n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (rne (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0) n)
	           (xfp (expt 2 (- (1+ m) n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use (x-3n/4-exactp x-n/2-exactp x-n-exactp
		        (:instance x-n-least-n (y (rne (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0) n)))
		        (:instance x-n-least-n (y (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0)))
			(:instance x-n-least (y (rne (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0) n)))
		        (:instance exactp-<= (x (xfp (expt 2 (- (1+ m) n)) m x0)) (m (1- n)))
			(:instance rne-exactp-a (x (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0)))
			(:instance rne-exactp-c (x (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0))
			                        (a (xfp (expt 2 (- (1+ m) n)) m x0)))
			(:instance rne-exactp-d (x (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0))
			                        (a (xfp (expt 2 (- m n)) m x0)))
			(:instance rne-midpoint (x (xfp (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) m x0)))))))

(local-defthmd x<3n/4-rne-1
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- m n)))
		(< k (expt 2 (- (1+ m) n))))
	    (member (rne (xfp k m x0) n)
	            (list (xfp (expt 2 (- m n)) m x0)
		          (xfp (expt 2 (- (1+ m) n)) m x0))))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t
                  :use (x-n/2-exactp x-n-exactp
		        (:instance x-n-least-n (y (rne (xfp k m x0) n)))
		        (:instance exactp-<= (x (xfp (expt 2 (- (1+ m) n)) m x0)) (m (1- n)))
			(:instance rne-exactp-a (x (xfp k m x0)))
			(:instance rne-exactp-c (x (xfp k m x0)) (a (xfp (expt 2 (- (1+ m) n)) m x0)))
			(:instance rne-exactp-d (x (xfp k m x0)) (a (xfp (expt 2 (- m n)) m x0)))))))

(local-defthmd x<3n/4-rne-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(< k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))))
	    (< (abs (- (xfp k m x0) (xfp (expt 2 (- m n)) m x0)))
	       (abs (- (xfp k m x0) (xfp (expt 2 (- (1+ m) n)) m x0)))))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t)))

(local-defthmd x<3n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- m n)))
		(< k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))))
	    (equal (rne (xfp k m x0) n)
	           (xfp (expt 2 (- m n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp)
                  :nonlinearp t
                  :use (x-n/2-exactp x<3n/4-rne-1 x<3n/4-rne-2
		        (:instance rne-nearest (x (xfp k m x0)) (y (xfp (expt 2 (- m n)) m x0)))))))

(local-defthmd x>3n/4-rne-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))))
	    (> (abs (- (xfp k m x0) (xfp (expt 2 (- m n)) m x0)))
	       (abs (- (xfp k m x0) (xfp (expt 2 (- (1+ m) n)) m x0)))))
  :hints (("Goal" :in-theory (enable xfp) :nonlinearp t)))

(local-defthmd x>3n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (rne (xfp k m x0) n)
	           (xfp (expt 2 (- (1+ m) n)) m x0)))
  :hints (("Goal" :in-theory (enable xfp)
                  :use (x-n-exactp x<3n/4-rne-1 x>3n/4-rne-2
		        (:instance rne-nearest (x (xfp k m x0)) (y (xfp (expt 2 (- (1+ m) n)) m x0)))
		        (:instance exactp-<= (x (xfp (expt 2 (- (1+ m) n)) m x0)) (m (1- n)))))))

(local-defthmd x>=3n/4-rne
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(>= k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (rne (xfp k m x0) n)
	           (xfp (expt 2 (- (1+ m) n)) m x0)))
  :hints (("Goal" :use (x>3n/4-rne x-3n/4-rne))))

(defund sigma3 (m n x0)
  (sum-err-rne (1+ (expt 2 (- m n))) (1- (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))) m n x0))

(defund sigma4 (m n x0)
  (sum-err-rne (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) (1- (expt 2 (- (1+ m) n))) m n x0))

(local-defthmd sigma34-special-case
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (= m (1+ n))
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sigma34 m n x0)
	          (expt 2 (- (expo x0) n))))
  :hints (("Goal" :in-theory (enable xfp sigma34 sum-err-rne err-rne)
                  :nonlinearp t
		  :use ((:instance x>=3n/4-rne (k 3))))))

(local-defthmd hack-3
  (implies (not (zp k))
           (>= (EXPT 2 k) 2))
  :hints (("Goal" :nonlinearp t)))

(local-defthmd hack-4
  (implies (and (INTEGERP M)
                (INTEGERP N)
                (<= 0 N)
                (< 1 N)
                (< (+ 1 N) M))
           (>= (EXPT 2 (+ -1 M (- N))) 2))
  :hints (("Goal" :use ((:instance hack-3 (k (+ -1 M (- N))))))))

(local-defthmd sum-err-rne-decomp-2
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sigma34 m n x0)
	          (+ (sigma3 m n x0)
		     (sigma4 m n x0))))
  :hints (("Goal" :in-theory (enable sigma3 sigma4 sigma34)
                  :nonlinearp t
		  :use (hack-4
		        (:instance sum-err-rne-decomp (i (1+ (expt 2 (- m n))))
		                                      (l (1- (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))))
						      (j (1- (expt 2 (- (1+ m) n)))))))))

(local-defthmd sigma3-1
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- m n)))
		(< k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))))
	    (equal (err-rne k m n x0)
	           (* (- (expt 2 (- m n)) k) (expt 2 (- (1+ (expo x0)) m)))))
  :hints (("Goal" :in-theory (enable xfp err-rne)
                  :use (x<3n/4-rne))))

(local-defthmd sigma3-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(> k (expt 2 (- m n)))
		(< k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n)))))
	    (equal (sum-err-rne (1+ (expt 2 (- m n))) k m n x0)
	           (- (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats 0 (- k (expt 2 (- m n))))))))
  :hints (("Goal" :in-theory (enable sigma3-1 sum-nats sum-err-rne))))

(local-defthmd sigma3-rewrite
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (sigma3 m n x0)
	           (- (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats 0 (1- (expt 2 (- (1- m) n))))))))
  :hints (("Goal" :in-theory (enable sigma3)
                  :use ((:instance sigma3-2 (k (1- (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))))))))))

(local-defthmd sigma4-1
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(>= k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (err-rne k m n x0)
	           (* (expt 2 (- (1+ (expo x0)) m))
		      (- (expt 2 (- (1+ m) n)) k))))
  :hints (("Goal" :in-theory (enable xfp err-rne)
                  :use (x>=3n/4-rne))))

(local-defthmd sigma4-2
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(natp k)
		(>= k (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (sum-err-rne (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))) k m n x0)
	           (* (expt 2 (- (1+ (expo x0)) m))
		      (- (* (expt 2 (- m n))
		            (- k (1- (+ (expt 2 (- m n)) (expt 2 (- (1- m) n))))))
		         (sum-nats (expt 2 (- (1- m) n)) (- k (expt 2 (- m n))))))))
  :hints (("Goal" :in-theory (enable sigma4-1 sum-nats sum-err-rne))
          ("Subgoal *1/3'4'" :expand ((SUM-NATS (EXPT 2 (+ -1 M (- N))) (EXPT 2 (+ -1 M (- N))))))))

(local-defthmd sigma4-rewrite
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (sigma4 m n x0)
	           (- (expt 2 (- (+ (expo x0) m) (* 2 n)))
		      (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats (expt 2 (- (1- m) n)) (1- (expt 2 (- m n))))))))
  :hints (("Goal" :in-theory (enable sigma4)
                  :nonlinearp t
                  :use ((:instance sigma4-2 (k (1- (expt 2 (- (1+ m) n)))))))))

(local-defthmd sigma34-1
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (+ (sigma3 m n x0) (sigma4 m n x0))
	           (- (expt 2 (- (+ (expo x0) m) (* 2 n)))
		      (* (expt 2 (- (1+ (expo x0)) m))
		         (sum-nats 0 (1- (expt 2 (- m n))))))))
  :hints (("Goal" :use (sigma3-rewrite sigma4-rewrite
		        (:instance sum-nats-decomp (i 0) (l (1- (expt 2 (- (1- m) n)))) (j (1- (expt 2 (- m n)))))))))

(local-defthmd sigma34-2
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< (1+ n) m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (+ (sigma3 m n x0) (sigma4 m n x0))
	           (expt 2 (- (expo x0) n))))
  :hints (("Goal" :nonlinearp t
                  :in-theory (enable sum-nats-rewrite)
                  :use (sigma34-1))))

(local-defthmd sigma34-rewrite
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (sigma34 m n x0)
	           (expt 2 (- (expo x0) n))))
  :hints (("Goal" :use (sum-err-rne-decomp-2 sigma34-special-case sigma34-2))))

(defthmd rne-unbiased
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sum-err-rne 0 (1- (expt 2 (- (1+ m) n))) m n x0)
	          0))
  :hints (("Goal" :use (sigma12-rewrite sigma34-rewrite sum-err-rne-decomp-1))))

;----------------------------------------------------------------------------------

(local-defthmd x0-rto
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
	    (equal (rto x0 n)
	           x0))
  :hints (("Goal" :in-theory (enable rto))))

(local-defthmd x>0-rtz
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(not (zp k))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (rtz (xfp k m x0) (1- n))
	           x0))
  :hints (("Goal" :in-theory (enable xfp)
                  :use ((:instance rtz-squeeze (a x0) (x (xfp k m x0)) (n (1- n)))))))

(local-defthmd x>0-rto
  (implies (and (natp m)
                (natp n)
		(natp k)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(not (zp k))
		(< k (expt 2 (- (1+ m) n))))
	    (equal (rto (xfp k m x0) n)
	           (xfp (expt 2 (- m n)) m x0)))
  :hints (("Goal" :in-theory (enable sgn rto xfp)
                  :use (x>0-rtz x-k-expo
			(:instance x-n-least (y (xfp k m x0)))))))

(defund err-rto (k m n x0)
  (- (rto (xfp k m x0) n) (xfp k m x0)))

(defund sum-err-rto (i j m n x0)
  (declare (xargs :measure (nfix (1+ (- j i)))))
  (if (and (natp i) (natp j) (<= i j))
      (+ (sum-err-rto i (1- j) m n x0)
         (err-rto j m n x0))
    0))

#|
This is our objective:

(defthm rto-unbiased
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sum-err-rto 0 (1- (expt 2 (- (1+ m) n))) m n x0)
                  0)))
|#

(local-defthmd sum-err-rto-decomp
  (implies (and (natp i)
                (natp j)
                (natp l)
                (<= i l)
                (<= l j))
           (equal (+ (sum-err-rto i l m n x0)
                     (sum-err-rto (1+ l) j m n x0))
                  (sum-err-rto i j m n x0)))
  :hints (("Goal" :in-theory (enable sum-err-rto))))

(local-defthm sum-err-rto-0-1
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sum-err-rto 0 (1- (expt 2 (- (1+ m) n))) m n x0)
                  (sum-err-rto 1 (1- (expt 2 (- (1+ m) n))) m n x0)))
  :hints (("Goal" :in-theory (enable xfp sum-err-rto err-rto)
                  :use (x0-rto (:instance sum-err-rto-decomp (i 0) (l 0) (j (1- (expt 2 (- (1+ m) n)))))))))

(local-defthm sum-err-rto-1-k
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n))
		(not (zp k))
		(< k (expt 2 (- (1+ m) n))))
           (equal (sum-err-rto 1 k m n x0)
                  (- (* (expt 2 (- (1+ (expo x0)) n)) k)
		     (* (expt 2 (- (1+ (expo x0)) m)) (sum-nats 1 k)))))
  :hints (("Goal" :in-theory (enable xfp sum-err-rto err-rto sum-nats))
          ("Subgoal *1/3" :use (x>0-rto))
          ("Subgoal *1/1" :use (x>0-rto))))

(local-defthmd sum-nats-1-rewrite
  (implies (natp k)
           (equal (sum-nats 1 k)
	          (* 1/2 k (1+ k))))
  :hints (("Goal" :in-theory (enable sum-nats))))

(defthm rto-unbiased
  (implies (and (natp m)
                (natp n)
                (< 1 n)
                (< n m)
                (rationalp x0)
                (> x0 0)
                (exactp x0 (1- n)))
           (equal (sum-err-rto 0 (1- (expt 2 (- (1+ m) n))) m n x0)
                  0))
  :hints (("Goal" :in-theory (enable xfp sum-err-rto err-rto sum-nats-1-rewrite)
                  :use (sum-err-rto-0-1
		        (:instance sum-err-rto-1-k (k (1- (expt 2 (- (1+ m) n)))))))))
