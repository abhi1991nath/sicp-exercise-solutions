(define (double x) (+ x x))

(define (halve x) (/ x 2))

(define (mult-iter a b c) ; invariant is a*b + c
  (cond ((= b 0) c)
	 ((even? b) (mult-iter (double a) (halve b) c))
	 (else (mult-iter a (- b 1) (+ c a)))))

(define (mult a b) (mult-iter a b 0))
