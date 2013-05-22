;Draw N different random numbers from them set 1....M
(defun foo (size upperlimit)
  (lotto-select nil size upperlimit)
)

(defun lotto-select (lis size upperlimit)
  (cond
   ((eq (length lis) size)              lis)
   (t                                   (lotto-select ((lambda (lis num) (if (endp (check lis num)) (cons num lis) lis)) lis (+ (random upperlimit) 1))  size upperlimit))
   )
)


(defun check (lis tar)
  (cond
   ((endp lis)                           nil)
   ((eq (car lis) tar)                   lis)
   (t                                    (check (cdr lis) tar))
   )
)

(print (foo 9 56))
