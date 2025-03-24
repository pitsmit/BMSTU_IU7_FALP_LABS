(defun my_assoc_1(key table)
    (cond ((equal (caar table) key) (cdar table))
          ((equal (caadr table) key) (cdadr table))
          ((equal (caaddr table) key) (cdaddr table))
          ((equal (car (cadddr table)) key) (cdr (cadddr table)))))

(defun my_assoc_2(key table) 
    (cdr (assoc key 
                table 
                :test #'equal)))

(defun my_rassoc_1(key table)
    (cond ((equal (cdar table) key) (caar table))
          ((equal (cdadr table) key) (caadr table))
          ((equal (cdaddr table) key) (caaddr table))
          ((equal (cdr (cadddr table)) key) (car (cadddr table)))))

(defun my_rassoc_2(key table) 
    (car (rassoc key 
                 table 
                 :test #'equal)))

(setf table '((Россия . Москва) 
              (США . Вашингтон) 
              (Китай . Пекин) 
              (Германия . Берлин)))
              
(my_assoc_1 'Германия table) ; БЕРЛИН
(my_assoc_2 'Германия table) ; БЕРЛИН   
(my_assoc_1 'Франция table)  ; NIL  
(my_assoc_2 'Франция table)  ; NIL

(my_rassoc_1 'Москва table)  ; РОССИЯ
(my_rassoc_2 'Москва table)  ; РОССИЯ      
(my_rassoc_1 'Париж table)   ; NIL
(my_rassoc_2 'Париж table)   ; NIL