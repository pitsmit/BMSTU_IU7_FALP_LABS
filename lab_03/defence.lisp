; функция принимает 2 списка. вернуть упорядоченный по убыванию 
; список из трех элементов:
; my_min1^2 + my_min2^2, sr1 + sr2, |max1-max2|

(defun max_min (lst compfunc)
  (cond ((and (funcall compfunc (car lst) (cadr lst)) 
              (funcall compfunc (car lst) (caddr lst))) (car lst)) 
        ((funcall compfunc (cadr lst) (caddr lst)) (cadr lst))
        (t (caddr lst))))

(defun abs_of_razn (lst)
    (let ((raznost (- (car lst) (cadr lst))))
    (cond (( < raznost 0) (- raznost))
          (t raznost))))

(defun sr (lst) (/ (+ (car lst) (cadr lst) (caddr lst)) 3))
(defun kwadrat(a) (* a a))

(defun task(ar1 ar2)
    (let ((e1 (+ (kwadrat (max_min ar1 #'<=)) 
                 (kwadrat (max_min ar2 #'<=))))
          (e2 (+ (sr ar1) 
                 (sr ar2)))
          (e3 (abs_of_razn (cons (max_min ar1 #'>=) 
                                 (cons (max_min ar2 #'>=) nil)))))
    (cond ((and (>= e1 e2) (>= e1 e3)) 
           (cons e1 (cond ((>= e2 e3) (cons e2 (cons e3 nil)))
                          (t          (cons e3 (cons e2 nil))))))
          ((and (>= e2 e1) (>= e2 e3)) 
           (cons e2 (cond ((>= e1 e3) (cons e1 (cons e3 nil)))
                          (t          (cons e3 (cons e1 nil))))))
          (t
           (cons e3 (cond ((>= e1 e2) (cons e1 (cons e2 nil)))
                          (t          (cons e2 (cons e1 nil)))))))))


(print (task '(1 2 3) '(4 5 6))) ; (17 7 3)
(print (task '(4 5 6) '(1 2 3))) ; (17 7 3)
(print (task '(0 0 1) '(2 0 8))) ; (7 11/3 0)
(print (task '(9 -1 3) '(2 4 1))) ; (6 5 2)