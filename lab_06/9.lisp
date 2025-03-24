(defun kwad(lst)
    (cond
        ((not lst) 
            lst)
        (t 
            (cons (* (car lst) 
                     (car lst)) 
                  (kwad (cdr lst))))))


(kwad '(1 2 3 4 5))   ; (1 4 9 16 25)
(kwad '(1))           ; (1) 
(kwad ())             ; NIL
(kwad '(5 3 1))       ; (25 9 1) 