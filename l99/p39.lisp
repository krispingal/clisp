;Construct a list of prime numbers

(defun list-prime (upperlimit current lis)
  (cond
   ((> current upperlimit)                     lis)
   ((check current lis)                        (list-prime upperlimit (+ current 1) (cons current lis)))
   (t                                          (list-prime upperlimit (+ current 1) lis))
   )
)

(defun check (current lis)
  (cond
   ((endp lis)                                 t)
   ((eq (rem current (car lis)) 0)             nil)
   (t                                          (check current (cdr lis)))
   )
)

(defun foo (low  upper)
  (if (> low upper) 
      (foo upper low)
  (bar low (inverse (list-prime upper 2 nil))))
)

(defun bar (low lis)
  (cond 
   ((>= (car lis) low)                           lis)
   (t                                            (bar low (cdr lis)))
   )
)

(defun inverse (lis)
  (cond
   ((endp lis)                                   nil)
   (t                                            (append (reverse (cdr lis)) (list (car lis))))
   )
)

(print (foo 6 45))