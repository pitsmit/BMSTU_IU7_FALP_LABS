(defun f(a b c)
    (cond ((and (<= a b) (>= a c)))
          ((and (>= a b) (<= a c)))))

(print (f 2 21 22))
(print (f 2 -10 22))
(print (f 2 21 -10))