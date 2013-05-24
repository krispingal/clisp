;Given a range of integers by it's lower and upper 
;limit print a list of all even numbers and their 
;Goldbach composition


;function goldbach is given the no. ,lis :list of prime
;numbers b/w 1 and num, temp a dummy list also storing 
;the list of prime numbers
(defun goldbach (num lis temp)
  (cond
   ((endp lis)                                 ())
   ((traverse (- num (car lis)) temp)          (cons (car lis) (list (- num (car lis)))) )
   (t                                          (goldbach num (cdr lis) temp))
   )
)

;traverses through the list and check whether argument
;is present in the list (i.e. check whether argument is prime)
(defun traverse (num lis)
  (cond
   ((endp lis)                                 nil)
   ((eq num (car lis))                         t)
   (t                                          (traverse num (cdr lis)))
   )
)

;list-prime returns a list of prime numbers from
;2 to upperlimit
(defun list-prime (upperlimit current lis)
  (cond
   ((> current upperlimit)                     lis)
   ((check current lis)                        (list-prime upperlimit (+ current 1) (cons current lis)))
   (t                                          (list-prime upperlimit (+ current 1) lis))
   )
)

;check fn. returns t if number is prime else
;false .This is by the logic that a composite number
;number is divisible by atleast one prime number
;less than the number itself, but this is not so for primes.
;Argument lis is a list of prime numbers less than current
(defun check (current lis)
  (cond
   ((endp lis)                                                    t)
   ((or (eq (rem current (car lis)) 0) (eq current 1))            nil)
   (t                                                             (check current (cdr lis)))
   )
)

;Dummy fn. changes order of the range if necessary etc
(defun foo (low  upper)
  (if (> low upper) 
      (foo upper low)
  (inverse (list-prime upper 2 nil)))
)

;reverses the list
(defun inverse (lis)
  (cond
   ((endp lis)                                   nil)
   (t                                            (append (reverse (cdr lis)) (list (car lis))))
   )
)

;chops of unwanted part of list of prime ,i.e primes < lowerlimit
(defun bar (low lis)
  (cond 
   ((>= (car lis) low)                           lis)
   (t                                            (bar low (cdr lis)))
   )
)

(defun foobar (lowerlim upperlim lis lim)
  (if (endp lis) (setf lis (bar lim (foo 2 upperlim))) nil)
  (cond 
   ((eq (rem lowerlim 2) 1)                      (foobar (+ lowerlim 1) upperlim lis lim))
   ((<= lowerlim upperlim)                       (cons (goldbach lowerlim lis lis) (foobar (+ lowerlim 2) upperlim lis lim)))
   (t                                            nil)
   )
)

(defun fubar (lowerlim upperlim lim)
  (foobar lowerlim upperlim nil lim)
)

(print (fubar 1 1000 50))
