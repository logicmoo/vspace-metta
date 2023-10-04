;; Import Num
!(import! &self ../common/Num.metta)

;; Tuple count grounded python function
; !(extend-py! helper)
;; This is very slow, use the grounded python function instead
(= (TupleCount $tuple) (if (== $tuple ()) 0 (+ 1 (TupleCount (cdr-atom $tuple)))))

;; Collects unique valuation sets.
;; A work around to put valuations to a different space
;; unfortunately we still don't have a way to call
;; a function in another (not &self) space
(= (new-named-space $name)
   (let $space (new-space)
        (add-atom &self (= (named-space $name) $space))))
!(new-named-space Xspace)
!(new-named-space Yspace)
!(new-named-space Linkspace)

(= (addValuation $link $x $y)
   (case (match (named-space Xspace) $x $x)
        ((%void% (add-atom (named-space Xspace) $x)))))
(= (addValuation $link $x $y)
   (case (match (named-space Yspace) $y $y)
        ((%void% (add-atom (named-space Yspace) $y)))))
(= (addValuation $link $x $y)
   (case (match (named-space Linkspace) $link $link)
        ((%void% (add-atom (named-space Linkspace) $link)))))

;; Extract the valuation sets
(= (extract_val_set $dbspace) 
  (match $dbspace ($link $X $Y) (addValuation $link $X $Y)))

;; Get unique link types
(= (getlinks) (match (named-space Linkspace) $link $link))

;; Specialize a pattern
(= (specialization $link $Xvar $Yvar) 
   ($link $Xvar (match (named-space Yspace) $y $y)))
(= (specialization $link $Xvar $Yvar) 
   ($link (match (named-space Xspace) $x $x) $Yvar))

;; Ignore non-strongly connected components
;; e.g (, (Inheritance $Xvar "Concept man") (Inheritance "Concept Abe" $Yvar))
;; is not strongly connected
(= (getvar ($link $a $b) $Xvar $Yvar)
    (if (== $link ,) (nop) 1))
(= (getvar (, ($link $a $b) ($link $c $d)) $Xvar $Yvar)
(if (and (== $a $c) (== $b $d)) None 
    (if (and (== $a $Xvar) (== $c $Xvar)) $Xvar 
        (if (and (== $b $Yvar) (== $d $Yvar)) $Yvar None))))
(= (getvar (, ($link $a $b) ($link $c $d) ($link $e $f)) $Xvar $Yvar)
(if (or (and (== $a $e) (== $b $f)) (and (== $c $e) (== $d $f))) None
(let* (($p1p3 (getvar (, ($link $a $b) ($link $e $f)) $Xvar $Yvar))
       ($p2p3 (getvar (, ($link $c $d) ($link $e $f)) $Xvar $Yvar)))
    (if (or (== $p1p3 None) (== $p2p3 None)) None $p1p3))))

;; Count the number of instances of a given pattern
(= (count $pattern $dbspace $Xvar $Yvar)
    (let $result 
      (let $var (getvar $pattern $Xvar $Yvar) 
        (if (== $var None) () (collapse (match $dbspace $pattern $var))))
      (TupleCount $result)))

;; Return candidate pattern with support > minSupport
(= (support $pattern $dbspace $minsup $Xvar $Yvar)
    (let $cnt (count $pattern $dbspace $Xvar $Yvar)
      (if (> $cnt $minsup) (candidate $pattern $cnt) (nop))))

;; reformat conjunctions for the pattern matcher
(= (, (, $a $b) $c) (, $a $b $c))
(= (get_pattern $cnpattern)
  (let (candidate $pattern $cnt) $cnpattern $pattern))

;; Probability formula
(= (getUniverseSize $dbspace) 
    (add-atom &self 
      (= (universe_size) 
        (let $u (collapse (match $dbspace $x 1)) (TupleCount $u)))))
(= (prob $count) (/ $count (universe_size)))

;; iSurprisingness formula
(= (isurprisingness $pattern $dbspace)
    (case $pattern (
      ((candidate (, $p1 $p2) $cnt)
      (let* (($pp1 (prob (count $p1 $dbspace $Xvar $Yvar)))
          ($pp2 (prob (count $p2 $dbspace $Xvar $Yvar)))
          ($p1p2 (* $pp1 $pp2)) ;; probability estimate 
          ($p (prob $cnt))) ;; empirical
          (/ (max (- $p $p1p2) (- $p1p2 $p)) $p)))
      ((candidate (, $p1 $p2 $p3) $cnt)
      (let* (($pp1 (prob (count $p1 $dbspace $Xvar $Yvar)))
          ($pp2 (prob (count $p2 $dbspace $Xvar $Yvar)))
          ($pp3 (prob (count $p3 $dbspace $Xvar $Yvar)))
          ($pp1p2 (prob (count (, $p1 $p2) $dbspace $Xvar $Yvar)))
          ($pp1p3 (prob (count (, $p1 $p3) $dbspace $Xvar $Yvar)))
          ($pp2p3 (prob (count (, $p2 $p3) $dbspace $Xvar $Yvar)))
          ;; probability estimate
          ($maxP (max (* $pp1p2 $pp3) (max (* $pp1p3 $pp2) (max (* $pp2p3 $pp1) (* $pp1 (* $pp2 $pp3))))))
          ($minP (min (* $pp1p2 $pp3) (min (* $pp1p3 $pp2) (min (* $pp2p3 $pp1) (* $pp1 (* $pp2 $pp3))))))
          ($p (prob $cnt))) ;; empirical
          (/ (max (- $p $maxP) (- $minP $p)) $p)))
      ($_ 0))))
