#lang racket
(provide square)
(define (square x) (* x x))


(define (abs x)
  (cond 
    ((< x 0) (- x))
    (else    x)))

(define (average x y) (/ (+ x y) 2))
