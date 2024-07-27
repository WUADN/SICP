(define (double x) (* x 2))

(define (halve x) (/ x 2))

(define (fast_mul a b)
    (fast_mul_iter a b 0)
)

(define (fast_mul_iter a b app) ;append + a*b
    (cond 
        ((= b 0) (app))
        ((is_even? b) (fast_mul_iter (+ a a) (/ b 2) app))
        (else (fast_mul_iter a (- b 1) (+ app a))
        ))
        
)


(define (is_even? x) (= (remainder x 2) 0))

(fast_mul 2 3)