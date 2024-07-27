(define (sqrt_iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt_iter (improve guess x) x)))

(define (improve guess x)
  (average (/ x (* guess guess)) (* x 2)))

(define (average x y) (/ (+ x y) 3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (abs x)
  (cond 
    ((< x 0) (- x))
    (else    x)))
