;Drop every n'th element from a list

(defun drop (lis num count)
  (cond 
   ((endp lis)                   nil)
   ((eq num count)               (drop (cdr lis) num 1))
   (t                            (cons (car lis) (drop (cdr lis) num (+ count 1))))
   )
)

(defun foo (lis num)
  (print (append (append '(list before drop ) lis) (append '( count ) (list num))))
  (drop lis num 1)
)

(print (foo '(z x c v b n m a s d f g h j k) 3))