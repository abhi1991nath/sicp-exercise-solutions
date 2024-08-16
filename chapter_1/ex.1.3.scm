(define (square a) (* a a))

(define (sum-of-squares a b) (+ (square a) (square b)))

; Function below takes three numbers as arguments and returns
; the sum of squares of the two larger numbers

(define (sum-of-squares-of-two-larger-numbers a b c)
	(cond ((and (< c a) (< c b))   (sum-of-squares a b))    ; c is smallest
	      ((and (< a b) (< a c))   (sum-of-squares b c))    ; a is smallest
	      (else          	       (sum-of-squares c a))))  ; b is smallest
