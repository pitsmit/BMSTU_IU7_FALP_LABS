(defun my-reverse(lst res)
    (cond ((null lst) 
                    res)
          (t (my-reverse (cdr lst) 
                         (cons (car lst) 
                               res)))))

(my-reverse '(1 2 3 4 5) ())   ; (5 4 3 2 1)
(my-reverse '(1 (2 3) a 5) ()) ; (5 A (2 3) 1)
(my-reverse () ())             ; NIL
(my-reverse '(1) ())           ; (1)