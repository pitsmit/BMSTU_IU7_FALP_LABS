(defun my(arr number)
    (mapcar #'(lambda (e) 
                (cond ((numberp e) (* e number))
                      (t e))) arr))

(my '(1 (2) 3 4 5) 3) ; (3 (2) 9 12 15)
(my '() 3)            ; NIL