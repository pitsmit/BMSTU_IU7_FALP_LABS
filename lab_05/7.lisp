(defun decart(lstX lstY)
    (mapcar #'(lambda(x) (mapcar #'(lambda(y) (cons x y)) lstY)) 
            lstX))

(decart '(1 2 3) '(a b c)) ; (((1 . A) (1 . B) (1 . C)) ((2 . A) (2 . B) (2 . C)) ((3 . A) (3 . B) (3 . C)))
(decart '(1 2 3) '(a b))   ; (((1 . A) (1 . B)) ((2 . A) (2 . B)) ((3 . A) (3 . B)))