(define (make-segment start end) (cons start end))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (midpoint-segment seg)
  (let ((start-x (x-point (start-segment seg)))
        (start-y (y-point (start-segment seg)))
        (end-x (x-point (end-segment seg)))
        (end-y (y-point (end-segment seg))))
    (make-point (/ (+ start-x end-x) 2.0) (/ (+ start-y end-y) 2.0))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
