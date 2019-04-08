#lang sicp

;      1
;     1 1
;    1 2 1
;   1 3 3 1
;  1 4 6 4 1
;
;            / 1                              , n = 1 or row = n
; f(row, n) = <  
;            \ f(row - 1, n - 1) + f(row - 1, n)  , otherwise

(#%require rackunit)

(define (pascal-triangle row n)
  (if (or (= n 1) (= n row))
      1
      (+ (pascal-triangle (- row 1) (- n 1))
         (pascal-triangle (- row 1) n))))

(check-equal? (pascal-triangle 5 3) 6)
