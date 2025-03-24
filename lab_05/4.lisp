; отсекает последний элемент
(defun var2(arr) (rplacd (last arr 2) nil))

; проверяет равенство крайних
(defun predic(l)
    (cond ((equal (car (last l)) 
                  (car l))
             (var2 l) t)
          (t (var2 l) nil)))

; проверяет что итоговый список состоит из t
(defun check(lst)
    (every #'identity 
        (maplist #'predic lst)))

(check '(1 a 3 a 1)) ; T
(check '(1 2 2 1))   ; T
(check '(1 2 3 1 1)) ; NIL
(check '(1))         ; T
(check '())          ; T
(check '(1 1))       ; T
(check '(1 2))       ; NIL
(check '(2 1))       ; NIL