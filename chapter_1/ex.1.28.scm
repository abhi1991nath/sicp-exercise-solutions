;; exp-mod computes x^n modulo m
(define (exp-mod x n m)
  (cond ((= n 0) 1)
	((even? n)
	 (remainder (square (exp-mod x (/ n 2) m)) m))
	(else
	 (remainder (* x (exp-mod x (- n 1) m)) m))))


;; fermat-test checks if a^(n-1) = 1 modulo n, where 1 <= a < n
(define (fermat-test a n)
  (= (exp-mod a (- n 1) n) 1))
