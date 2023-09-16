
; cases are processed sequentially
!(assertEqual
   (+ 1 (superpose (1 2 3)))
   (+ 1 (superpose (1 2 3))))


!(assertEqual
   (+ 1 (superpose (1 2 3)))
   (+ 1 (superpose (1 (superpose (2 3))))))

!(assertEqual
   ((superpose (1 2 3)))
   ((superpose (1 (superpose ((+ 1 1) 3))))))



; cases are processed sequentially
!(assertEqual
(case (+ 1 5)
  ((5 Error)
   (6 OK)
   (6 Error)))
 OK)


; we can use variables as cases
!(assertEqual
 (case (+ 1 5)
   (($x (+ 1 $x))))
 7)


; cases are not necessarily exhaustive,
; and the result can be empty
!(assertEqual
    (case 5
	((6 OK)))
  (superpose ()))


; it is non-deterministic: each value is matched against all cases
!(assertEqual
 (case (+ 1 (superpose (1 2 3)))
  ((3 OK-3)
   (4 OK-4)))
 (superpose (OK-3 OK-4)))


; one case can produce multiple results
!(assertEqual
  (case (+ 1 (superpose (1 2 3)))
     (($x (+ 1 $x))))
  (superpose (3 4 5)))


(Rel-P A B)
(Rel-Q A C)

; Basic Match
!(assertEqual
   (match &self ($rel A $x) ($rel $x))
   (superpose ((Rel-P B) (Rel-Q C))))


; cases can be used for deconstruction
!(assertEqual
  (superpose ((P B) (Q C)))
  (case
   (match &self ($rel A $x) ($rel $x))
    (((Rel-P $y) (P $y))
     ((Rel-Q $y) (Q $y)))))


; %void% can be used to capture empty results
!(assertEqual (case (match &self ($rel B $x) ($rel $x))
    (((Rel-P $y) (P $y))
    ((Rel-Q $y) (Q $y))
    (%void% no-match
     )))
     no-match )


; a functional example
(= (maybe-inc $x)
    (case $x
     (((Just $v) (Just (+ 1 $v)))
	(Nothing Nothing))))

!(assertEqual (maybe-inc Nothing) Nothing)
!(assertEqual (maybe-inc (Just 2)) (Just 3))


; Curried plus
(: plus (-> Number (-> Number Number)))
(= ((plus $x) $y) (+ $x $y))
; Define inc as partial evaluation of plus
(: inc (-> (-> Number Number)))
(= (inc) (plus 1))

!(assertEqualToResult ((inc) 2) (3))




;;;;;;;;;;;;;;;;;;;;;;;;
; sorted lists
;;;;;;;;;;;;;;;;;;;;;;;;
(: List (-> $a Type))
(: Nil (List $a))
(: Cons (-> $a (List $a) (List $a)))

(: if (-> bool Any Any) Any)
(= (if true $then $else) $then)
(= (if false $then $else) $else)

(= (insert $x Nil) (Cons $x Nil))
(= (insert $x (Cons $head $tail))
       (if (< $x $head)
	      (Cons $x (Cons $head $tail))
	      (Cons $head (insert $x $tail))))


!(assertEqual  (insert 1 Nil)  (Cons 1 Nil))

!(assertEqual  (insert 3 (insert 2 (insert 1 Nil))) (Cons 1 (Cons 2 (Cons 3 Nil))))



