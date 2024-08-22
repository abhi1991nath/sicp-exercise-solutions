;; Function tree-map is like map for trees
(define (tree-map f tree)
  (cond ((null? tree) (list))
        ((not (pair? tree)) (f tree))
        (else (cons (tree-map f (car tree))
                    (tree-map f (cdr tree))))))
