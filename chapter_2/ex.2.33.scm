(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

;; Defining "map" in terms of "accumulate"
(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
              (list) sequence))


;; Defining "length" in terms of "accumulate"
(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))
