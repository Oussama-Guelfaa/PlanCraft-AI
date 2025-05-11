(define (domain switches_v1)
  (:requirements :strips)
  (:predicates 
    (switch ?s)        ; ?s is a switch
    (on ?s)            ; switch ?s is on
    (off ?s)           ; switch ?s is off
  )

  (:action turn-on
    :parameters (?s)
    :precondition (and (switch ?s) (off ?s))
    :effect (and (on ?s) (not (off ?s)))
  )

  (:action turn-off
    :parameters (?s)
    :precondition (and (switch ?s) (on ?s))
    :effect (and (off ?s) (not (on ?s)))
  )
)
