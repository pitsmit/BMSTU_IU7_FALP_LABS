(defun my(lst)
    (cond 
          ((null lst) 
            lst)
          ((and (listp (car lst)) 
                (car lst)) 
            (car lst))
          (t 
            (my (cdr lst)))))

(my '(1 (2) (3) 4 5)) ; (2)
(my '(1 () (3) 4 5))  ; (3)
(my ())               ; NIL
(my '(((1) 2)))       ; ((1) 2)