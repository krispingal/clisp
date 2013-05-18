;Insert an element into a list at given position

(defun insert-at (target lis pos)
  (cond
   ((endp lis)                            nil)
   ((eq pos 1)                            (cons target (cons (car lis) (cdr lis))))
   (t                                     (cons (car lis) (insert-at target (cdr lis) (- pos 1))))
   )
)


(print (insert-at 'boo '(1 2 3 4 5 6 7 8 9) 5))
