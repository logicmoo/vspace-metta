
(: degrees-to-radians (-> AngleInDegrees AngleInRadians))
(= (degrees-to-radians $angleInDegrees)
   (* $angleInDegrees (/ pi 180)))

(: calculate-rotation-angle (-> AngleInDegreesForRotation AngleInDegrees))
(= (calculate-rotation-angle $angleInDegreesForRotation)
   (if (> $angleInDegreesForRotation 360)
       (- $angleInDegreesForRotation 360)
       $angleInDegreesForRotation))

(: print-and-return-fruit-count (-> SomethingWithAmount CountedAmount))
(= (print-and-return-fruit-count $apples)
   (print ("Amount of fruit =" $apples)) 
   (as-count $apples))

(: compare-apples-oranges (-> Apples Oranges String))
(= (compare-apples-oranges $appleCount $orangeCount)
   (if (> $appleCount $orangeCount)
       "More Apples"
       (if (< $appleCount $orangeCount) "More Oranges" "Equal Amount")))


