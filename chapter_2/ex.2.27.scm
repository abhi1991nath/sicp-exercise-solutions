; Append single item to the list
(define (append-item items item)
  (if (null? items)
      (list item)
      (cons (car items) (append-item (cdr items) item))))

; "Deep reverse" a list using a recursive process
(define (deep-reverse items)
  (cond ((null? items) items)
        ((not (pair? items)) items)
        (else (append-item (deep-reverse (cdr items))
                           (deep-reverse (car items))))))

