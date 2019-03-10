#lang sicp

(#%require rackunit)

(define (f n)
  (if (< n 3)
      n
      (+
       (f (- n 1))
       (f (- n 2))
       (f (- n 3)))))


(define (f-iter n)
  (define (iter a b acc count)
    (if (= count n)
        acc
        (iter (+ a b acc) a b (+ count 1))))
  (iter 2 1 0 0))


(check-equal? (f-iter 0) (f 0))

(check-equal? (f-iter 1) (f 1))

(check-equal? (f-iter 2) (f 2))

(check-equal? (f-iter 5) (f 5))

(check-equal? (f-iter 10) (f 10))

(check-equal? (f-iter 21) (f 21))
