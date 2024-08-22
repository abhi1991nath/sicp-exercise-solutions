(define (make-interval a b) (cons a b))
(define (lower-bound interval) (car interval))
(define (upper-bound interval) (cdr interval))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))


(define (make-center-percent c p)
  (make-interval (* c (- 1 (/ p 100.0))) (* c (+ 1 (/ p 100.0)))))

(define (center x)
  (/ (+ (lower-bound x) (upper-bound x)) 2))

(define (percent x)
  (let ((diff (- (upper-bound x) (lower-bound x))))
       (* 50.0 (/ diff (center x)))))
