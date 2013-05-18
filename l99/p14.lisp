;Duplicate the elements of a list

(defun duplicate (lis) 
  (cond
   ((endp lis)            nil)
   (t                     (append (cons (car lis) (list (car lis))) (duplicate (cdr lis))))
   )
)

(print (duplicate '(a a s d f g h h)))
