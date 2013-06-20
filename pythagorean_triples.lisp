;;The following code aims to find all the pythagorean triples
;;within a given perimetre.For a triplet to be a pythagorean
;;triplet it must satisfy condition : a^2 + b^2 = c^2 
;;and a,b,c should be coprime 

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

(defun foo (perimeter)
  (pythagorean-triplet 1 2 3 perimeter)
)


;;I have taken the liberty of using many "deductions" from
;;triangle inequality in that if x is the shortest side it 
;;will not exceed perimeter/3 and furthermore the second shortest
;;side will not exceed perimeter/2

(defun pythagorean-triplet (x y z limit)
  (cond 
   ((>= x (/ limit 3))                               nil)
   ((or (not (coprime x y)) (> z (/ limit 1.5)))    (pythagorean-triplet x (+ y 1) (+ y 2) limit))
   ((>= y (/ limit 2))                              (pythagorean-triplet (+ x 1) (+ x 2) (+ x 3) limit))
   ((> (* z z) (+ (* x x) (* y y)))                 (pythagorean-triplet x (+ y 2) (+ y 3) limit))
   ((not (eq (* z z) (+ (* x x) (* y y))))          (pythagorean-triplet x y (+ z 1) limit))
   (t                                               (cons (list x y z) (pythagorean-triplet x (+ y 2) (+ y 3) limit)))
   )
)

(print (foo 80))