(define (expmod base ex mod); base^expt % mod
    (cond 
        ((= ex 0) 1)
        ((is_even? ex) (remainder (square (expmod base (/ ex 2) mod)) mod))
        (else (remainder (* base (expmod base (- ex 1) mod)) mod))))


(define (all_test n count)
    (cond 
    ((= count 0) true)
    ((try_one count n) (all_test n (- count 1)))
    (else false)
    )
)
(define (test n)
    (all_test n (- n 1))
)

(define (try_one a n)
    (= a (expmod a n n))
)

(define (is_even? x) (= (remainder x 2) 0))

(define (square x) (* x x))


(test 561)
(test 1105)
(test 1729)
(test 2465)
(test 2821)
(test 6601)