;Run legth encoding directly

(defun encode-modified (lis)
  (cond
   ((endp lis)                                                 nil)
   ((eq (car lis) (cadr lis))
	(cond 
	 ((listp (car (encode-modified (cdr lis))))            (cons (cons (+ (caar (encode-modified (cdr lis))) 1) (list (cadr lis))) (cdr (encode-modified (cdr lis)))))
	 (t                                                    (cons (cons '2 (list (car lis))) (cdr (encode-modified (cdr lis)))))
	 )
	)
   (t                                                          (cons (car lis) (encode-modified (cdr lis))))
   )
)


(print (encode-modified '(w w x x x c v v)))
