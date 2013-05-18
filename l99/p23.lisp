;Extract a given no of randomly selected elements 

(defun remove-at (lis pos)
  (cond
   ((endp lis)                      nil)
   ((eq pos 1)                      (cdr lis))
   (t                               (cons (car lis) (remove-at (cdr lis) (- pos 1))))
   )
)

(defun rnd-select (lis count)
  (cond
   ((endp lis)                      nil)
   ((> (length lis) count)          (rnd-select (remove-at lis (random (length lis))) count))
   (t                               lis)
   )
)


(print (rnd-select '(1 2 3 4 5 6 7 8 9) 4))