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
(define (fast_line_expt_iter b n)
    (cond
        ((= n 0) 1)
        ((is_even? n) (fast_line_expt_iter (* b b) (/ n 2)))
        (else (* b (fast_line_expt_iter b (- n 1))))
    )
) ;不用a保存数据


(define (square x) (* x x))

(define (is_even? x) (= (remainder x 2) 0))

(tp fast_expt 2 20)

(tp fast_line_expt_iter 2 20)


