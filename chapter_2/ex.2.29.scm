;; Binary mobile constructors and selectors
(define (make-mobile left right) (list left right))
(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (car (cdr mobile)))

;; Branch constructor and selectors
(define (make-branch length structure) (list length structure))
(define (branch-length branch) (car branch))
(define (branch-structure branch) (car (cdr branch)))

;; Predicate to check if a branch has only a weight hanging
;; or a mobile hanging.
(define (is-mobile? branch) (pair? (branch-structure branch)))

;; Total weight of a branch
(define (total-weight-branch branch)
  if (is-mobile? branch)
     (+ (total-weight-branch (left-branch branch))
        (total-weight-branch (right-branch branch)))
     (branch-structure branch))

;; Total weight of a mobile
(define (total-weight mobile)
  (+ (total-weight-branch (left-branch mobile))
     (total-weight-branch (right-branch mobile))))


(define (torque branch) (* (branch-length branch) (total-weight branch)))


(define (balanced? mobile)
  (define lb (left-branch mobile))
  (define rb (right-branch mobile))
  (and (= (torque lb) (torque rb))
       (if (is-mobile? lb) (balanced? lb) #t)
       (if (is-mobile? rb) (balanced? rb) #t)))
