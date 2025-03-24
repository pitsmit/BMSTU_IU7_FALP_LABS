(defun my(arr number)
    (mapcar #'(lambda (e) (* e number)) arr))

(my '(1 2 3 4 5) 3) ;(3 6 9 12 15)
(my '() 3)          ; NIL