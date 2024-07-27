#lang sicp

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


(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(search 1000 )
(search 10000)
(search 100000)
(search 1000000)
(search 10000000)
(search 100000000)
