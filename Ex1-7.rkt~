#lang planet neil/sicp
#|
Exercise 1.7

Below is the original procedure for Newton's Method. Observe the behaviour when
we run (sqrt 0.0001) and (sqrt 100,000,000,000,000). In the first case we get a result of
0.032308. Compare this to the correct answer of 0.001 and we see a significant error.
In the second case the evaluator goes into an infinite loop providing no answer.
|#

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;; Call the procedure

;;(sqrt 0.0001)
;;(sqrt 10000000000000)


#|
Below is a new version of the above procedure with a modified ending condition.
This new condition is met when the change between two consecutive improved guesses
is less than (* guess 0.0001). This will new procedure will produce answers
approximately equal to the correct answers of 0.01 and 3162277.66.
|#

(define (good-enough?-2 prev-guess guess x)
  (< (abs (- guess prev-guess)) (* guess 0.001)))

(define (improve-2 guess x)
  (average guess (/ x guess)))

(define (sqrt-iter-2 prev-guess guess x)
  (if (good-enough?-2 prev-guess guess x)
      guess
      (sqrt-iter-2 guess
                   (improve-2 guess x)
                   x)))

(define (sqrt-2 x)
  (sqrt-iter-2 1.0 2.0 x))

;;; Call the procedure

(sqrt-2 0.0001)
(sqrt-2 10000000000000)
