(defun my(lst num)
    (cond 
          ((null lst))
          ((cond 
                 ((numberp (car lst))  
                    (rplaca lst 
                            (* num (car lst))))
                 ((listp (car lst)) 
                    (my (car lst) num))
                 (t))
          
              (my (cdr lst) num))))

(setf l1 '(nil (2) a (4 5)))
(my l1 3)
(print l1)  ; (NIL (6) A (12 15))