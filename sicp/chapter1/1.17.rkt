#lang sicp

(#%require rackunit)

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (dec b)))))

(define (square x) (* x x))

(define (double x) (* 2 x))

(define (halve x) (/ x 2))

(define (fast-exp b n)
  (define (exp-iter b n a)
    (if (= n 0)
        a
        (if (even? n)
            (exp-iter (square b) (halve n) a)
            (exp-iter b (- n 1) (* a b)))))
  (exp-iter b n 1))

(check-equal? (fast-exp 2 10) 1024)