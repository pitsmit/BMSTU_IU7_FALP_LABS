(defun var1(arr) (car (reverse arr)))

(defun var2(arr) (car (last arr)))

(defun var3(arr)
      (cond ((car arr) 
                  (nth (- (length arr) 1) 
                       arr))))

(var3 '(1 2 3 4 5)) ; 5
(var3 ())           ; NIL
(var3 '(1))         ; 1
(var3 '(1 2))       ; 2