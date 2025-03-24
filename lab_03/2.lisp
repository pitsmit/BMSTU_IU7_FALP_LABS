(defun f(a)
    (cond ((< a 0) (- a 1))
          (t (+ a 1))))

(print (f -4))
(print (f 4))