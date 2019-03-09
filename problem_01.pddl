
(define (problem man-01)
   (:domain villagerscairsproblem)
   (:objects poz1 poz2 poz3 poz4 poz5 poz6 poz7)
   (:init
    
     (at villager poz1)
     (on-ground)
     (at stairs poz2)
     (at cherries poz3)
     (at bucket poz4)
     (at watertap poz5) 
     (at botle poz6)
     (at sleep poz7)

   )

   (:goal 
       (and 
        (hascherries)
        (haswater)
        (hassleep)
        
       )
       )
)

