;Determine the totient-phi function of a number (modified)

(defun totient-phi (lis)
  (cond
   ((endp lis)                             0)
   (t                                      (+ (* (- (caar lis) 1) (power (caar lis) (- (cadar lis) 1))) (totient-phi (cdr lis))))
   )
)
					   
(defun power (num index)
  (cond
   ((eq index 0)                            1)
   ((eq index 1)                            num)
   (t                                       (* num (power num (- index 1))))
   )
)


(defun prime-factors (num current lim)
  (cond
   ((> current lim)                         nil)
   ((eq (rem num current) 0)                (cons current (prime-factors (/ num current) current lim)))
   (t                                       (prime-factors num (+ current 1) lim))
   )
)

(defun pack (lis)
  (if (endp lis)
      nil
    (cond 
     ((eq (car lis) (cadr lis))                    (append (list (cons (car lis) (car (pack (cdr lis) )))) (cdr (pack (cdr lis) ))))
     (t                                            (cons (list (car lis)) (pack (cdr lis) )))
     )
    )
)

(defun encode (lis)
  (if (endp lis) 
      nil
    (cons (cons (caar lis) (list (length (car lis))) ) (encode (cdr lis)))
    )
)


(defun foo (num)
  (setf lis (encode (pack (prime-factors num 2 (+ (isqrt num) 1)))) )
  (print lis)
  (- (totient-phi lis) (- (length lis) 1))
  ;(prime-factors num 2 (sqrt num))
)

(print (foo 36))

