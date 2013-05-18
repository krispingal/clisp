;Split a list into 2 parts, the length of the first split is given

(defun splitAt (lis pos)
  (cond 
   ((endp lis)                     nil)
   ((eq pos 1)                     (cons (list (car lis)) (list (cdr lis))))
   (t                              (cons (cons (car lis) (car (splitAt (cdr lis) (- pos 1)))) (cdr (splitAt (cdr lis) (- pos 1)))))
   )
)


(print (splitAt '(a b c v b g y x f) 5))

