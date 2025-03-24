(defun recnth(n lst)
    (cond ((not lst)  nil)
          ((minusp n) nil)
          ((eql n 0)  (car lst))
          (t (recnth (- n 1) 
                     (cdr lst)))))

(recnth 100000000000 '(1 2 3 4 5)) ; NIL
(recnth 0 '(1 2 3 4 5))            ; 1
(recnth 4 '(1 2 3 4 5))            ; 5
(recnth -1 '(1 2 3 4 5))           ; NIL