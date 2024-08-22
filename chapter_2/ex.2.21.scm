(define (square-list-map items)
  (map (lambda (x) (* x x)) items))

(define (square-list items)
  (if (null? items)
      items
      (cons (* (car items) (car items)) (square-list (cdr items)))))
