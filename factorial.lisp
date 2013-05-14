;This code finds the factorial of a number using function recursion

(defun factorial (a)
  (if (= a 0) 1
    (* a (factorial (- a 1)))
    )
)

(print '(enter a no.))
(print (factorial (read)))