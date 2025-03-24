(defun allodd(lst)
    (cond 
          ((not (numberp (car lst))) 
             nil)
          ((cdr lst) 
             (and (oddp (car lst)) 
                  (allodd (cdr lst))))
          (t (oddp (car lst)))))

(allodd '(1 3 5 7))   ; T
(allodd '(2 4 6 8))   ; NIL
(allodd '(1 2 3 4))   ; NIL
(allodd ())           ; NIL
(allodd '(1))         ; T
(allodd '(1 a 2 b))   ; NIL
(allodd '(1 2 (3 4))) ; NIL