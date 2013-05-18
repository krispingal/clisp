;Extract slice from list

(defun slice (lis x y)
  (cond 
   ((endp lis)                  nil)
   ((< 1 x y)                   (slice (cdr lis) (- x 1) (- y 1)))
   ((<= x y)                    (cons (car lis) (slice (cdr lis) x (- y 1))))
   (t                           nil)
   )
)


(print (slice '(1 2 3 4 5 6 7 8 9 0) 3 7))