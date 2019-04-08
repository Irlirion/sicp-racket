#lang sicp

(#%require rackunit)

(define (fast-mult a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (cond ((= b 0) 0)
        ((even? b) (fast-mult (double a) (halve b)))
        (else (+ a (fast-mult a (- b 1))))))

(check-equal? (fast-mult 2 10) 20)
(check-equal? (fast-mult 0 10) 0)
(check-equal? (fast-mult 0 0) 0)
(check-equal? (fast-mult -100 100) -10000)
(check-equal? (fast-mult 100 100) 10000)