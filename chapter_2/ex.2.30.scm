;; Procedure square-tree takes a tree with numbers at leaves
;; and returns a tree of the same shape with the leaf numbers
;; squared
(define (square-tree tree)
  (cond ((null? tree) (list))
        ((not (pair? tree)) (* tree tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

;; Following is another version of square-tree using map and lambda
(define (square-tree-map tree)
  (map (lambda (sub-tree) (if (pair? sub-tree)
                          (square-tree-map sub-tree)
                          (* sub-tree sub-tree)))
       tree))
