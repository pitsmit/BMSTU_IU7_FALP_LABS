(defun f(a b)
    (cond ((< a b) (cons a (cons b nil)))
          (t (cons b (cons a nil))))
)

(print (f 4 3))
(print (f 3 4))