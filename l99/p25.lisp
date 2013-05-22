;Generate a random permutation of elements of a list
(setf *random-state* (make-random-state t))

(defun rnd-permu (lis temp)
  (cond
   ((endp lis)                             nil)
   ((eq (length temp) (length lis))        temp)
   (t                                      (rnd-permu lis (check lis temp (nth (random (length lis))  lis))))
   )
)

(defun check (lis temp bar)
  (cond
   ((endp temp)                            (cons bar temp))
   ((eq bar (car temp))                    temp)
   (t                                      (cons (car temp) (check lis (cdr temp) bar)))
   )
)

(defun foo (lis)
  (rnd-permu lis nil)
)

(print (foo '(1 2 3 4 5 6 7 8 9)))
