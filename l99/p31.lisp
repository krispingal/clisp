;determine whether given no.is prime

(defun is-prime (num current lim)
  (cond
   ((> current lim)                    t)
   ((= (rem num current) 0)            nil)
   (t                                  (is-prime num (+ current 1) lim))
   )
)


(defun foo (num)
  (is-prime num 2 (sqrt num))
)

(print (foo 87))