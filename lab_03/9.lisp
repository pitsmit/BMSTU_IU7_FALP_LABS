(defun my_if(x y)
    (if (= x y) 'the_same
                (if (equal x y) 'the_same
                                (if (oddp x) (if (oddp y) 'both_odd 'difference)
                                             (if (evenp x) (if (evenp y) 'both_even 'difference))))))

(defun my_and_or(x y)
    (or (and (or (= x y) (equal x y)) 'the_same)
        (and (and (oddp x) (oddp y)) 'both_odd)
        (and (and (evenp x)(evenp y)) 'both_even)
        'difference)
)

; лекционная функция
(defun how_alike(x y)
    (cond ((or (= x y) (equal x y)) 'the_same)
          ((and (oddp x) (oddp y)) 'both_odd)
          ((and (evenp x)(evenp y)) 'both_even)
          (t 'difference)))

(print (my_if 2 2))
(print (my_if 2 4))
(print (my_if 3 5))
(print (my_if 3 6))