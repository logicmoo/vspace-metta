

!(include training)



!(dynamic (/ used-cl 1))




(= (map-sent $_41822 $Sent)
  (, 
  (ground $Sent) !))
(= (map-sent $Loc $Sent)
  (, 
  (var $Sent) (length $Sent 9) (map-sent $Loc $Sent)))
(= (map-sent $Loc (Cons  $A (Cons  $B (Cons  $C (Cons  $D $More)))))
  (, 
  (some-ngram $Loc $A $B $C $D $Fire) 
    (map-sent $Loc 
      (Cons  $C 
        (Cons  $D $More)))))
(= (map-sent $Loc (Cons  $A (Cons  $B (Cons  $C (Cons  $D $More)))))
  (, 
  (some-ngram $Loc $A $B $C $_49942 $Fire) 
    (map-sent $Loc 
      (Cons  $B 
        (Cons  $C 
          (Cons  $D $More))))))
(= (map-sent $Loc $List)
  (, 
  (= ($VAR ABCDO)
  (:: $_53456 $_53476 $_53496 $_53516 $Occurs)) 
    (append $List $_53640 $ABCDO) 
      (apply some-ngram 
        (Cons  $Loc $ABCDO))))


(= (some-ngram $PrevLoc $A $B $C $D $N)
  (, 
  (ngram $Loc $A $B $C $D $N) 
    (may-use $Loc $A $B $C $D $N)))



!(style-check (- singleton))




(= (may-use $Loc $_63558 $B $C $D $_63566)
  (, 
  (not (used-cl (ngram $A $B $C $D))) (assert (used-cl (ngram $A $B $C $D)) $Cl2) (undo (erase $Cl2)) !))



(= (gen6 (= (:: $A $B $C $D $E $F $G $H)
  ($VAR N)))
  (, 
  (ngram $Loc1 $E $F $G $H $Z) 
    (ngram $Loc2 $C $D $E $F $Y) 
      (ngram $Loc3 $A $B $C $D $X) 
        (is $N 
          (+ 
            (+ $X $Y) $Z))))


!fixup-exports





