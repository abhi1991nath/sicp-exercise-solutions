; Raises x to the power n >= 0
(define (exp x n)
  (if (= n 0)
      1
      (* x (exp x (- n 1)))))

; Returns the greatest integer i such that fact^i is
; a factor of prod > 0
(define (pow prod fact)
  (if (> (remainder prod fact) 0)
      0
      (+ 1 (pow (/ prod fact) fact))))

; Express a pair of non-negative inegers (a,b) as the no. 2^a * 3^b
(define (cons a b) (* (exp 2 a) (exp 3 b)))

(define (car pair) (pow pair 2))

(define (cdr pair) (pow pair 3))

(define (print-pair pair)
  (newline)
  (display "(")
  (display (car pair))
  (display ",")
  (display (cdr pair))
  (display ")"))
