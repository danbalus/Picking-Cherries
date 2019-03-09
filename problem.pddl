
(define (domain villagerscairsproblem)
   (:constants villager stairs bucket cherries watertap botle sleep)
   (:predicates 
                 (goto ?x ?y) 
                 (climb ?x)
                 (push-stairs ?x ?y)
                 (onstairs ?x)
                 (step-down ?x)
                 (get-bucket ?y)
                 (grab-cherries ?y)
                 (pickbotle ?y)
                 (getwater ?y)
                 (getsleep ?y)
                 (on-ground)
                 (at ?x ?y)
                 (hascherries)
                 (hasbucket)
                 (hasbotle)
                 (haswater)
                 (hassleep)
                 )

   (:action goto
             :parameters (?x ?y)
             :precondition (and 
                             (on-ground)
                             (at villager ?y)
                             )
             :effect  (and 
                           (at villager ?x)
                           (not (at villager ?y))
                           )
    ) 


   (:action climb
             :parameters (?x)
             :precondition (and 
                             (at stairs ?x)
                             (at villager ?x)
                             )
             :effect  (and 
                           (onstairs ?x)
                           (not (on-ground))
                           )
    ) 

   (:action step-down
             :parameters (?x)
             :precondition (and 
                             (onstairs ?x)
                             (at villager ?x)
                             )
             :effect  (and 
                           (on-ground)
                           (not (onstairs ?x))
                           )
    ) 


   (:action push-stairs
             :parameters (?x ?y)
             :precondition (and 
                              (at cherries ?x)
                             (at stairs ?y)
                             (at villager ?y)
                             (on-ground)
                             )
             :effect  (and 
                           (at villager ?x)
                           (at stairs ?x)
                           (not (at villager ?y))
                           (not (at stairs ?y))
                           )
    ) 

   (:action get-bucket
             :parameters (?y)
             :precondition (and 
                             (at bucket ?y)
                             (at villager ?y)
                             )
             :effect  (and 
                           (hasbucket)
                           (not (at bucket ?y))
                           )
    ) 

   (:action grab-cherries
             :parameters (?y)
             :precondition (and 
                             (hasbucket)
                             (at cherries ?y)
                             (onstairs ?y)
                             )
             :effect  (and 
                           (hascherries)
                           (not (haswater))
                           )
    ) 

   (:action pickbotle
             :parameters (?y)
             :precondition (and 
                             (at botle ?y)
                             (at villager ?y)
                             )
             :effect  (and 
                           (hasbotle)
                           (not (at botle ?y))
                           )
    ) 

   (:action getwater
             :parameters (?y)
             :precondition (and 
                             (hasbotle)
                             (at watertap ?y)
                             (at villager ?y)
                             (not(onstairs ?y))
                             )
             :effect  (and 
                           (haswater)
                           )
    ) 

    (:action getsleep
             :parameters (?y)
             :precondition (and 
                             (at villager ?y)
                             (at sleep ?y)
                             (hascherries)
                             (not(onstairs ?y))
                             )
             :effect  (and 
                           (hassleep)
                           )
    )

)

