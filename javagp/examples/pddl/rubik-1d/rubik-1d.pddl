(define (domain rubik-1d)
   (:requirements :strips)
   (:predicates (pos1 ?v)
                (pos2 ?v)
                (pos3 ?v)
                (pos4 ?v)
                (pos5 ?v)
                (pos6 ?v))

   ;     _______                _______
   ;    (1 2 3 4)5 6  --(rot0)->  (4 3 2 1)5 6
   ;
   (:action rot0
             :parameters (?v1 ?v2 ?v3 ?v4 ?v5 ?v6)
             :precondition (and (pos1 ?v1) 
                                (pos2 ?v2) 
                                (pos3 ?v3) 
                                (pos4 ?v4) 
                                (pos5 ?v5) 
                                (pos6 ?v6) 
                                )
             :effect  (and 
                           (pos1 ?v4)              
                           (pos2 ?v3)              
                           (pos3 ?v2)              
                           (pos4 ?v1)              
                           (pos5 ?v5)              
                           (pos6 ?v6)      
                           (not (pos1 ?v1))
                           (not (pos2 ?v2))
                           (not (pos3 ?v3))
                           (not (pos4 ?v4)))
    ) 

    ;
    ;       _______                   _______
    ;     1(2 3 4 5)6  --(rot1)->   1(5 4 3 2)6
    ;
   (:action rot1
             :parameters (?v1 ?v2 ?v3 ?v4 ?v5 ?v6)
             :precondition (and (pos1 ?v1) 
                                (pos2 ?v2) 
                                (pos3 ?v3) 
                                (pos4 ?v4) 
                                (pos5 ?v5) 
                                (pos6 ?v6) 
                                )
             :effect  (and 
                           (pos1 ?v1)
                           (pos2 ?v5)              
                           (pos3 ?v4)              
                           (pos4 ?v3)              
                           (pos5 ?v2)
                           (pos6 ?v6)
                           (not (pos2 ?v2))
                           (not (pos3 ?v3))
                           (not (pos4 ?v4))
                           (not (pos5 ?v5)))
    ) 

    ;
    ;      _______                   _______
    ;  1 2(3 4 5 6) --(rot2)->   1 2(6 5 4 3)
    ;
    (:action rot2
             :parameters (?v1 ?v2 ?v3 ?v4 ?v5 ?v6)
             :precondition (and (pos1 ?v1) 
                                (pos2 ?v2) 
                                (pos3 ?v3) 
                                (pos4 ?v4) 
                                (pos5 ?v5) 
                                (pos6 ?v6) 
                                )
             :effect  (and 
                           (pos1 ?v1)
                           (pos2 ?v2)              
                           (pos3 ?v6)              
                           (pos4 ?v5)              
                           (pos5 ?v4)              
                           (pos6 ?v3)              
                           (not (pos3 ?v3))
                           (not (pos4 ?v4))
                           (not (pos5 ?v5))
                           (not (pos6 ?v6)))
    ) 
)
