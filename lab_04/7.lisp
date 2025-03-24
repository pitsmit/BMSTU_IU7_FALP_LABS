(defun check(lst) (equal lst (reverse lst)))

(check '(1 2 3 2 1)) ; T
(check '(1 2 3 2 3)) ; NIL
(check '())          ; T
(check '(1))         ; T
(check '(1 2))       ; NIL