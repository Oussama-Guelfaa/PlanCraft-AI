(define (domain switches_v2)
  (:requirements :strips)
  (:predicates 
    (switch ?s)        ; ?s is a switch
    (on ?s)            ; switch ?s is on
    (off ?s)           ; switch ?s is off
    (neighbor ?s1 ?s2) ; switch ?s1 is a neighbor of switch ?s2
  )

  (:action turn-on
    :parameters (?s ?n)
    :precondition (and 
      (switch ?s) 
      (off ?s)
      (switch ?n)
      (on ?n)
      (neighbor ?s ?n)
    )
    :effect (and 
      (on ?s) 
      (not (off ?s))
    )
  )

  (:action turn-off
    :parameters (?s)
    :precondition (and 
      (switch ?s) 
      (on ?s)
    )
    :effect (and 
      (off ?s) 
      (not (on ?s))
    )
  )
)
