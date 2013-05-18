;Replicate elements of a list given no. of times

(defun repli (lis count) 
  (cond
   ((or (endp lis)  (eq count 0))                           nil)
   (t                                                       (append (cons (car lis) (repli (list (car lis)) (- count 1))) (repli (cdr lis) count)))
   )
)


(print (repli '(a s d f g h) 3))