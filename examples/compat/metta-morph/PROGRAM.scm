(= (f $x) 42)

(! Let $y (superpose (3 4 5))
      (If (> $y 3)
          (Case (1 $y) (((1 3) (f 0))
                        ((1 4) (42 42))
                       ($else (1 1))))))
