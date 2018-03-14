#lang planet neil/sicp

#| Exercise 1.8 |#

(define (square x) (* x x))

(define (good-enough? prev-guess guess x)
  (< (abs (- guess prev-guess)) (* guess 0.001)))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (cbrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess x)
      guess
      (cbrt-iter guess
                   (improve guess x)
                   x)))

(define (cbrt x)
  (cbrt-iter 1.0 2.0 x))

#|
Test the procedure with the values 0.0001 and 10,000,000,000,000.
Correct answers are ~0.04641589 and ~21,544.347 respectively. Output
should be comparable to these answers.
|#

(cbrt 0.0001)
(cbrt 10000000000000)

