;To eliminate consecutive duplicates of list elements

(defun foo (lis) 
  (compress lis nil)
)

(defun compress (lis temp)
  (cond 
   ((endp lis)                           nil)
   ((eq (car lis) temp)                  (compress (cdr lis) temp))
   (t                                    (append (list (car lis)) (compress (cdr lis) (car lis))))
   )
)

(print (foo '(a a a a s s d f g g g)))
