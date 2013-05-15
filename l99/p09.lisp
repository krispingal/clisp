;To pack a list, i.e group consecutive duplicates in lists

(defun pack (lis)
  (if (endp lis)
      nil
    (cond 
     ((eq (car lis) (cadr lis))                    (append (list (cons (car lis) (car (pack (cdr lis) )))) (cdr (pack (cdr lis) ))))
     (t                                            (cons (list (car lis)) (pack (cdr lis) )))
     )
    )
)


(print (pack '(a a b b c)))
