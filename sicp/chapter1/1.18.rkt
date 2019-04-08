#lang sicp

(#%require rackunit)

(define (fast-mult a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (define (mult-iter a counter sum)
    (cond ((= counter 0) 
           sum)
          ((even? counter) 
           (mult-iter (double a) (halve counter) sum))
          (else 
           (mult-iter a (- counter 1) (+ sum a)))))
  (mult-iter a b 0))

(check-equal? (fast-mult 2 10) 20)
(check-equal? (fast-mult 0 10) 0)
(check-equal? (fast-mult 0 0) 0)
(check-equal? (fast-mult -100 100) -10000)
(check-equal? (fast-mult 100 100) 10000)