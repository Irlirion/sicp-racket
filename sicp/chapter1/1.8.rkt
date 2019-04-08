#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ (+ (/ x (square guess)) (* 2 guess)) 3)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (abs (* guess 0.001))))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(check-equal? (cbrt 64) 4.004539592552768)