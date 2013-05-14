;Reverse a list

(defun reverse-list (lis)
  (cond
   ((endp lis)                   nil)
   (t                            (append (reverse (cdr lis)) (list (car lis))))
   )
)


(print (reverse-list '(1 2 3 4 5 6 7 8)))
