;To find whether list is a palindrome or not

(defun find-length (lis count)                                       ;The first time fin-length is called count has to be passed as 0
  (cond
   ((endp lis)               count)
   (t                        (find-length (cdr lis) (+ count 1)))
   )
)


(defun reverse-list (lis)
  (cond
   ((endp lis)                   nil)
   (t                            (append (reverse (cdr lis)) (list (car lis))))
   )
)

(defun foo (lis)
  (cond
   ((endp lis)                    (print "List is empty, Palindrome"))
   (t                             (check-palindrome lis (reverse lis) (/ (find-length lis 0) 2.0)))
   )
)

(defun check-palindrome (lis rev count)
  (cond
   ((< count 1)                  (print "Palindrome"))
   ((eq (car lis) (car rev))     (check-palindrome (cdr lis) (cdr rev) (- count 1)))
   (t                            (print "Not Palindrome"))
   )
)

(foo '(a s d 2 d s a))
