(define(problem BLOCKS-5-0)
    (:domain BLOCKS)
    (:objects B E A C D)
    
    (:init 
        (CLEAR C)
        (CLEAR D)
        (ONTABLE D)
        (ONTABLE A)
        (ON C E)
        (ON E B)
        (ON B A)
        (HANDEMPTY)
    )
    
    (:goal
        (AND
            (ONTABLE C)
            (ON A E)
            (ON E B)
            (ON B D)
            (ON D C)
        )
    )
    
)