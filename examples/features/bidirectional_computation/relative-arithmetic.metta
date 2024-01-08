
; Define a relation that outputs the likelihoods of three events
(= (complex-relationship $Likelihood1 $Likelihood2 $Likelihood3)
   {(, (= $Likelihood1 (* 0.3 $Likelihood2))
       (= $Likelihood2 (* 0.5 $Likelihood3))
       (< $Likelihood3 1.0)
       (> $Likelihood3 0.0))})

; conjunctive calling
(: sequential (-> Expression %Undefined%))
(= (sequential $1) (superpose $1))

; basically hides return values
(: do (-> Expression %Undefined%))
(= (do $1) (case $1 ()))


; Example query to find the likelihoods that satisfy the constraints
!(sequential
  ((do (complex-relationship $L1 $L2 $L3))
   (let $L2 0.3
       (assertEqual $L1 0.09)
       (assertEqual $L3 0.6))))

; Actual values are not even needed!
!(sequential
  ((do (complex-relationship $L1 $L2 $L3))
   (assertEqual (< $L1 $L3) True)
   (assertEqual (< $L2 $L1) False)))




