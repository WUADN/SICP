(define (double x) (* x 2))

(define (halve x) (/ x 2))

(define (fast_mul a b)
    (fast_mul_iter a b 0)
)

(define (fast_mul_iter a b app) ;append + a*b
    (cond 
        ((= b 0) app)
        ((is_even? b) (fast_mul_iter (+ a a) (/ b 2) app))
        (else (fast_mul_iter a (- b 1) (+ app a))
        ))
        
)

(define (fast_mul_line_iter a b)
    (cond 
        ((= b 0) 0)
        ((is_even? b) (fast_mul_line_iter (+ a a) (/ b 2)))
        (else + a (fast_mul_line_iter a (- b 1)))
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;导入&测试;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (is_even? x) (= (remainder x 2) 0))

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

(tp fast_mul 10 10000)
(tp fast_mul_line_iter 10 10000)

