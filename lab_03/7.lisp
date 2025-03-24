(defun pred1 (x)
    (and (numberp x) (plusp x)))

(defun pred2 (x)
    (and (plusp x) (numberp x)))

(print (pred1 '(2 3)))

; plusp - возвращает true, если число больше 0
; numberp - возвращает true, если аргумент типа число