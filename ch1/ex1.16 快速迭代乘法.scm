(define (fast_expt b n)
    (fast_expt_iter b n 1)
)

(define (fast_expt_iter b n a) ;a*b^n, 最后返回a
    (cond
        ((= n 0) a)
        ((is_even? n) (fast_expt_iter(* b b) (/ n 2) a))
        (else (fast_expt_iter b (- n 1) (* b a)))
    )
)

(define (square x) (* x x))

(define (is_even? x) (= (remainder x 2) 0))




