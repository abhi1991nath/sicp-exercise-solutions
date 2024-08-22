(define (for-each f items)
  (define (f-helper prev remaining)
    (if (null? remaining)
        #t
        (f-helper (f (car remaining)) (cdr remaining))))
  (f-helper (list ()) items))
