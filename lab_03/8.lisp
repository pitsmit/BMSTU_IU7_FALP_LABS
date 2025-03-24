(defun f_or (a b c)
    (or (<= b a c) (<= c a b)))

(defun f_and (a b c)
    (and (<= (min b c) a) (<= a (max b c))))

(defun f_cond(a b c)
    (cond ((<= a b) (>= a c))
          ((>= a b) (<= a c))))


(defun f_if(a b c)
    (if (<= a b) (>= a c)
                 (if (>= a b) (<= a c))))

(print (f_and 2 21 22))
(print (f_and 2 -10 22))
(print (f_and 2 21 -10))