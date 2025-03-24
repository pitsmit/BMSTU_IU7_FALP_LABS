(defun forreduce (a b)
    (append (remove nil 
                    (mapcar (lambda (x) (if (< x b) x)) a))
            (cons b 
                  (remove nil 
                        (mapcar (lambda (x) (if (>= x b) x)) a)))))

(defun select-between(lst a b)
    (reduce #'forreduce 
            (remove-if-not 
                        #'(lambda(x) (or (<= a x b) (>= a x b))) 
                        lst) 
            :initial-value ()))

(select-between '(17 222 3 88 4 -5) -100 100)  ;(-5 3 4 17 88) 
(select-between '(17 222 3 88 4 -5) 100 -100)  ;(-5 3 4 17 88)
(select-between '(1 1 1) -100 100)             ;(1 1 1)
(select-between '(1 2) -100 100)               ;(1 2)
(select-between '(2 1) -100 100)               ;(1 2)
(select-between '(2 1 1) 100 -100)             ;(1 1 2)
(select-between '(1) 100 100)                  ;NIL
(select-between '(1) -100 100)                 ;(1)
(select-between '(-1 -2 -3 -4 -5) -100 100)    ;(-5 -4 -3 -2 -1)
(select-between '() -100 100)                  ;NIL