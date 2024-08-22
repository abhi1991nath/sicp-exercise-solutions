;; Church numerals

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (add-church-numeral m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

;; Convert regular numeral n to Church numeral
(define (regular-to-church n)
  (if (= n 0)
      zero
      (add-1 (regular-to-church (- n 1)))))

;; Convert input Church numeral n to regular
(define (church-to-regular n)
  (define (f x) (+ 1 x))
  ((n f) 0))
