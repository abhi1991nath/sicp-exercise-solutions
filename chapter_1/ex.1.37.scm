(define (cont-frac n d k)
  (if (= k 1)
      (/ (n k) (d k))
      (/ (n 1)
         (+ (d 1)
            (cont-frac (lambda (i) (n (+ i 1)))
                       (lambda (i) (d (+ i 1)))
                       (- k 1))))))


(define (cont-frac-iter n d k)
  (define (iter num den i)
    (if (= i 1)
        (/ (n 1) (+ (d 1) (/ num den)))
        (iter (n i) (+ (d i) (/ num den)) (- i 1))))
  (if (= k 1)
      (/ (n 1) (d 1))
      (iter (n k) (d k) (- k 1))))


(define (tan-cf x k)
  (define (n i) (if (= i 1) x (* x x -1)))
  (define (d i) (- (* 2.0 i) 1))
  (cont-frac n d k))
