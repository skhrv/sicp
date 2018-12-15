#lang racket
(require rackunit)
#|
Упражнение 1.4
Заметим, что наша модель вычислений разрешает существование комбинаций, операторы которых - составные выражения. С помощью этого наблюдения опишите, как работает следующая процедура:
(define (a-plus-abs-b a b)
  (if (> b 0) + -) a b)
|#
(define (abs x)
  (cond
    ((< x 0) (- x))
    ((>= x 0) x)))

(define (sum a b)
  (+ a b))

(define (a-plus-abs-b a b)
  (sum a (abs b)))

(check-equal? (a-plus-abs-b 1 (- 1)) 2)
