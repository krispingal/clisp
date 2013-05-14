;To find the last box of a list

(defun my_last (lis)
  (if (null (cdr lis)) 
    (print (car lis))
   (my_last (cdr lis)))
)

(my_last '(as ko ji frfe j))