(define (expmod base expt mod) ;复杂度反而回到了o(n)
  (cond 
    ((= expt 0) 1)
    ((even? expt) (remainder (* (expmod base (/ expt 2) mod) (expmod base (/ expt 2) mod)) mod))
    (else (remainder (* base (expmod base (- expt 1) mod)) mod)))
