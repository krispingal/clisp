;Construct a list of prime numbers

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
   ((endp lis)                                 t)
   ((eq (rem current (car lis)) 0)             nil)
   (t                                          (check current (cdr lis)))
   )
)

;Dummy fn. changes order of the range if necessary etc,
(defun foo (low  upper)
  (if (> low upper) 
      (foo upper low)
  (bar low (inverse (list-prime upper 2 nil))))
)

;chops of unwanted part of list of prime ,i.e primes < lowerlimit
(defun bar (low lis)
  (cond 
   ((>= (car lis) low)                           lis)
   (t                                            (bar low (cdr lis)))
   )
)

;reverses the list
(defun inverse (lis)
  (cond
   ((endp lis)                                   nil)
   (t                                            (append (reverse (cdr lis)) (list (car lis))))
   )
)

(print (foo 6 45))
