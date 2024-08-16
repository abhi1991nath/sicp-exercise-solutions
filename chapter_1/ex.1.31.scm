(define (product coeff a next b)
  (if (> a b)
      1
      (* (coeff a)
	 (product coeff (next a) next b))))


(define (factorial n)
  (define (identity x) x)
  (define (incr x) (+ x 1))
  (product identity 1 incr n))



(define (pi-approx n)
  (define (coeff n)
    (cond ((even? n) (/ (+ n 2) (+ n 1)))
    (else (/ (+ n 1) (+ n 2)))))
  (define (next n) (+ n 1))
  (* 4.0 (product coeff 1 next n))
  )
