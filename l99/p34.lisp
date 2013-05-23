;Calculate eulers totient function phi 

(defun totient-phi (num current count)
  (cond
   ((> current num)             count)
   ((coprime num current)       (totient-phi num (+ current 1) (+ count 1)))
   (t                           (totient-phi num (+ current 1) count))
   )
)		    

(defun coprime (num1 num2)
  (if (eq (find-gcd num1 num2) 1)     t               nil)
)

(defun find-gcd (num1 num2)
  (cond
   ((< num1 num2)               (find-gcd num2 num1))
   ((= (rem num1 num2) 0)       num2)
   (t                           (find-gcd num2 (rem num1 num2)))
   )
)

(defun foo (num)
  (totient-phi num 1 0)
)

(print (foo 10))
