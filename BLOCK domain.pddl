(define(domain BLOCKS)
    (:requirements :strips)
    (:predicates
        (on ?x ?y)
        (ontable ?x)
        (clear ?x)
        (holding ?x)
        (handempty)
    )
    
    (:action pick-up        ;take a block on table
        :parameters (?x)
        :precondition (and 
            (clear ?x)
            (ontable ?x)
            (handempty)
        )
        :effect (and
            (not(ontable ?x))
            (not (clear ?x))
            
            (not(handempty))
            (holding ?x)
        )
    )
    (:action put-down       ; a block put-down on table 
        :parameters (?x)
        :precondition
            (holding ?x)

        :effect (and
            (not (holding ?x))
            (clear ?x)
            (ontable ?x)
            (handempty)
        )
    )
    
    (:action unstack         ;take a block from on ther block
        :parameters (?x ?y)
        :precondition (and
            (on ?x ?y)
            (clear ?x)
            (handempty)
            
            
            
        )
        :effect (and
            (not(handempty))
            (not (clear ?x))
            (not( on ?x ?y))
            (holding ?x)
            (clear ?y)
        )
    )
    
    
    
    (:action stack       ; a block put-down on other block
        :parameters (?x ?y)
        :precondition (and 
            (holding ?x)
            (clear ?y)
            
        )
        :effect (and
            (on ?x ?y)
            (not(holding ?x))
            (not (clear ?y))
            (clear ?x)
            (handempty)
        )
    )   
    
    
    
)