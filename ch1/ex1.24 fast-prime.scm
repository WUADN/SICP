#lang sicp
; 修改 prime检查为费马检测

(define (expmod base ex mod); base^expt % mod
    (cond 
        ((= ex 0) 1)
        ((is_even? ex) (remainder (square (expmod base (/ ex 2) mod)) mod)) ;这里要用square,因为是正则序
        (else (remainder (* base (expmod base (- ex 1) mod)) mod))))

(define (is_even? x) (= (remainder x 2) 0))

(define (fermat-test n)
    (define (try-it a)
    (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1))))
)

(define (fast_prime? n times) 
    (cond 
        ((= times 0) true)
        ((fermat-test n) (fast_prime? n (- times 1)))
        (else false)))

(define (prime? n)
    (fast_prime? n 20)
)

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search_for_prime begin count) 
    (cond 
        ((= count 3) (display " finish test"))
        ((prime? begin) (timed-prime-test begin) (search_for_prime (+ 1 begin) (+ count 1)))
        (else (search_for_prime (+ begin 1) count)) 
    )
)

(define (search begin) (search_for_prime begin 0))

(define (square x) (* x x))


(define (abs x)
  (cond 
    ((< x 0) (- x))
    (else    x)))

(define (average x y) (/ (+ x y) 2))



(search 1000 )
(search 10000)
(search 100000)
(search 1000000)
(search 10000000)
(search 100000000)
