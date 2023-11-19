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

;; Import utils
!(import! &self MinerUtils.metta)

;; Get candidate patterns
(= (Candidate Z $linkType $dbspace $minsup $Xvar $Yvar)
    (let $sp (specialization $linkType $Xvar $Yvar)
      (support $sp $dbspace $minsup $Xvar $Yvar)))

(= (Candidate (S $k) $linkType $dbspace $minsup $Xvar $Yvar)
    (let*
      (($prev (if (== $k Z) Z (fromNumber (- (fromNat $k) 1))))
      ($comb
        (, (get_pattern (Candidate $k $linkType $dbspace $minsup $Xvar $Yvar)) 
          (get_pattern (Candidate $prev $linkType $dbspace $minsup $Xvar $Yvar)))))
      (support $comb $dbspace $minsup $Xvar $Yvar)))

;; Mine frequent patterns
(= (miner $dbspace $minsup $depth)
    (superpose ((extract_val_set $dbspace)
                (let $link (getlinks)
                  (Candidate $depth $link $dbspace $minsup $Xvar $Yvar)))))

;; Mine Surprising Patterns
(= (surprisingMiner $dbspace $minsup $depth $highsurp)
  (let $cptrn (miner $dbspace $minsup $depth)
    (superpose ((getUniverseSize $dbspace)
                ((let $isurp (isurprisingness $cptrn $dbspace) 
                  (if (> $isurp $highsurp) (surp $cptrn $isurp) (nop))))))))
