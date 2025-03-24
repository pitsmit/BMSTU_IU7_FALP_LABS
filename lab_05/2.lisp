(defun my_square (x) (* x x))
(defun my(arr) (mapcar #'my_square arr))

(my '(1 2 3 4 5))   ;(1 4 9 16 25) 
(my '())            ;NIL
(my '(4))           ;(16)