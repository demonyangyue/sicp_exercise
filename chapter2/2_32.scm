(define (subsets s)
  (if (null? s)
    (list nil)
    (let ((rest (subsets (cdr s))))
     (append rest (map 
                    (lambda (item) (append (list (car s)) item))
                    rest ))
     )
    
    )
  )

(define sets (list 1 2 3))
(subsets sets)
