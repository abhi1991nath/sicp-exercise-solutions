(define (even? n)
  (= (remainder n 2) 0))

(define (fast-exp-iter a b n) ; invariant is that a*b^n is fixed
  (cond ((= n 0) a)
	((even? n) (fast-exp-iter a (* b b) (/ n 2)))
	(else (fast-exp-iter (* a b) b (- n 1)))))

(define (fast-exp b n)
  (fast-exp-iter 1 b n))
