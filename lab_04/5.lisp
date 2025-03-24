; Данная реализация переставляет указатели
(defun swap-first-last-1 (arr)
    (cond ((not (cdr arr)) 
             arr)
          ((not (cddr arr)) 
             (let ((lastt (last arr)))
                  (rplacd (cdr arr) arr)
                  (rplacd arr nil)
                  lastt))
          (t (let ((ln (length arr))
                   (lastt (last arr)))
                  (rplacd lastt 
                        (cdr arr))
                  (rplacd (nthcdr (- ln 2) arr) 
                        arr)
                  (rplacd arr nil)              
                  lastt))))       

; Данная реализация просто меняет значения по car
(defun swap-first-last-2 (arr)
    (cond ((not (cdr arr)) arr)
          (t (let ((firstval (car arr)))
                (rplaca arr 
                        (car (last arr)))
                (rplaca (last arr) 
                        firstval)
                arr))))



(swap-first-last-1 '(1 2 3 4 5)) ; (5 2 3 4 1) 
(swap-first-last-1 '(1 2 3))     ; (3 2 1)
(swap-first-last-1 '(1 2))       ; (2 1)
(swap-first-last-1 '(1))         ; (1)
(swap-first-last-1 '())          ; NIL




