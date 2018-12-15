#lang racket
(require rackunit)
#|
Упражнение 1.3
Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму квадратов двух больших из них
|#

(define (square x) 
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)(square y)))


(define (solution a b c)
  (cond
    ((and (< a b) (< a c)) (sum-of-squares b c))
    ((and (< b a) (< b c)) (sum-of-squares a c))
    ((and (< c a) (< c b)) (sum-of-squares a b))))
    

(check-equal? (solution 1 2 3) 13)