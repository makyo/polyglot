#lang racket
(require srfi/1)

(define (difference-of-sum-of-squares-and-square-of-sums n)
    (-
        (expt (reduce + 0 (iota n 1)) 2)
        (reduce (lambda (y x) (+ x (expt y 2))) 0 (iota n 1))))

(print (difference-of-sum-of-squares-and-square-of-sums 100))
