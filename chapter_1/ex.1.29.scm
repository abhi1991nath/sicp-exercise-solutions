;; Version without using higher order functions
(define (integral-simpson f a b n)
  (define h (/ (- b a) n))
  (define (x k) (+ a (* k h)))
  (define (coeff k)
    (cond ((or (= k 0) (= k n)) 1)
	  ((even? k) 2)
	  (else 4)))
  (define (term k) (* (coeff k) (f (x k))))
  (define (sum-iter k)
    (if (> k n) 0 (+ (term k) (sum-iter (+ k 1)))))

  (* (/ h 3) (sum-iter 0))
  )


;; Higher order summation function
;(define (sum term a next b)
;  (if (> a b)
;      0
;      (+ (term a) (sum term (next a) next b))))


(define (sum term a next b)
  (define (iter x result)
    (if (> x b)
        result
	(iter (next x) (+ result (term x)))))
  (iter a 0))


;; Version of simpson's rule using higher-order function
(define (integral-simpson-2 f a b n)
  (define h (/ (- b a) n))
  (define (next x) (+ x h h))
  (* (/ h 3) (+ (f a)
		(* 2 (sum f (next a) next b))
		(* 4 (sum f (+ a h) next b))
		(f b)))
  )
