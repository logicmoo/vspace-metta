; Where does the zebra live?
; Puzzle solution written by Claude Sammut.

(= (top)
  (, 
    (houses $Houses) 
    (member 
      (house red english $_365804 $_365806 $_365808) $Houses) 
    (member 
      (house $_365944 spanish dog $_365950 $_365952) $Houses) 
    (member 
      (house green $_366090 $_366092 coffee $_366096) $Houses) 
    (member 
      (house $_366232 ukrainian $_366236 tea $_366240) $Houses) 
    (right-of 
      (house green $_366378 $_366380 $_366382 $_366384) 
      (house ivory $_366480 $_366482 $_366484 $_366486) $Houses) 
    (member 
      (house $_366624 $_366626 snails $_366630 winstons) $Houses) 
    (member 
      (house yellow $_366770 $_366772 $_366774 kools) $Houses) 
    (= $Houses
      (:: $_366852 $_366872 
        (house $_366968 $_366970 $_366972 milk $_366976) $_367000 $_367020)) 
    (= $Houses
  (Cons  
      (house $_367186 norwegian $_367190 $_367192 $_367194) $_367200)) 
    (next-to 
      (house $_367356 $_367358 $_367360 $_367362 chesterfields) 
      (house $_367458 $_367460 fox $_367464 $_367466) $Houses) 
    (next-to 
      (house $_367604 $_367606 $_367608 $_367610 kools) 
      (house $_367706 $_367708 horse $_367712 $_367714) $Houses) 
    (member 
      (house $_367852 $_367854 $_367856 orange-juice lucky-strikes) $Houses) 
    (member 
      (house $_367996 japanese $_368000 $_368002 parliaments) $Houses) 
    (next-to 
      (house $_368140 norwegian $_368144 $_368146 $_368148) 
      (house blue $_368244 $_368246 $_368248 $_368250) $Houses) 
    (member 
      (house $_368388 $_368390 zebra $_368394 $_368396) $Houses) 
    (member 
      (house $_368532 $_368534 $_368536 water $_368540) $Houses)))
;	print_houses(Houses).


(= (houses  ((house  $_390450 $_390452 $_390454 $_390456 $_390458) (house  $_390558 $_390560 $_390562 $_390564 $_390566) (house  $_390666 $_390668 $_390670 $_390672 $_390674) (house  $_390774 $_390776 $_390778 $_390780 $_390782) (house  $_390882 $_390884 $_390886 $_390888 $_390890)))
  True)


(= (right_of  $A $B ([|]  $B ([|]  $A $_392470)))
  True)
(= (right-of $A $B (Cons  $_393452 $Y))
  (right-of $A $B $Y))


(= (next_to  $A $B ([|]  $A ([|]  $B $_395642)))
  True)
(= (next_to  $A $B ([|]  $B ([|]  $A $_396646)))
  True)
(= (next-to $A $B (Cons  $_397626 $Y))
  (next-to $A $B $Y))


(= (member  $X ([|]  $X $_399782))
  True)
(= (member $X (Cons  $_400700 $Y))
  (member $X $Y))


(= (print-houses (Cons  $A $B))
  (, 
    (set-det) 
    (write $A) 
    (nl) 
    (print-houses $B)))
(= (print_houses  Nil)
  True)

