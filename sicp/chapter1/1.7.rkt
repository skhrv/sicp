#lang racket
(require rackunit)

(define (square x) 
  (* x x))
  
(define (good-enough? guess prev-guess)
 (< (abs (- prev-guess guess)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (iter guess x prev-guess)
  (if (good-enough? guess prev-guess)
    guess
    (iter (improve guess x)
          x guess)))
            
(define (sqrt-iter guess x)
  (iter (improve guess x) x guess))

(check-equal? (real->decimal-string (sqrt-iter 1.0 (square 1000))) "1000.00")
