#lang sicp

(#%require rackunit)

(define (pascal-triangle x y)
  (if (or (= x y) (= y 1))
      1
      (+
       (pascal-triangle (- x 1) (- y 1))
       (pascal-triangle (- x 1) y))))


(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 2 2) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 4 2) 3)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)
