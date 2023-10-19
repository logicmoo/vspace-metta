; ### Algorithm Sketch

; Given a collection of data trees T, a minimum support ms and an
; initial collection of patterns Candidate (containing at least the identity
; pattern, the pattern mining algorithm works as follows

; 1. Select a pattern P from C
; 2. Extract the valuation set of P over T, called V
; 3. Determine the shallow abstractions of V, called A
; 4. Specialize P by composing it with elements in A
; 5. Add the resulting specializations with enough support in C,
;    discard the others
; 6. Repeat till termination

; Load sample data
!(import! &self sample.metta)

;; lib
!(import! &self ../common/Num.metta)

;; Parameters
(= (minsup) 4)
(= (maxiter) 10)
(= (highsurp) 0.9)

;; Helper function
;; This is very slow,
; (= (tupleLength $tuple) (if (== $tuple ()) 0 (+ 1 (tupleLength (cdr-atom $tuple)))))
;; faster but limited implementation of tuple count
(= (BuildTupleCounts $C $T) 
   (superpose ((add-atom &self (= (TupleCount $T) $C))
               (if (> $C 0) (BuildTupleCounts (- $C 1) (cdr-atom $T)) (nop)))))
!(BuildTupleCounts 100
 (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))
(= (CountElement $x) 1)

;; Ignore non-strongly connected components
;; e.g (, (Inheritance $Xvar "Concept man") (Inheritance "Concept Abe" $Yvar))
;; is not strongly connected
(= (getvar (, (Inheritance $a $b) (Inheritance $c $d)) $Xvar $Yvar)
(if (and (== $a $c) (== $b $d)) None 
    (if (and (== $a $Xvar) (== $c $Xvar)) $Xvar 
        (if (and (== $b $Yvar) (== $d $Yvar)) $Yvar None))))
(= (getvar (, (Inheritance $a $b) (Inheritance $c $d) (Inheritance $e $f)) $Xvar $Yvar)
(if (or (and (== $a $e) (== $b $f)) (and (== $c $e) (== $d $f))) None
(let* (($p1p3 (getvar (, (Inheritance $a $b) (Inheritance $e $f)) $Xvar $Yvar))
       ($p2p3 (getvar (, (Inheritance $c $d) (Inheritance $e $f)) $Xvar $Yvar)))
    (if (or (== $p1p3 None) (== $p2p3 None)) None $p1p3))))

;; Count the number of instances of a given pattern
;; and create candidate pattern with support > minSupport
;; Set $cnj to True if conjunctions
(= (count $pattern $cnj $Xvar $Yvar) 
    (if $cnj 
        (let $var (getvar $pattern $Xvar $Yvar) 
            (if (== $var None) 0 
                (TupleCount (collapse (match &self $pattern (CountElement $var))))))
        (TupleCount (collapse (match &self $pattern 1)))))
(= (support $pattern $minsup $cnj $Xvar $Yvar)
    (let $cnt (count $pattern $cnj $Xvar $Yvar)
        (if (> $cnt $minsup) (candidate $pattern $cnt) (nop))))

;; reformat conjunctions for the pattern matcher
(= (, (, $a $b) $c) (, $a $b $c))

;; iSurprisingness formula
(= (universe_size) (TupleCount (collapse (match &self (Inheritance $x $y) 1))))
(= (prob $count) (/ $count (universe_size)))
(= (isurprisingness $pattern)
    (case $pattern (
      ((candidate (, $p1 $p2) $cnt)
      (let* (($pp1 (prob (count $p1 False $Xvar $Yvar)))
          ($pp2 (prob (count $p2 False $Xvar $Yvar)))
          ($p1p2 (* $pp1 $pp2)) ;; probability estimate 
          ($p (prob $cnt))) ;; empirical
          (/ (max (- $p $p1p2) (- $p1p2 $p)) $p)))
      ((candidate (, $p1 $p2 $p3) $cnt)
      (let* (($pp1 (prob (count $p1 False $Xvar $Yvar)))
          ($pp2 (prob (count $p2 False $Xvar $Yvar)))
          ($pp3 (prob (count $p3 False $Xvar $Yvar)))
          ($pp1p2 (prob (count (, $p1 $p2) True $Xvar $Yvar)))
          ($pp1p3 (prob (count (, $p1 $p3) True $Xvar $Yvar)))
          ($pp2p3 (prob (count (, $p2 $p3) True $Xvar $Yvar)))
          ;; probability estimate
          ($maxP (max (* $pp1p2 $pp3) (max (* $pp1p3 $pp2) (max (* $pp2p3 $pp1) (* $pp1 (* $pp2 $pp3))))))
          ($minP (min (* $pp1p2 $pp3) (min (* $pp1p3 $pp2) (min (* $pp2p3 $pp1) (* $pp1 (* $pp2 $pp3))))))
          ($p (prob $cnt))) ;; empirical
          (/ (max (- $p $maxP) (- $minP $p)) $p)))
      ($_ 0))))

;; Collects unique valuation sets.
(= (addValuation $x $y)
    (let* (($xr (collapse (match &self (= (x) $x) $x)))
          ($yr (collapse (match &self (= (y) $y) $y))))
        (superpose ( (if (== $xr ($x)) (nop) (add-atom &self (= (x) $x)))
                    (if (== $yr ($y)) (nop) (add-atom &self (= (y) $y)))))))
(= (Candidate Z $Xvar $Yvar)
    (superpose (
        (match &self (Inheritance $X $Y) (addValuation $X $Y))
        (let $specialization (superpose ((Inheritance $Xvar (y)) (Inheritance (x) $Yvar)))
            (support $specialization (minsup) False $Xvar $Yvar)))))
(= (get_pattern $cnpattern)
    (let (candidate $pattern $cnt) $cnpattern $pattern))
(= (Candidate (S $k) $Xvar $Yvar)
    (let $prev (if (== $k Z) Z (fromNumber (- (fromNat $k) 1)))
     (let $comb
        (, (get_pattern (Candidate $k $Xvar $Yvar)) (get_pattern (Candidate $prev $Xvar $Yvar)))
     (support $comb (minsup) True $Xvar $Yvar))))

;; Test
; !(Candidate Z $Xvar $Yvar)
; !(Candidate (S Z) $Xvar $Yvar)
; !(Candidate (S (S Z)) $Xvar $Yvar)

;; Generate Surprising patterns
!(let (candidate $p $cnt) (Candidate (S (S Z)) $Xvar $Yvar)
    (let $isurp (isurprisingness (candidate $p $cnt)) 
        (if (> $isurp (highsurp)) (surp $p $isurp) (nop))))

; [(surp (, (Inheritance $Xvar man) (Inheritance $Xvar ugly) (Inheritance $Xvar sodadrinker)) 0.9444444444444443),
;  (surp (, (Inheritance $Xvar man) (Inheritance $Xvar sodadrinker) (Inheritance $Xvar ugly)) 0.9444444444444443),
;  (surp (, (Inheritance $Xvar ugly) (Inheritance $Xvar man) (Inheritance $Xvar sodadrinker)) 0.9444444444444443),
;  (surp (, (Inheritance $Xvar ugly) (Inheritance $Xvar sodadrinker) (Inheritance $Xvar man)) 0.9444444444444443),
;  (surp (, (Inheritance $Xvar sodadrinker) (Inheritance $Xvar man) (Inheritance $Xvar ugly)) 0.9444444444444443),
;  (surp (, (Inheritance $Xvar sodadrinker) (Inheritance $Xvar ugly) (Inheritance $Xvar man)) 0.9444444444444443)]
