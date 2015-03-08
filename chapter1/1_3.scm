(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
        )
  )

(define (sqrt3-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt3-iter (improve guess x) x)
      )
  )
    

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
  )

(define (good-enough? guess x)
  (< (abs ( - (* guess guess guess) x)) 0.001)
  )

(define (sqrt3 x)
  (sqrt3-iter 1.0 x)
  )

(sqrt3 26)
