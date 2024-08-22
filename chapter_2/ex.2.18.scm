; Append single item to the list
(define (append-item items item)
  (if (null? items)
      (list item)
      (cons (car items) (append-item (cdr items) item))))


; Reverse a list of items, takes O(N^2) time
(define (reverse items)
  (if (null? items)
      items
      (append-item (reverse (cdr items)) (car items))))


; An iterative solution, takes O(N) time
(define (reverse-iter items)
  (define (iter a b)
    (if (null? a)
        b
        (iter (cdr a) (cons (car a) b))))
  (iter items (list)))
