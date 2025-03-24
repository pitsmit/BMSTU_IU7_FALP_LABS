(setf *random-state* (make-random-state t))

(defun random-1-6 () (+ 1 (random 6)))
(defun ksum(arr) (+ (caddr arr) (cadddr arr)))

(defun format-throw (player)
    (print (format nil "~d-ый игрок бросил кости. Значения костей: ~d ~d~%" 
            (car player) (cadr player) (caddr player))))

(defun format-win (player)
    (print (format nil "~d-ый игрок выиграл. Значения костей: ~d ~d~%" 
            (car player) (cadr player) (caddr player))))
  
(defun play-cons(id)
  (cons id (cons (random-1-6) 
        (cons (random-1-6) nil))))

(defun cond-after-throw(player)
  (let  ((k1 (cadr player))
         (k2 (caddr player)))

        (cond ((or (eql (+ k1 k2) 7) 
                   (eql (+ k1 k2) 11))
                (format-win player) (cons 0 player))
                
              ((or (and (eql k1 1) (eql k2 1)) 
                   (and (eql k1 6) (eql k2 6)))
                    (play (play-cons (car player))))

              (t (cons -1 player)))))

(defun play(player) 
  (format-throw player) 
  (cond-after-throw player))

(defun kosti()
    (let ((pl-1 (play (play-cons 1))))
        (cond ((eql (car pl-1) -1) 
              (let* ((pl-2 (play (play-cons 2))) 
                    (sum1 (ksum pl-1)) 
                    (sum2 (ksum pl-2)))
                  (cond ((eql (car pl-2) -1)
                        (cond ((< sum1 sum2) 
                              (format-win (cdr pl-2)))
                              ((> sum1 sum2) 
                              (format-win (cdr pl-1)))
                              (t (print "Победила дружба"))))))))))

(kosti)