(defun func(lst) (apply #'+ (mapcar #'(lambda(x) (length x)) lst)))

(func '((1) (2) (3 4) (7 8 0))) ; 7
(func '())                      ; 0
(func '(()))                    ; 0
(func '((1)))                   ; 1