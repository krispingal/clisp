;This code is to find the last but one box of a list

(defun my-but-last (lis) 
  (cond 
   ((endp lis)                            (error "Empty list"))
   ((endp (cdr lis))                      (error "list too short"))
   ((endp (cdr (cdr lis)))                (append lis ()))
   (t                                      (my-but-last (cdr lis)))
   )
)

;can't seem to return lis hmmm

(print (my-but-last '(1 2 3 4 5 6)))
