(define (make-rect origin height width angle)
  (cons (cons height width) (cons origin angle)))

(define (rect-height rect) (car (car rect)))

(define (rect-width rect) (cdr (car rect)))

(define (rect-perimeter rect)
  (* 2 (+ (rect-height rect) (rect-width rect))))

(define (rect-area rect)
  (* (rect-height rect) (rect-width rect)))
