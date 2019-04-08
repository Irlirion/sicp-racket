#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (max x y)
  (if (> x y)
      x
      y))

(define (min x y)
  (if (> x y)
      y
      x))

(define (max3 x y z)
  (max (max x y) z) (max (min x y) z))

(define (max-sum-of-squares x y z)
        (max3 (sum-of-squares x y) (sum-of-squares x z) (sum-of-squares y z)))

(check-equal? (square 2) 4)
(check-equal? (sum-of-squares 2 4) 20)
(check-equal? (max 2 4) 4)
(check-equal? (max3 2 4 5) 5 4)
(check-equal? (max-sum-of-squares 1 2 3) 13 10)
