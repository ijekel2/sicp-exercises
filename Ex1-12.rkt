#lang planet neil/sicp

#|
Exercise 1.12

Below is a procedure that computes the elements of Pascal's triangle by means of a recursive process.
|#

(define (p-triangle row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (p-triangle (- row 1) (- col 1))
                 (p-triangle (- row 1) col)))))

;; Test p-triangle procedure
(p-triangle 1 1)
(p-triangle 2 1)
(p-triangle 2 2)
(p-triangle 3 1)
(p-triangle 3 2)
(p-triangle 3 3)
(p-triangle 4 1)
(p-triangle 4 2)
(p-triangle 4 3)
(p-triangle 4 4)
(p-triangle 5 1)
(p-triangle 5 2)
(p-triangle 5 3)
(p-triangle 5 4)
(p-triangle 5 5)