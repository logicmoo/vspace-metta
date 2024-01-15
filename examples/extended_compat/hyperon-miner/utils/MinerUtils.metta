;; Import Num
; !(import! &self ../common/Num.metta)
;; Define max
(: max (-> $a $a $a))
(= (max $x $y) (if (> $x $y) $x $y))

;; Define min
(: min (-> $a $a $a))
(= (min $x $y) (if (< $x $y) $x $y))

;; Tuple count grounded python function
; !(extend-py! ../utils/helper.py)
;; This is very slow, use the grounded python function instead
(= (tuple-count2 $tuple) (if (== $tuple ()) 0 (+ 1 (tuple-count (cdr-atom $tuple)))))

!(bind! &specializations (new-space))

;; Initialization
(= (init-miner $db $ms $highsurp)
    (superpose ((extract-valuation $db)
                (add-atom &self (= (refdb) $db))
                (add-atom &self (= (ms) (fromNumber $ms)))
                (add-atom &self (= (highsurp) $highsurp))
                (get-universe-size $db))))

;; Search for Triplets in DB
;; collect valuation sets and generate specializations
(= (extract-valuation $db)
  (match $db ($link $x $y)
    (superpose ((build-specialization ($link $x (VarIdx (S Z))))
                (build-specialization ($link (VarIdx Z) $y))))))

(= (build-specialization $sp)
   (case (match &specializations $sp $sp)
        ((%void% (add-atom &specializations $sp)))))

;; Get unique link typess
(= (get-links) (match &specializations ($link $x $y) $link))

;; Specialize a pattern
(= (specialize $link) (match &specializations ($link $x $y) ($link $x $y)))

;; all Specializations
(= (all-specialization) (match &specializations $x $x))

;; Todo: implement Debruijn index
(= (fromDeb $pattern $Xvar $Yvar)
      (case ((get-metatype $pattern) $pattern)
         (((Variable $_) $pattern)
          (($_ ($a (VarIdx Z) $b)) ($a $Xvar $b))
          (($_ ($a $b (VarIdx (S Z)))) ($a $b $Yvar))
          ($_ $pattern))))

(= (fromDebruijn $ptrn $Xvar $Yvar)
    (case $ptrn (
      ((, $p1 $p2) (, (fromDeb $p1 $Xvar $Yvar) (fromDeb $p2 $Xvar $Yvar)))
      ((, $p1 $p2 $p3) (, (fromDeb $p1 $Xvar $Yvar) (fromDeb $p2 $Xvar $Yvar) (fromDeb $p3 $Xvar $Yvar)))
      ($_ (fromDeb $ptrn $Xvar $Yvar)))))

; Count the number of instances of a given pattern
(= (count $pattern)
    (let $result
      (case (match &self (= (refdb) $db) $db)
          (($db (let $dptrn (fromDebruijn $pattern $Xvar $Yvar) (collapse (match $db $dptrn $dptrn))))
           (%void% ())))
      (tuple-count $result)))

(= (countNat $pattern) (fromNumber (count $pattern)))

;; Return candidate patterns in the format (candidate pattern count)
;; for patterns with a support value >= the minimum support.
;; the count here will later be used for calculating surprisingness.
(= (support $pattern $minsup)
    (let $cnt (count $pattern)
      (if (> (+ $cnt 1) $minsup) (candidate $pattern $cnt)  (superpose ()))))

;; Extract a pattern from a Candidate pattern of form
;; (candidate pattern count)
(= (get-pattern (candidate $pattern $cnt)) $pattern)

;; flatten combination
;; TODO: apply reduction rule
(= (flatten $pattern)
    (case $pattern
        (((, (, $a $b) $c) (, $a $b $c))
         ((, $a (, $b $c)) (, $a $b $c))
         ($_ $pattern))))

;; Get universe size of a given db
(= (get-universe-size $dbspace)
    (add-atom &self
      (= (universe-size) (let $u (collapse (match $dbspace $x 1)) (tuple-count $u)))))

;; Probability formula
(= (prob $count) (/ $count (universe-size)))

;; iSurprisingness formula
(= (iSurprisingness $pattern)
    (case $pattern (
      ((candidate (, $p1 $p2) $cnt)
      (let* (($pp1 (prob (count $p1 $dbspace)))
          ($pp2 (prob (count $p2 $dbspace)))
          ($p1p2 (* $pp1 $pp2)) ;; probability estimate
          ($p (prob $cnt))) ;; empirical
          (/ (max (- $p $p1p2) (- $p1p2 $p)) $p)))
      ((candidate (, $p1 $p2 $p3) $cnt)
      (let* (($pp1 (prob (count $p1 $dbspace)))
          ($pp2 (prob (count $p2 $dbspace)))
          ($pp3 (prob (count $p3 $dbspace)))
          ($pp1p2 (prob (count (, $p1 $p2) $dbspace)))
          ($pp1p3 (prob (count (, $p1 $p3) $dbspace)))
          ($pp2p3 (prob (count (, $p2 $p3) $dbspace)))
          ;; probability estimate
          ($maxP (max (* $pp1p2 $pp3) (max (* $pp1p3 $pp2) (max (* $pp2p3 $pp1) (* $pp1 (* $pp2 $pp3))))))
          ($minP (min (* $pp1p2 $pp3) (min (* $pp1p3 $pp2) (min (* $pp2p3 $pp1) (* $pp1 (* $pp2 $pp3))))))
          ($p (prob $cnt))) ;; empirical
          (/ (max (- $p $maxP) (- $minP $p)) $p)))
      ($_ 0))))

(= (isurp? ($ptrn $cnt)) (if (> (iSurprisingness (candidate $ptrn $cnt)) (highsurp)) true false))
