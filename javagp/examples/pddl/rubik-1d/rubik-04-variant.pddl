(define (problem rubik-04-variant)
   (:domain rubik-1d-variant)
   (:objects v1 v2 v3 v4 v5 v6)
   (:init
        (value v1)
        (value v2)
        (value v3)
        (value v4)
        (value v5)
        (value v6)
        (pos1 v6)
        (pos2 v5)
        (pos3 v4)
        (pos4 v1)
        (pos5 v2)
        (pos6 v3)
   )
   (:goal (and 
       (pos1 v1)
       (pos2 v2)
       (pos3 v3)    
       (pos4 v4)    
       (pos5 v5)    
       (pos6 v6)    
       ))
)
