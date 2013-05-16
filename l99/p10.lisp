;To run-length encoding of a list

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
    (cons (cons (length (car lis))  (list (caar lis))) (encode (cdr lis)))
    )
)

(defun foo (lis)
  (encode (pack lis))
)


(print (foo '(a a a s s d)))
