; !(import! &memory "memory.metta")

!(bind! &memory (new-space))

(= (remove-space-state $var)
   (match &memory (space-state $var $y)
         (remove-atom &memory (space-state $var $y))))

(= (change-space-state $var $value)
   (, (remove-space-state $var)
      (add-atom &memory (space-state $var $value))))

(= (get-space-state $var)
   (match &memory (space-state $var $value) $value))

(= (answer $x)
   (println! $x))

(= (if True $x $y) $x)
(= (if False $x $y) $y)

!(change-space-state greeted False)
!(change-space-state (person name) "None")

(= (listen (My name is $x))
   (if (== (get-space-state (person name)) "None")
       (nop)
       (if (== (get-space-state (person name)) $x)
           (Yes, I remember)
           (I thought you are (get-space-state (person name))))))

(= (listen (My name is $x))
   (nop (change-space-state (person name) $x)))

(= (listen $_)
   (if (not (get-space-state greeted))
       (if (== (get-space-state (person name)) "None")
           (Hi. What is your name?)
           (Nice to meet you (get-space-state (person name))))
       (nop)
    )
)

(= (listen $_)
   (nop (change-space-state greeted True)))

;!(answer (listen (Hello)))
!(answer (listen (My name is "Alexey")))
;!(answer (listen (My name is "Alexey")))
;!(answer (listen (My name is "Ben")))

;!(println! (call:get_atoms &memory))
(get-atoms &memory)
