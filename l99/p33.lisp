;Determine whether 2 numbers are coprime or not

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

(print (coprime 3 7))