#!/usr/bin/racket
#lang racket

(define (square x)
        (* x x))

(define (sum-of-squares a b)
        (+ (square a)
           (square b)))

(define (both-greater-or-equal-than g1 g2 against)
        (and (>= g1 against)
             (>= g2 against)))

(define (sum-of-squares-largest-of-three a b c)
        (cond ((both-greater-or-equal-than a b c)
               (sum-of-squares a b))
              ((both-greater-or-equal-than a c b)
               (sum-of-squares a c))
              ((both-greater-or-equal-than b c a)
               (sum-of-squares b c))))

;;; Testing down here
(define (test actual expected)
        (cond ((= actual expected)
                (println "passed"))
              (else
                (println "failed"))))

(println "square tests")
(test (square 1)
      1)
(test (square 2)
      4)
(test (square 3)
      9)
(test (square 4)
      16)
(test (square 5)
      25)

(println "sum-of-squares tests")
(test (sum-of-squares 1 2)
      5)
(test (sum-of-squares 2 3)
      13)
(test (sum-of-squares 3 4)
      25)

(println "sum-of-squares-largest-of-three tests")
(test (sum-of-squares-largest-of-three 1 2 3)
      13)
(test (sum-of-squares-largest-of-three 2 3 1)
      13)
(test (sum-of-squares-largest-of-three 3 1 2)
      13)

