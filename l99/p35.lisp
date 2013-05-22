;Construct a flat list containing the prime factors

(defun prime-factors (num current lim)
  (cond
   ((> current lim)                         nil)
   ((eq (rem num current) 0)                (cons current (prime-factors (/ num current) current lim)))
   (t                                       (prime-factors num (+ current 1) lim))
   )
)

(defun foo (num)
  (prime-factors num 2 (sqrt num))
)

(print (foo 315))
