;Find the k'th element of a list

(defun element-at (lis pos) 
  (cond
   ((endp lis)                 (error "Index out of bounds"))
   ((= pos 1)                  (car lis))
   (t                          (element-at (cdr lis) (- pos 1)))
   )
)

(print (element-at '(1 2 3 4 5 6 7) 5))