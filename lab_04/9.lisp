; все элементы - числа
(defun allnum (arr number) 
(rplaca arr 
        (* number 
            (car arr))))

; элементы произвольные
(defun rand(arr number)
  (cond ((numberp (car arr))   
            (rplaca arr 
                    (* number (car arr))))
        ((numberp (cadr arr))  
            (rplaca (cdr arr) 
                    (* number (cadr arr))))
        ((numberp (caddr arr)) 
            (rplaca (cddr arr) 
                    (* number (caddr arr))))
        (t arr)))

(setf l1 '(1 2 3)
      l2 '((a) (2) 3)
      l3 '())

(allnum l1 12)
(rand l2 12)
(rand l3 12)

(print l1)  ; (12 2 3)
(print l2)  ; (12 2 3)
(print l3)  ; NIL