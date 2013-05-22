;Find gcd of two numbers using euclid's algorithm

(defun find-gcd (num1 num2)
  (cond
   ((< num1 num2)               (find-gcd num2 num1))
   ((= (rem num1 num2) 0)       num2)
   (t                           (find-gcd num2 (rem num1 num2)))
   )
)

(print (find-gcd 36 63))
