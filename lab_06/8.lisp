(defun first_odd(lst)
    (cond 
          ((and (numberp lst) 
                (oddp lst)) 
                lst)
          ((atom lst) 
                nil)
          (t    (or (first_odd (car lst)) 
                    (first_odd (cdr lst))))))

(first_odd '(1 2 3 4 5))        ; 1
(first_odd '(2 3 4 5))          ; 3
(first_odd '())                 ; NIL
(first_odd '(a b c 4 6 1))      ; 1
(first_odd '((1 2) 3 4))        ; 1
(first_odd '(6 a 2 b (3) (4)))  ; 3
(first_odd '(2 4 6 8))          ; NIL
(first_odd '((2) ((3) 17)))     ; 3