(setf lst1 '(a b c) lst2 '(d e))

(cons lst1 lst2)   ; ((A B C) D E)
(list lst1 lst2)   ; ((A B C) (D E))
(append lst1 lst2) ; (A B C D E) 
