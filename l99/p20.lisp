;Remove the K'th element from a list

(defun remove-at (lis pos)
  (cond
   ((endp lis)                  nil)
   ((eq pos 1)                  (cdr lis))
   (t                           (cons (car lis) (remove-at (cdr lis) (- pos 1))))
   )
)

(print (remove-at '(1 2 3 4 5 6 7 8 9) 6))
