(define (pascals-triangle row col) ; head of the triangle is at row 1 and col 1; also col <= row
  (if (or (= col 1) (= col row)) 
      1
      (+ (pascals-triangle (- row 1) col) (pascals-triangle (- row 1) (- col 1)))))
