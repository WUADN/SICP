#lang racket
(provide square)
; 平方
(define (square x) (* x x))

; 绝对值
(define (abs x)
  (cond 
    ((< x 0) (- x))
    (else    x)))

(define (average x y) (/ (+ x y) 2))

;函数运行时间打印器

(define (tp fn . args)
  (newline)
  (display "Start: ")
  (let ((start-time (runtime)))
    (apply fn args)
    (let ((elapsed-time (- (runtime) start-time)))
      (report-time elapsed-time))))

(define (report-time elapsed-time)
  (display " *** Elapsed time: ")
  (display elapsed-time)
  (display " seconds"))

