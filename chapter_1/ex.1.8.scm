;; Newton's method for finding cube root of x
(define (my-abs x) (if (< x 0) (- x) x))

; Relative difference b/w x and y w.r.t. y
(define (rel-diff x y) (/ (my-abs (- x y)) y))

(define (good-enough? guess guess-prev)
  (< (rel-diff guess guess-prev) 0.001))


(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))


(define (cube-root-iter guess guess-prev x)
  (if (good-enough? guess guess-prev)
       guess
       (cube-root-iter (improve guess x) guess x)))


(define (cube-root x) (cube-root-iter (improve 1.0 x) 1.0 x))
