#lang planet neil/sicp

#|
Exercise 1.9

Part A
Consider the following procedure for adding two positive integers:

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

Evaluating this with the substitution model we obtain:

(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

Notice how we see the process expand and shrink as it progresses. The inc
precedures are deferred until the variable a reaches an ending condition.
Additionally, the number of deferred procedures is proportional to the value
a. Therefore we can conclude that this is a linear recursive process.


Part B
Now consider this alternative procedure:

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

Here is the result of the substitution process for this procedure:

(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9

As we can see, the two state variables a and b are updated with each iteration
of the procedure. Thus at any point, the state variables contain a complete discription
of the state of the computation at that time. Also the number of iterations is
proportional to the value of a. Therefore this is a linear iterative process.

|#
