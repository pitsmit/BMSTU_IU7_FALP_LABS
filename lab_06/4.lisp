(defun insert_help(x lst)
    (cond 
          ((null lst) 
              (list x))
          ((<= x (car lst))
              (cons x lst))
          (t  (cons (car lst) 
                    (insert_help x (cdr lst))))))

(defun select-between(lst1 lst2 a b)
    (cond 
          ((null lst1) 
                  lst2)
          ((or (<= a (car lst1) b) 
               (>= a (car lst1) b)) 
                  (select-between (cdr lst1) 
                             (insert_help (car lst1) lst2) 
                             a b))
          (t      (select-between (cdr lst1) 
                             lst2 a b))))


(select-between '(17 222 3 88 4 -5) () -100 100)  ;(-5 3 4 17 88) 
(select-between '(17 222 3 88 4 -5) () 100 -100)  ;(-5 3 4 17 88)
(select-between '(1 1 1) () -100 100)             ;(1 1 1)
(select-between '(1 2) () -100 100)               ;(1 2)
(select-between '(2 1) () -100 100)               ;(1 2)
(select-between '(2 1 1) () 100 -100)             ;(1 1 2)
(select-between '(1) () 100 100)                  ;NIL
(select-between '(1) () -100 100)                 ;(1)
(select-between '(-1 -2 -3 -4 -5) () -100 100)    ;(-5 -4 -3 -2 -1)
(select-between '() () -100 100)                  ;NIL