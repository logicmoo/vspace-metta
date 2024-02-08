; generated: 17 November 1989
; option(s): 
;
;   serialise
;
;   David H. D. Warren
;
;   itemize (pick a "serial number" for each 
;   unique integer in) a list of 25 integers


(= (top)
  (serialise))


(= (serialise)
  (, 
    (atom-codes 'ABLE WAS I ERE I SAW ELBA' $Codes) 
    (serialise $Codes $_144614)))

(= (serialise $L $R)
  (, 
    (pairlists $L $R $A) 
    (arrange $A $T) 
    (numbered $T 1 $_147602)))


(= (pairlists (Cons  $X $L) (Cons  $Y $R) (Cons  (pair $X $Y) $A))
  (pairlists $L $R $A))
(= (pairlists  Nil Nil Nil)
  True)


(= (arrange (Cons  $X $L) (tree $T1 $X $T2))
  (, 
    (split $L $X $L1 $L2) 
    (arrange $L1 $T1) 
    (arrange $L2 $T2)))
(= (arrange  Nil void)
  True)


(= (split (Cons  $X $L) $X $L1 $L2)
  (, 
    (set-det) 
    (split $L $X $L1 $L2)))
(= (split (Cons  $X $L) $Y (Cons  $X $L1) $L2)
  (, 
    (before $X $Y) 
    (set-det) 
    (split $L $Y $L1 $L2)))
(= (split (Cons  $X $L) $Y $L1 (Cons  $X $L2))
  (, 
    (before $Y $X) 
    (set-det) 
    (split $L $Y $L1 $L2)))
(= (split  Nil $_171126 Nil Nil)
  True)


(= (before (pair $X1 $_172006) (pair $X2 $_172060))
  (< $X1 $X2))


(= (numbered (tree $T1 (pair $_174796 $N1) $T2) $N0 $N)
  (, 
    (numbered $T1 $N0 $N1) 
    (is $N2 
      (+ $N1 1)) 
    (numbered $T2 $N2 $N)))
(= (numbered  void $N $N)
  True)

