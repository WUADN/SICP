(define (A x y) ;用于计算迭代计算
(cond ((= y 0) 0)
      ((= x 0) (* y 2))
      ((= y 1) 2)
      (else  (A (- x 1) (A x (- y 1)))) 
)
)