; generated: 9 November 1989
; option(s): 
;
;   mu
;
;   derived from Douglas R. Hofstadter, "Godel, Escher, Bach," pages 33-35.
;
;   prove "mu-math" theorem muiiu


(= (top)
  (mu))


(= (mu)
  (, 
    (theorem 
      (:: m u i i u) 5 $_92354) 
    (set-det)))


(= (theorem  (m i) $_95444 ((a m i)))
  True)
(= (theorem $R $Depth (Cons  (Cons  $N $R) $P))
  (, 
    (> $Depth 0) 
    (is $D 
      (- $Depth 1)) 
    (theorem $S $D $P) 
    (rule $N $S $R)))


(= (rule 1 $S $R)
  (rule1 $S $R))
(= (rule 2 $S $R)
  (rule2 $S $R))
(= (rule 3 $S $R)
  (rule3 $S $R))
(= (rule 4 $S $R)
  (rule4 $S $R))


(= (rule1  (i) (i u))
  True)
(= (rule1 (Cons  $H $X) (Cons  $H $Y))
  (rule1 $X $Y))


(= (rule2 (Cons  m $X) (Cons  m $Y))
  (my-append $X $X $Y))


(= (rule3  ([|]  i ([|]  i ([|]  i $X))) ([|]  u $X))
  True)
(= (rule3 (Cons  $H $X) (Cons  $H $Y))
  (rule3 $X $Y))


(= (rule4  ([|]  u ([|]  u $X)) $X)
  True)
(= (rule4 (Cons  $H $X) (Cons  $H $Y))
  (rule4 $X $Y))


(= (my_append  Nil $X $X)
  True)
(= (my-append (Cons  $A $B) $X (Cons  $A $B1))
  (my-append $B $X $B1))

