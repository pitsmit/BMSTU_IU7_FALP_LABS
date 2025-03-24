(defun fc(e)
    (cond ((numberp e) (- e 10))
          (t e)))

(defun my(arr) (mapcar #'fc arr))

(my '(a 2 3 4 5))     ;(A -8 -7 -6 -5) 
(my '(a (c d) 3 4 5)) ;(A (C D) -7 -6 -5)
(my '())              ;NIL
(my '((2)))           ;((2))
(my '(10))            ;(0)





