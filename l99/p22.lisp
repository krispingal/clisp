;Create a list containing a sub range of integers

(defun range (x y)
  (cond
   ((= x y)                              (list x))
   ((< x y)                              (cons x (range (+ x 1) y)))
   (t                                    (cons x (range (- x 1) y)))
   )
)


(print (range 4 9))