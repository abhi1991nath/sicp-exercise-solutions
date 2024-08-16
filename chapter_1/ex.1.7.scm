(define (my-square x) (* x x))

(define (my-abs x) (if (< x 0) (- x) x))

(define (good-enough-1? guess x) (< (my-abs (- (my-square guess) x)) 0.001))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))


(define (sqrt-iter-1 guess x)
  (if (good-enough-1? guess x)
       guess
       (sqrt-iter-1 (improve guess x) x)))


(define (my-sqrt-1 x) (sqrt-iter-1 1.0 x))


; Relative difference b/w x and y w.r.t. y
(define (rel-diff x y)
  (/ (my-abs (- x y)) y))


(define (good-enough-2? guess guess-prev)
  (< (rel-diff guess guess-prev) 0.001))


; New iterative square root procedure which stops when the relative
; difference b/w previous and current guesses is below 0.001
(define (sqrt-iter-2 guess guess-prev x)
  (if (good-enough-2? guess guess-prev)
       guess
       (sqrt-iter-2 (improve guess x) guess x)))


(define (my-sqrt-2 x) (sqrt-iter-2 (improve 1.0 x) 1.0 x))
