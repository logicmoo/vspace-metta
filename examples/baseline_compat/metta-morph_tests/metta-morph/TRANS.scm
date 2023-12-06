(Typedef If (-> boolean symbol symbol))
(= (If #t $then) $then)
(= (If #f $then) (Let $x 0 (Let $x 1 $x)))

(Typedef If (-> boolean symbol Atom symbol))
(= (If $cond $then $else) (if $cond $then $else))

(Typedef sequential (-> list %Undefined%))
(= (sequential $1) (superpose $1))

(= (max $1 $2) (if (> $1 $2) $1 $2))
(= (min $1 $2) (if (< $1 $2) $1 $2))
