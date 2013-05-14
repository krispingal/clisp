;Find the length of a list

(defun foo (lis) (find-length lis 0))

(defun find-length (lis count)
  (cond
   ((endp lis)               count)
   (t                        (find-length (cdr lis) (+ count 1)))
   )
)


(print (foo '(q w e r t y u)))
