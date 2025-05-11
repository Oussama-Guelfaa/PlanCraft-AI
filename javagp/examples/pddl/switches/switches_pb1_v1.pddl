(define (problem switches_pb1_v1)
  (:domain switches_v1)
  (:objects switch1 switch2 switch3)
  
  (:init
    (switch switch1)
    (switch switch2)
    (switch switch3)
    (off switch1)
    (off switch2)
    (off switch3)
  )
  
  (:goal 
    (and 
      (on switch1) 
      (on switch2) 
      (on switch3)
    )
  )
)
