(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))


(define (sum term a next b)
  (define (combiner a b) (+ a b))
  (accumulate combiner 0 term a next b))


(define (product term a next b)
  (define (combiner a b) (* a b))
  (accumulate combiner 1 term a next b))


;; Iterative process for accumulate
(define (accumulate-iter combiner null-value term a next b)
  (define (iter result a b)
    (if (> a b)
        result
	(iter (combiner result (term a)) (next a) b)))
  (iter null-value a b))
