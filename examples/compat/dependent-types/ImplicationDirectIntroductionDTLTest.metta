;; Test Implication Direct Introduction DTL Rule

;; Import modules
!(import! &self ImplicationDirectIntroductionDTL.metta)
!(import! &self ../synthesis/Synthesize.metta)

;; Knowledge base
(: kb (-> Atom))
(= (kb) (superpose ((: P2 (⊷ P (fromNumber 2) True))
                    (: Q2 (⊷ Q (fromNumber 2) False))
                    (: P7 (⊷ P (fromNumber 7) True))
                    (: Q7 (⊷ Q (fromNumber 7) True)))))
;; Axioms are placed in the kb as well
(= (kb) (zero-lt-succ-axiom))

;; Rule base
(: rb (-> Atom))
(= (rb) (superpose ((succ-monotonicity-rule)
                    (implication-direct-introduction-base-rule)
                    (implication-direct-introduction-recursive-rule))))

;; Test base rule (one piece of evidence)
;;
;; Build the following inference tree
;;
;; --------(P2)     --------(Q2)
;; (P 2) = ⊤        (Q 2) = ⊥
;; --------------------------(IDIBase)
;; P → Q ≞ ((:: 2 ∅), <0 0.5>)
! "===== Test base rule (built-in type checker) ====="
(: base_prf (≞ (→ P Q) (ETV (:: (fromNumber 2) ∅) (STV 0 (count->confidence 1)))))
(= base_prf IDIBase)
!(assertEqualToResult (base_prf) ((base_prf)))
!(assertEqualToResult (get-type base_prf) ((≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5)))))


;; Test recursive rule
;;
;; Build the following inference tree
;;
;;                 --------(P2)     --------(Q2)
;;                 (P 2) = ⊤        (Q 2) = ⊥
;;                 --------------------------(IDIBase)
;;                 P → Q ≞ ((:: 2 ∅), <0 0.5>)
;;                              |               -----(ZeroLTSucc)
;;                              |               0 ⍃ 5
;;                              |               -----(SuccMonotonicity)
;;                              |               1 ⍃ 6
;; --------(P7)  --------(Q7)   |               -----(SuccMonotonicity)
;; (P 7) = ⊤     (Q 7) = ⊤      |               2 ⍃ 7
;; --------------------------------------------------(IDIRecursive)
;;           P → Q ≞ ((:: 7 (:: 2 ∅)), <0.5 0.6667>)
! "===== Test recursive rule (built-in type checker) ====="
(: recursive_prf (≞ (→ P Q) $etv))
(= recursive_prf (IDIRecursive P7
                               Q7
                               (IDIBase P2 Q2)
                               (SuccMonotonicity (SuccMonotonicity ZeroLTSucc))))

!(assertEqualToResult (recursive_prf) ((recursive_prf)))
; ! recursive_prf
!(assertEqualToResult (get-type recursive_prf) ((≞ (→ P Q) $etv#733)))
!(repl!)

;; Test synthesizer
! "===== Prove that 2 < 7 (synthesizer) ====="
!(assertEqualToResult (synthesize (: $proof (⍃ (fromNumber 2) (fromNumber 7))) kb rb (fromNumber 2))
  ((: (SuccMonotonicity (SuccMonotonicity ZeroLTSucc)) (⍃ (S (S Z)) (S (S (S (S (S (S (S Z)))))))))))

! "===== Prove P→Q using base rule (synthesizer) ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P Q) $etv)) kb rb (fromNumber 1))
 ((let* (((: $proof1#6864 (⊷ P $a#6870 False)) (synthesize (: $proof1#6864 (⊷ P $a#6870 False)) kb rb Z)) ((: $proof2#6865 (⊷ Q $a#6870 $qa#6817)) (synthesize (: $proof2#6865 (⊷ Q $a#6870 $qa#6817)) kb rb Z)) ((: $proof3#6866 (≞ (→ P Q) (ETV (:: $h#6871 $t#6872) (STV $PQs#6873 $PQc#6874)))) (synthesize (: $proof3#6866 (≞ (→ P Q) (ETV (:: $h#6871 $t#6872) (STV $PQs#6873 $PQc#6874)))) kb rb Z)) ((: $proof4#6867 (⍃ $h#6871 $a#6870)) (synthesize (: $proof4#6867 (⍃ $h#6871 $a#6870)) kb rb Z))) (: (IDIRecursive $proof1#6864 $proof2#6865 $proof3#6866 $proof4#6867) (≞ (→ P Q) (ETV (:: $a#6870 (:: $h#6871 $t#6872)) (STV $PQs#6873 $PQc#6874))))), (let* (((: $proof2#6920 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2#6920 (⊷ Q (S (S Z)) True)) kb rb Z)) ((: $proof3#6921 (≞ (→ P Q) (ETV (:: $h#6926 $t#6927) (STV $PQs#6928 $PQc#6929)))) (synthesize (: $proof3#6921 (≞ (→ P Q) (ETV (:: $h#6926 $t#6927) (STV $PQs#6928 $PQc#6929)))) kb rb Z)) ((: $proof4#6922 (⍃ $h#6926 (S (S Z)))) (synthesize (: $proof4#6922 (⍃ $h#6926 (S (S Z)))) kb rb Z))) (: (IDIRecursive P2 $proof2#6920 $proof3#6921 $proof4#6922) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h#6926 $t#6927)) (STV $PQs#6928 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc#6929) 0) (* -1 (- 1.0 $PQc#6929)) (- 1.0 $PQc#6929)) 1e-09) False) (max-count) (/ (* $PQc#6929 (lookahead)) (- 1.0 $PQc#6929)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc#6929) 0) (* -1 (- 1.0 $PQc#6929)) (- 1.0 $PQc#6929)) 1e-09) False) (max-count) (/ (* $PQc#6929 (lookahead)) (- 1.0 $PQc#6929)))) 1.0))))))), (let* (((: $proof3#6921 (≞ (→ P Q) (ETV (:: $h#6926 $t#6927) (STV $PQs#6928 $PQc#6929)))) (synthesize (: $proof3#6921 (≞ (→ P Q) (ETV (:: $h#6926 $t#6927) (STV $PQs#6928 $PQc#6929)))) kb rb Z)) ((: $proof4#6922 (⍃ $h#6926 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4#6922 (⍃ $h#6926 (S (S (S (S (S (S (S Z))))))))) kb rb Z))) (: (IDIRecursive P7 Q7 $proof3#6921 $proof4#6922) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h#6926 $t#6927)) (STV $PQs#6928 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc#6929) 0) (* -1 (- 1.0 $PQc#6929)) (- 1.0 $PQc#6929)) 1e-09) False) (max-count) (/ (* $PQc#6929 (lookahead)) (- 1.0 $PQc#6929)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc#6929) 0) (* -1 (- 1.0 $PQc#6929)) (- 1.0 $PQc#6929)) 1e-09) False) (max-count) (/ (* $PQc#6929 (lookahead)) (- 1.0 $PQc#6929)))) 1.0))))))), (let* (((: $proof3#7164 (≞ (→ P Q) (ETV (:: $h#7169 $t#7170) (STV $PQs#7171 $PQc#7172)))) (synthesize (: $proof3#7164 (≞ (→ P Q) (ETV (:: $h#7169 $t#7170) (STV $PQs#7171 $PQc#7172)))) kb rb Z)) ((: $proof4#7165 (⍃ $h#7169 (S (S Z)))) (synthesize (: $proof4#7165 (⍃ $h#7169 (S (S Z)))) kb rb Z))) (: (IDIRecursive P2 Q2 $proof3#7164 $proof4#7165) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h#7169 $t#7170)) (STV (/ (* $PQs#7171 (* $PQc#7172 1.0)) (- (+ (* $PQc#7172 1.0) 1) $PQc#7172)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc#7172) 0) (* -1 (- 1.0 $PQc#7172)) (- 1.0 $PQc#7172)) 1e-09) False) (max-count) (/ (* $PQc#7172 (lookahead)) (- 1.0 $PQc#7172)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc#7172) 0) (* -1 (- 1.0 $PQc#7172)) (- 1.0 $PQc#7172)) 1e-09) False) (max-count) (/ (* $PQc#7172 (lookahead)) (- 1.0 $PQc#7172)))) 1.0))))))), (let* (((: $proof2#7163 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2#7163 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb Z)) ((: $proof3#7164 (≞ (→ P Q) (ETV (:: $h#7169 $t#7170) (STV $PQs#7171 $PQc#7172)))) (synthesize (: $proof3#7164 (≞ (→ P Q) (ETV (:: $h#7169 $t#7170) (STV $PQs#7171 $PQc#7172)))) kb rb Z)) ((: $proof4#7165 (⍃ $h#7169 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4#7165 (⍃ $h#7169 (S (S (S (S (S (S (S Z))))))))) kb rb Z))) (: (IDIRecursive P7 $proof2#7163 $proof3#7164 $proof4#7165) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h#7169 $t#7170)) (STV (/ (* $PQs#7171 (* $PQc#7172 1.0)) (- (+ (* $PQc#7172 1.0) 1) $PQc#7172)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc#7172) 0) (* -1 (- 1.0 $PQc#7172)) (- 1.0 $PQc#7172)) 1e-09) False) (max-count) (/ (* $PQc#7172 (lookahead)) (- 1.0 $PQc#7172)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc#7172) 0) (* -1 (- 1.0 $PQc#7172)) (- 1.0 $PQc#7172)) 1e-09) False) (max-count) (/ (* $PQc#7172 (lookahead)) (- 1.0 $PQc#7172)))) 1.0))))))), (let* (((: $proof2#7467 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2#7467 (⊷ Q (S (S Z)) True)) kb rb Z))) (: (IDIBase P2 $proof2#7467) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 1 0.5))))), (: (IDIBase P7 Q7) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 1 0.5)))), (: (IDIBase P2 Q2) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5)))), (let* (((: $proof2#7726 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2#7726 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb Z))) (: (IDIBase P7 $proof2#7726) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 0 0.5))))), (let* (((: $proof1#7944 (⊷ P $a#7948 False)) (synthesize (: $proof1#7944 (⊷ P $a#7948 False)) kb rb Z)) ((: $proof2#7945 (⊷ Q $a#7948 $qa#7437)) (synthesize (: $proof2#7945 (⊷ Q $a#7948 $qa#7437)) kb rb Z))) (: (IDIBase $proof1#7944 $proof2#7945) (≞ (→ P Q) (ETV (:: $a#7948 ∅) (STV 1 0)))))))

! "===== Prove P→Q using base, recursive and order rules (synthesizer) ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P Q) $etv)) kb rb (fromNumber 3))
 ((let* (((: $proof1#10461 (⊷ P $a#10467 False)) (synthesize (: $proof1#10461 (⊷ P $a#10467 False)) kb rb (S (S Z)))) ((: $proof2#10462 (⊷ Q $a#10467 $qa#10414)) (synthesize (: $proof2#10462 (⊷ Q $a#10467 $qa#10414)) kb rb (S (S Z)))) ((: $proof3#10463 (≞ (→ P Q) (ETV (:: $h#10468 $t#10469) (STV $PQs#10470 $PQc#10471)))) (synthesize (: $proof3#10463 (≞ (→ P Q) (ETV (:: $h#10468 $t#10469) (STV $PQs#10470 $PQc#10471)))) kb rb (S (S Z)))) ((: $proof4#10464 (⍃ $h#10468 $a#10467)) (synthesize (: $proof4#10464 (⍃ $h#10468 $a#10467)) kb rb (S (S Z))))) (: (IDIRecursive $proof1#10461 $proof2#10462 $proof3#10463 $proof4#10464) (≞ (→ P Q) (ETV (:: $a#10467 (:: $h#10468 $t#10469)) (STV $PQs#10470 $PQc#10471))))), (let* (((: $proof2#10958 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2#10958 (⊷ Q (S (S Z)) True)) kb rb (S (S Z)))) ((: $proof3#10959 (≞ (→ P Q) (ETV (:: $h#10964 $t#10965) (STV $PQs#10966 $PQc#10967)))) (synthesize (: $proof3#10959 (≞ (→ P Q) (ETV (:: $h#10964 $t#10965) (STV $PQs#10966 $PQc#10967)))) kb rb (S (S Z)))) ((: $proof4#10960 (⍃ $h#10964 (S (S Z)))) (synthesize (: $proof4#10960 (⍃ $h#10964 (S (S Z)))) kb rb (S (S Z))))) (: (IDIRecursive P2 $proof2#10958 $proof3#10959 $proof4#10960) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h#10964 $t#10965)) (STV $PQs#10966 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc#10967) 0) (* -1 (- 1.0 $PQc#10967)) (- 1.0 $PQc#10967)) 1e-09) False) (max-count) (/ (* $PQc#10967 (lookahead)) (- 1.0 $PQc#10967)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc#10967) 0) (* -1 (- 1.0 $PQc#10967)) (- 1.0 $PQc#10967)) 1e-09) False) (max-count) (/ (* $PQc#10967 (lookahead)) (- 1.0 $PQc#10967)))) 1.0))))))), (let* (((: $proof4#10960 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4#10960 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S (S (S (S (S (S Z))))))))) kb rb (S (S Z))))) (: (IDIRecursive P7 Q7 (IDIBase P7 Q7) $proof4#10960) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: (S (S (S (S (S (S (S Z))))))) ∅)) (STV 1 (/ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) (+ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) 1.0))))))), (: (IDIRecursive P7 Q7 (IDIBase P2 Q2) (SuccMonotonicity (SuccMonotonicity ZeroLTSucc))) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: (S (S Z)) ∅)) (STV 0 0.6666666666666666)))), (let* (((: $proof4#31460 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S Z)))) (synthesize (: $proof4#31460 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S Z)))) kb rb (S (S Z))))) (: (IDIRecursive P2 Q2 (IDIBase P7 Q7) $proof4#31460) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: (S (S (S (S (S (S (S Z))))))) ∅)) (STV (/ (* 1 (* 0.5 1.0)) (- (+ (* 0.5 1.0) 1) 0.5)) (/ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) (+ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) 1.0))))))), (let* (((: $proof4#31460 (⍃ (S (S Z)) (S (S Z)))) (synthesize (: $proof4#31460 (⍃ (S (S Z)) (S (S Z)))) kb rb (S (S Z))))) (: (IDIRecursive P2 Q2 (IDIBase P2 Q2) $proof4#31460) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: (S (S Z)) ∅)) (STV (/ (* 0 (* 0.5 1.0)) (- (+ (* 0.5 1.0) 1) 0.5)) (/ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) (+ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) 1.0))))))), (let* (((: $proof2#31458 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2#31458 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb (S (S Z)))) ((: $proof3#31459 (≞ (→ P Q) (ETV (:: $h#31464 $t#31465) (STV $PQs#31466 $PQc#31467)))) (synthesize (: $proof3#31459 (≞ (→ P Q) (ETV (:: $h#31464 $t#31465) (STV $PQs#31466 $PQc#31467)))) kb rb (S (S Z)))) ((: $proof4#31460 (⍃ $h#31464 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4#31460 (⍃ $h#31464 (S (S (S (S (S (S (S Z))))))))) kb rb (S (S Z))))) (: (IDIRecursive P7 $proof2#31458 $proof3#31459 $proof4#31460) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h#31464 $t#31465)) (STV (/ (* $PQs#31466 (* $PQc#31467 1.0)) (- (+ (* $PQc#31467 1.0) 1) $PQc#31467)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc#31467) 0) (* -1 (- 1.0 $PQc#31467)) (- 1.0 $PQc#31467)) 1e-09) False) (max-count) (/ (* $PQc#31467 (lookahead)) (- 1.0 $PQc#31467)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc#31467) 0) (* -1 (- 1.0 $PQc#31467)) (- 1.0 $PQc#31467)) 1e-09) False) (max-count) (/ (* $PQc#31467 (lookahead)) (- 1.0 $PQc#31467)))) 1.0))))))), (let* (((: $proof2#51150 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2#51150 (⊷ Q (S (S Z)) True)) kb rb (S (S Z))))) (: (IDIBase P2 $proof2#51150) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 1 0.5))))), (: (IDIBase P7 Q7) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 1 0.5)))), (: (IDIBase P2 Q2) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5)))), (let* (((: $proof2#53005 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2#53005 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb (S (S Z))))) (: (IDIBase P7 $proof2#53005) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 0 0.5))))), (let* (((: $proof1#54819 (⊷ P $a#54823 False)) (synthesize (: $proof1#54819 (⊷ P $a#54823 False)) kb rb (S (S Z)))) ((: $proof2#54820 (⊷ Q $a#54823 $qa#51120)) (synthesize (: $proof2#54820 (⊷ Q $a#54823 $qa#51120)) kb rb (S (S Z))))) (: (IDIBase $proof1#54819 $proof2#54820) (≞ (→ P Q) (ETV (:: $a#54823 ∅) (STV 1 0)))))))


