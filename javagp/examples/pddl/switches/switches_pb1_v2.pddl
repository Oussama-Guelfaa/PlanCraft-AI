(define (problem switches_pb1_v2)
  (:domain switches_v2)
  (:objects switch1 switch2 switch3 switch4 switch5)
  
  (:init
    ; Define all switches
    (switch switch1)
    (switch switch2)
    (switch switch3)
    (switch switch4)
    (switch switch5)
    
    ; Define initial states (off, off, on, off, off)
    (off switch1)
    (off switch2)
    (on switch3)
    (off switch4)
    (off switch5)
    
    ; Define neighbor relationships in a row
    (neighbor switch1 switch2)
    (neighbor switch2 switch1)
    (neighbor switch2 switch3)
    (neighbor switch3 switch2)
    (neighbor switch3 switch4)
    (neighbor switch4 switch3)
    (neighbor switch4 switch5)
    (neighbor switch5 switch4)
  )
  
  (:goal 
    (and 
      (on switch1) 
      (on switch2) 
      (on switch3)
      (on switch4)
      (on switch5)
    )
  )
)
