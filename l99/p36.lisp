;Determine the prime factors of a number and their multiplicity

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
  (encode (pack (prime-factors num 2 (+ (isqrt num) 1))))
)

(print (foo 6))
