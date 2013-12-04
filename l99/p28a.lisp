;;;Sort a list of lists according to the the length of sublists

(defun lsort (lis)
  (do ((i 0 (+ i 1))
       (n (length lis)))
      ((>= i n) lis)
      (do ((j i (+ j 1)))
	  ((>= j (+ (- n i) 1)))
	  (if (> (length (car lis)) (length (cadr lis)))
	       ((setq lis (cons (cadr lis) (cons (car lis) (cddr lis))))))
	  )
      )
  )

