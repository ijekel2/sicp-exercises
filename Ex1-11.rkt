#lang planet neil/sicp

#|
Exercise 1.11

Part A
Below is a procedure which recursively computes the function f defined by
f(n) = n if n < 3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.
|#

(define (f1 n)
  (cond ((< n 3) n)
        (else (+ (f1 (- n 1))
                 (* 2 (f1 (- n 2)))
                 (* 3 (f1 (- n 3)))))))
              
;;; Test f1
(f1 0)
(f1 1)
(f1 2)
(f1 3)
(f1 4)
(f1 5)
(f1 6)

#|
Part A
Below is a procedure which iteratively computes the function f.
|#
 
(define (f2 n)
  (f-iter 0 1 2 n))

(define (f-iter a b c count)
  (if (= count 0)
      a
      (f-iter  b c (+ c (* 2 b) (* 3 a)) (- count 1))))

;;; Test f2 
(f2 0)
(f2 1)
(f2 2)
(f2 3)
(f2 4)
(f2 5)
(f2 6)