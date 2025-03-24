(defun rec-add(lst)
    (cond 
          ((numberp lst) lst)
          ((atom lst)    0)
          (t    (+ (rec-add (car lst))
                   (rec-add (cdr lst))))))

(rec-add '(1 2 (3) 4 5))       ; 15
(rec-add '(1))                 ; 1
(rec-add '(a b c d 3))         ; 3
(rec-add '(a b c d (3)))       ; 3
(rec-add '(1 2 (3 4 a b c) d)) ; 10
(rec-add '())                  ; 0