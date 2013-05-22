(defun rnd-select (lis temp size)
  (cond
   ((endp lis)                             nil)
   ((eq (length temp) size)                temp)
   (t                                      (rnd-select lis (extract-check lis temp nil size) size))
   )
)

(defun extract-check (lis temp bar size)
  (cond
   ((eq bar nil)                           (extract-check lis temp (nth (+ (random size) 1) lis) size))
   ((endp temp)                            (cons bar temp))
   ((eq bar (car temp))                    temp)
   (t                                      (cons (car temp) (extract-check lis (cdr temp) bar size)))
   )
)

(defun foo (lis size)
  (rnd-select lis nil size)
)

(print (foo '(z x c v b n m a s d) 5))
