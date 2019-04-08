#lang sicp

(#%require rackunit)

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (f-rec (- n 2))
         (f-rec (- n 3)))))

(define (f2 n)
  (define (f-iter a b c n)
    (if (= n 0)
        a
        (f-iter b c (+ c b a) (- n 1))))
  (f-iter 0 1 2 n))
      
(check-equal? (f-rec 10) 230)
(check-equal? (f2 10) 230)
