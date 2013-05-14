;Find the last element of a list

(defun my-last (lis)
  (if (endp lis)
      (error "List is empty")
   (nth (- (list-length lis) 1) lis))
)

;The following returns the last cons of the list

(defun my-last (lis) (last lis))

(print (my-last '(1 2 3 4 5 6 7)))


