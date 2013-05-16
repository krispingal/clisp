;To run-length encoding of a list,modified 

(defun pack (lis)
  (if (endp lis)
      nil
    (cond 
     ((eq (car lis) (cadr lis))                    (append (list (cons (car lis) (car (pack (cdr lis) )))) (cdr (pack (cdr lis) ))))
     (t                                            (cons (list (car lis)) (pack (cdr lis) )))
     )
    )
)

(defun encode (lis)
  (if (endp lis) 
      nil
    (cond 
     ((eq (length (car lis)) 1)                    (append (car lis) (encode (cdr lis))))
     ( t                                           (cons (cons (length (car lis))  (list (caar lis))) (encode (cdr lis))))
    )
    )
)

(defun foo (lis)
  (encode (pack lis))
)

(print (foo '(d s a a a a v v d d)))
