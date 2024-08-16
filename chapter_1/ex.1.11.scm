(define (f n) ; Recursive process
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


(define (f-iter-helper f-m-3 f-m-2 f-m-1 f-m m n) ; Helper for iterative process
  (if (= m n)
      f-m
      (f-iter-helper f-m-2 f-m-1 f-m (+ (* 3 f-m-2) (* 2 f-m-1) f-m) (+ m 1) n)))

(define (f-iter n) ; Iterative process
  (if (< n 3)
      n
      (f-iter-helper 0 1 2 4 3 n)))
