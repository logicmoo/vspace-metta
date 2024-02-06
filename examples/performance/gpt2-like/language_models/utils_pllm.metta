
!(use-module (library logicmoo-utils))



; debug printing

(= (debugln $X)
  (, 
  (debugln-xfrm $X $S) 
    (dmsg $S)))

(= (fmt-pllm $X)
  (, 
  (debugln-xfrm $X $S) 
    (fmt $S)))


(= (debugln-xfrm $Insts $S)
  (, 
  (var $Insts) ! (sformat $S "~p" (:: $Insts))))
(= (debugln-xfrm (i $X) $S)
  (if-then-else 
  (not (is-list $X)) (debugln-xfrm $X $S) (, (maplist debugln-xfrm $X $Y) (atomics-to-string $Y " " $S))))
(= (debugln-xfrm (Cons  $N $A) $S)
  (, 
  (is-list $A) ! (maplist debugln-xfrm (Cons  $N $A) $Y) (atomics-to-string $Y " " $S)))
(= (debugln-xfrm (/ $F $A) $S)
  (, 
  (functor $P $F $A) 
    (predicate-property $P 
      (number-of-clauses $Insts)) ! (sformat $S "~w=~:d~n" (:: (/ $F $A) $Insts))))
(= (debugln-xfrm (w $E) $S)
  (, 
  (sformat $S ~p $E) !))
(= (debugln-xfrm ($ $E) $S)
  (, 
  (get-flag $E $Insts) ! 
    (sformat $S "~w=~:d~n" 
      (:: $E $Insts))))
(= (debugln-xfrm (= ($VAR N)
  ($VAR V)) $S)
  (, 
  (integer $V) ! (sformat $S "~n\t~w\t= ~:d " (:: $N $V))))
(= (debugln-xfrm (= ($VAR N)
  ($VAR V)) $S)
  (, ! 
  (sformat $S "~n\t~w\t= ~w " 
    (:: $N $V))))
(= (debugln-xfrm (:: $N) $S)
  (, ! 
  (debugln-xfrm $N $S)))
(= (debugln-xfrm $C $S)
  (, 
  (if-defined (tok-split $_115442 $C $S $_115448)) !))
(= (debugln-xfrm $C $S)
  (, 
  (if-defined (tok-split $C $S $_117676)) !))
(= (debugln-xfrm $C $S)
  (, 
  (compound $C) ! (sformat $S "~p" (:: $C))))
;debugln_xfrm(C,S):- compound(C),compound_name_arguments(C,N,A),debugln_xfrm([N|A],S).
(= (debugln-xfrm nl 
)
  !)
(= (debugln-xfrm Nil "")
  !)
(debugln-xfrm $E $E)


