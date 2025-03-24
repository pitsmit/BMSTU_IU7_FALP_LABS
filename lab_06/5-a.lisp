(defun rec-add(lst)
    (cond 
          ((not lst) 0)
          ((numberp (car lst)) 
                (+ (car lst) 
                   (rec-add (cdr lst))))
          (t    (rec-add (cdr lst)))))

(rec-add '(a 2 a 4 d)) ; 6
(rec-add '(1 2 3 4 5)) ; 15
(rec-add '(a b c d e)) ; 0
(rec-add ())           ; 0