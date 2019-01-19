#lang racket
(require rackunit)

(define (square x) 
  (* x x))
  
(define (good-enough? guess prev-guess)
 (< (abs (- prev-guess guess)) 0.001))

(define (divide-by-three x y)
  (/ (+ x y) 3))

(define (improve guess x)
  (divide-by-three (/ x (square guess)) (* 2 guess)))

(define (iter guess x prev-guess)
  (if (good-enough? guess prev-guess)
    guess
    (iter (improve guess x)
          x guess)))
            
(define (cbrt-iter guess x)
  (iter (improve guess x) x guess))

(check-equal? (real->decimal-string (cbrt-iter 1.0 8)) "2.00")
