(define (filtered-accumulate combiner filter null-value term a next b)
  (if (> a b)
      null-value
      (if (filter a)
	  (combiner (term a)
		    (filtered-accumulate combiner filter null-value term (next a) next b))
	  (filtered-accumulate combiner filter null-value term (next a) next b))))


;; Function to return the sum of squares of all primes numbers in [a,b]
(define (sum-primes-squared a b)
  (define (square a) (* a a))
  (define (next a) (+ a 1))
  (filtered-accumulate + prime? 0 square a next b))


;; Function to return product of all positive integers less than n that are
;; relatively prime to n
(define (product-relative-primes n)
  (define (relative-prime? a) (= (gcd n a) 1))
  (define (identity a) a)
  (define (next a) (+ a 1))
  (filtered-accumulate * relative-prime? 1 identity 1 next n))
