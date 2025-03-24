(defun create_predicat(l1 l2)
    (mapcar #'(lambda (e) (cond ((member e l1) t))) l2))

(defun check(lst)
    (reduce #'(lambda(x y) (and x y)) lst :initial-value t))
    ;(every #'identity lst))

(defun set-equal(l1 l2)
    (and (check (create_predicat l1 l2)) 
         (check (create_predicat l2 l1))))


(set-equal '(1 2 3) '(1 2 3 4)) ; NIL
(set-equal '(1 2 3) '(1 2 3))   ; T
(set-equal '(9 8 6 4) '(1 2 3)) ; NIL
(set-equal '(3 2 1) '(1 2 3))   ; T
(set-equal '() '())             ; T
(set-equal '(1) '(1))           ; T