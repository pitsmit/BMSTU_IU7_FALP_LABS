(defun f(a)
    (cond ((oddp a) (+ 1 a)) 
          (t a)))

(print(f 4))
(print(f 3))
(print(f -3))
(print(f -4))