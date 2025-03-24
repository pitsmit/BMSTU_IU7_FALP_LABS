(defun var1(arr)
    (nreverse (cdr (nreverse arr))))

(defun var2(arr)
    (cond ((cdr arr) (rplacd (last arr 2) nil) arr)))


(var1 '(1 2 3 4)) ; (1 2 3)
(var1 '(1 2))     ; (1)
(var1 '(1))       ; NIL
(var1 '())        ; NIL
(var2 '(1 2 3 4)) ; (1 2 3)
(var2 '(1 2))     ; (1)
(var2 '(1))       ; NIL
(var2 '())        ; NIL