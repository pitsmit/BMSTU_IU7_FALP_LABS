(defun level (lst)
    (cond
        ((null lst) 
            nil)
        ((atom (car lst))
            (cons (car lst) 
                  (level (cdr lst))))
        (t  (nconc (level (car lst)) 
                   (level (cdr lst))))))

(level '(1 2 3 4 5))               ; (1 2 3 4 5)
(level ())                         ; NIL
(level '(1))                       ; (1)
(level '((1 2) (3 4)))             ; (1 2 3 4)
(level '((1) (2) ((3 4) (5)) 6 7)) ; (1 2 3 4 5 6 7)
(level '(1 2 3 ((4)) 5 (6 7)))     ; (1 2 3 4 5 6 7)