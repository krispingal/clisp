;In this code some devious miscchief caused by symbol-function

(setf x '(* 5 2))
(setf y '(+ 5 2))
(print (list 'x-> x '('eval of x) (eval x))) 
(print (list 'y-> y '('eval of y) (eval y)))

(setf mult (symbol-function '*) add (symbol-function '+))

(setf (symbol-function '*) add (symbol-function '+) mult)

(print '(after mischief))

(print (list 'x-> x '('eval of x) (eval x))) 
(print (list 'y-> y '('eval of y) (eval y)))

;to undo our mischief

(setf (symbol-function '*) mult (symbol-function '+) add)

;and we are back