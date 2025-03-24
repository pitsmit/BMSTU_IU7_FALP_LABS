(defun my(lst num)
    (cond 
          ((null lst))
          (t (rplaca lst 
                     (* num (car lst))) 
             (my (cdr lst) 
                 num))))

(setf l1 '(1 2 3 4 5))
(my l1 -3)
(print l1)    ; (-3 -6 -9 -12 -15)
