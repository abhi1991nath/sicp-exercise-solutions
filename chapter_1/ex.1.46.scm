(define (iterative-improve good-enough? improve-guess)
  (define (iter guess) (if (good-enough? guess)
                           guess
                           (iter (improve-guess guess))))
  (lambda (guess) (iter guess)))


(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve-guess guess)
    (average guess (/ x guess)))
  ((iterative-improve good-enough? improve-guess) 1.0))


(define (fixed-point f first-guess)
  (define (good-enough? guess) (< (abs (- guess (f guess))) 0.001))
  (define (improve-guess guess) (f guess))
  ((iterative-improve good-enough? improve-guess) first-guess))
