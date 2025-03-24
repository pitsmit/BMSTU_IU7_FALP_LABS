(reduce #'+ ()) ; 0
(reduce #'* ()) ; 1

(+) ; 0
(*) ; 1

(reduce #'*  () :initial-value 0)