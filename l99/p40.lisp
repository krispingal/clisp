;Goldbach's conjecture
;Every even number greater than 2 is a sum of two prime numbers


(defun goldbach (num lis temp)
  (cond
   ((endp lis)                                 '(no goldbach))
   ((traverse (- num (car lis)) temp)          (cons (car lis) (list (- num (car lis)))) )
   (t                                          (goldbach num (cdr lis) temp))
   )
)

(defun traverse (num lis)
  (cond
   ((endp lis)                                 nil)
   ((eq num (car lis))                         t)
   (t                                          (traverse num (cdr lis)))
   )
)

(defun list-prime (upperlimit current lis)
  (cond
   ((> current upperlimit)                     lis)
   ((check current lis)                        (list-prime upperlimit (+ current 1) (cons current lis)))
   (t                                          (list-prime upperlimit (+ current 1) lis))
   )
)

(defun check (current lis)
  (cond
   ((endp lis)                                                    t)
   ((or (eq (rem current (car lis)) 0) (eq current 1))            nil)
   (t                                                             (check current (cdr lis)))
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

(defun foobar (num)
  (setf lis (foo 2 num))
  (goldbach num lis lis)
)


(print (foobar 26))