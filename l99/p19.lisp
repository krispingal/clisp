;To rotate a list N places to the left


(defun splitAt (lis pos)
  (cond 
   ((endp lis)                     nil)
   ((eq pos 1)                     (cons (list (car lis)) (list (cdr lis))))
   (t                              (cons (cons (car lis) (car (splitAt (cdr lis) (- pos 1)))) (cdr (splitAt (cdr lis) (- pos 1)))))
   )
)
  
(defun rotate (lis count)
  (cond
   ((endp lis)                     nil)
   ((> count 0)                    (append (cadr (splitAt lis count)) (car (splitAt lis count))))
   (t                              (append (cadr (splitAt lis (+ (length lis) count))) (car (splitAt lis (+ (length lis) count)))))
   )
)

(print (rotate '(a b c d e f g h) -2))
