;;;Construct a list of all prime numbers in a given range

;;; list-prime creates a list of primes <= upperlimit
;;; It creates the list by checking against primes < the number itself
;;; that is we create a hash table (sort of)
(defun list-prime (upperlimit lis)
  (do ((i 5 (+ i 2)))
      ((>= i upperlimit) (return lis))
      (if (check-prime i lis) (setq lis (append lis (list i))))
      )
  )
;;; check-prime checks whether given num is prime or not 
;;; by dividing the number against all the prime numbers lesser than num

(defun check-prime (i lis)
  (if (not (dolist (x lis) (if (zerop (rem i x)) (return T))))
      T NIL)
  )
;;; chop-front essentailly chops off the front of the list of prime numbers
;;; upto the primes >= lowerlimit
(defun chop-front (lowerlimit upperlimit)
  (setq lis (list-prime upperlimit '(2 3)))
  (do ((x lowerlimit))
      ((>= (car lis) x) (cons (car lis) (cdr lis)))
      (setq lis (cdr lis))
      )
  )


(print (chop-front 10 500))
