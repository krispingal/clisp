;To flatten a list

(defun flatten (lis)
  (if (endp lis)
      nil
    (cond
     ((listp (car lis))                          (append (flatten (car lis)) (flatten (cdr lis))))
     (t                                          (append (list (car lis))  (flatten (cdr lis))))
     )
    )
)

(print (flatten '(a (q (w (r)) ) 2 ((3)))))