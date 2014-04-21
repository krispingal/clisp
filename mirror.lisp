;;Program to mirror a list i.e. ((a b) x (c d)) --> ((d c) x (b a))

(defun mirror (lis)
  (cond
   ((endp lis)            nil)
   ((listp (car lis))     (append (mirror (cdr lis)) (list (mirror (car lis)))))
   (t                     (append (mirror (cdr lis)) (list (car lis))))
   )
)

(print (mirror '((1 2) 3 (4 5))))
