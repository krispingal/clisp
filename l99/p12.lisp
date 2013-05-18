;Decode an encoded list
 
(defun decode (lis)
  (if (endp lis)
      nil
   (cond 
    ((listp (car lis))                         ((lambda (lis) (cond 
								 ((> (caar lis) 0)          (cons (cadar lis) (decode (cons (cons (- (caar lis) 1) (cdar lis)) (cdr lis)))))
								 (t                         (decode (cdr lis)))
								 )
						    ) lis))
   (t                                      (cons (car lis) (decode (cdr lis))))
   )
)
)


(print (decode '((2 w) (4 f) (3 r) e (2 t))))