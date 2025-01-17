(define (sqrt x)
        (sqrt_iter 1.0 x)
)
(define (sqrt_iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt_iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (abs x)
  (cond 
    ((< x 0) (- x))
    (else    x)))

(define (square x) (* x x))

(define (new-if predicate then-clause else-clause)
  (cond 
    ((predicate) then-clause)
    (else        else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))