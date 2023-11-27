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
(: base-prf (≞ (→ P Q) (ETV (:: (fromNumber 2) ∅) (STV 0 (count->confidence 1)))))
(= base-prf IDIBase)
!(assertEqualToResult (base-prf) ((base-prf)))
!(assertEqualToResult (get-type base-prf) ((≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5)))))


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
(: recursive-prf (≞ (→ P Q) $etv))
(= recursive-prf (IDIRecursive P7
                               Q7
                               (IDIBase P2 Q2)
                               (SuccMonotonicity (SuccMonotonicity ZeroLTSucc))))

!(assertEqualToResult (recursive-prf) ((recursive-prf)))
!(assertEqualToResult (get-type recursive-prf) ((≞ (→ P Q) $etv-C35_733)))


;; Test synthesizer
! "===== Prove that 2 < 7 (synthesizer) ====="
!(assertEqualToResult (synthesize (: $proof (⍃ (fromNumber 2) (fromNumber 7))) kb rb (fromNumber 2))
  ((: (SuccMonotonicity (SuccMonotonicity ZeroLTSucc)) (⍃ (S (S Z)) (S (S (S (S (S (S (S Z)))))))))))

! "===== Prove P→Q using base rule (synthesizer) ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P Q) $etv)) kb rb (fromNumber 1))
  ((let* (((: $proof1_C35_6864 (⊷ P $a-C35_6870 False)) (synthesize (: $proof1_C35_6864 (⊷ P $a-C35_6870 False)) kb rb Z)) ((: $proof2_C35_6865 (⊷ Q $a-C35_6870 $qa-C35_6817)) (synthesize (: $proof2_C35_6865 (⊷ Q $a-C35_6870 $qa-C35_6817)) kb rb Z)) ((: $proof3_C35_6866 (≞ (→ P Q) (ETV (:: $h-C35_6871 $t-C35_6872) (STV $PQs-C35_6873 $PQc-C35_6874)))) (synthesize (: $proof3_C35_6866 (≞ (→ P Q) (ETV (:: $h-C35_6871 $t-C35_6872) (STV $PQs-C35_6873 $PQc-C35_6874)))) kb rb Z)) ((: $proof4_C35_6867 (⍃ $h-C35_6871 $a-C35_6870)) (synthesize (: $proof4_C35_6867 (⍃ $h-C35_6871 $a-C35_6870)) kb rb Z))) (: (IDIRecursive $proof1_C35_6864 $proof2_C35_6865 $proof3_C35_6866 $proof4_C35_6867) (≞ (→ P Q) (ETV (:: $a-C35_6870 (:: $h-C35_6871 $t-C35_6872)) (STV $PQs-C35_6873 $PQc-C35_6874)))))
   (let* (((: $proof2_C35_6920 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2_C35_6920 (⊷ Q (S (S Z)) True)) kb rb Z)) ((: $proof3_C35_6921 (≞ (→ P Q) (ETV (:: $h-C35_6926 $t-C35_6927) (STV $PQs-C35_6928 $PQc-C35_6929)))) (synthesize (: $proof3_C35_6921 (≞ (→ P Q) (ETV (:: $h-C35_6926 $t-C35_6927) (STV $PQs-C35_6928 $PQc-C35_6929)))) kb rb Z)) ((: $proof4_C35_6922 (⍃ $h-C35_6926 (S (S Z)))) (synthesize (: $proof4_C35_6922 (⍃ $h-C35_6926 (S (S Z)))) kb rb Z))) (: (IDIRecursive P2 $proof2_C35_6920 $proof3_C35_6921 $proof4_C35_6922) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h-C35_6926 $t-C35_6927)) (STV $PQs-C35_6928 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_6929) 0) (* -1 (- 1.0 $PQc-C35_6929)) (- 1.0 $PQc-C35_6929)) 1e-09) False) (max-count) (/ (* $PQc-C35_6929 (lookahead)) (- 1.0 $PQc-C35_6929)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_6929) 0) (* -1 (- 1.0 $PQc-C35_6929)) (- 1.0 $PQc-C35_6929)) 1e-09) False) (max-count) (/ (* $PQc-C35_6929 (lookahead)) (- 1.0 $PQc-C35_6929)))) 1.0)))))))
   (let* (((: $proof3_C35_6921 (≞ (→ P Q) (ETV (:: $h-C35_6926 $t-C35_6927) (STV $PQs-C35_6928 $PQc-C35_6929)))) (synthesize (: $proof3_C35_6921 (≞ (→ P Q) (ETV (:: $h-C35_6926 $t-C35_6927) (STV $PQs-C35_6928 $PQc-C35_6929)))) kb rb Z)) ((: $proof4_C35_6922 (⍃ $h-C35_6926 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4_C35_6922 (⍃ $h-C35_6926 (S (S (S (S (S (S (S Z))))))))) kb rb Z))) (: (IDIRecursive P7 Q7 $proof3_C35_6921 $proof4_C35_6922) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h-C35_6926 $t-C35_6927)) (STV $PQs-C35_6928 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_6929) 0) (* -1 (- 1.0 $PQc-C35_6929)) (- 1.0 $PQc-C35_6929)) 1e-09) False) (max-count) (/ (* $PQc-C35_6929 (lookahead)) (- 1.0 $PQc-C35_6929)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_6929) 0) (* -1 (- 1.0 $PQc-C35_6929)) (- 1.0 $PQc-C35_6929)) 1e-09) False) (max-count) (/ (* $PQc-C35_6929 (lookahead)) (- 1.0 $PQc-C35_6929)))) 1.0)))))))
   (let* (((: $proof3_C35_7164 (≞ (→ P Q) (ETV (:: $h-C35_7169 $t-C35_7170) (STV $PQs-C35_7171 $PQc-C35_7172)))) (synthesize (: $proof3_C35_7164 (≞ (→ P Q) (ETV (:: $h-C35_7169 $t-C35_7170) (STV $PQs-C35_7171 $PQc-C35_7172)))) kb rb Z)) ((: $proof4_C35_7165 (⍃ $h-C35_7169 (S (S Z)))) (synthesize (: $proof4_C35_7165 (⍃ $h-C35_7169 (S (S Z)))) kb rb Z))) (: (IDIRecursive P2 Q2 $proof3_C35_7164 $proof4_C35_7165) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h-C35_7169 $t-C35_7170)) (STV (/ (* $PQs-C35_7171 (* $PQc-C35_7172 1.0)) (- (+ (* $PQc-C35_7172 1.0) 1) $PQc-C35_7172)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_7172) 0) (* -1 (- 1.0 $PQc-C35_7172)) (- 1.0 $PQc-C35_7172)) 1e-09) False) (max-count) (/ (* $PQc-C35_7172 (lookahead)) (- 1.0 $PQc-C35_7172)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_7172) 0) (* -1 (- 1.0 $PQc-C35_7172)) (- 1.0 $PQc-C35_7172)) 1e-09) False) (max-count) (/ (* $PQc-C35_7172 (lookahead)) (- 1.0 $PQc-C35_7172)))) 1.0)))))))
   (let* (((: $proof2_C35_7163 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2_C35_7163 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb Z)) ((: $proof3_C35_7164 (≞ (→ P Q) (ETV (:: $h-C35_7169 $t-C35_7170) (STV $PQs-C35_7171 $PQc-C35_7172)))) (synthesize (: $proof3_C35_7164 (≞ (→ P Q) (ETV (:: $h-C35_7169 $t-C35_7170) (STV $PQs-C35_7171 $PQc-C35_7172)))) kb rb Z)) ((: $proof4_C35_7165 (⍃ $h-C35_7169 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4_C35_7165 (⍃ $h-C35_7169 (S (S (S (S (S (S (S Z))))))))) kb rb Z))) (: (IDIRecursive P7 $proof2_C35_7163 $proof3_C35_7164 $proof4_C35_7165) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h-C35_7169 $t-C35_7170)) (STV (/ (* $PQs-C35_7171 (* $PQc-C35_7172 1.0)) (- (+ (* $PQc-C35_7172 1.0) 1) $PQc-C35_7172)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_7172) 0) (* -1 (- 1.0 $PQc-C35_7172)) (- 1.0 $PQc-C35_7172)) 1e-09) False) (max-count) (/ (* $PQc-C35_7172 (lookahead)) (- 1.0 $PQc-C35_7172)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_7172) 0) (* -1 (- 1.0 $PQc-C35_7172)) (- 1.0 $PQc-C35_7172)) 1e-09) False) (max-count) (/ (* $PQc-C35_7172 (lookahead)) (- 1.0 $PQc-C35_7172)))) 1.0)))))))
   (let* (((: $proof2_C35_7467 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2_C35_7467 (⊷ Q (S (S Z)) True)) kb rb Z))) (: (IDIBase P2 $proof2_C35_7467) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 1 0.5)))))
   (: (IDIBase P7 Q7) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 1 0.5))))
   (: (IDIBase P2 Q2) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5))))
   (let* (((: $proof2_C35_7726 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2_C35_7726 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb Z))) (: (IDIBase P7 $proof2_C35_7726) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 0 0.5)))))
   (let* (((: $proof1_C35_7944 (⊷ P $a-C35_7948 False)) (synthesize (: $proof1_C35_7944 (⊷ P $a-C35_7948 False)) kb rb Z)) ((: $proof2_C35_7945 (⊷ Q $a-C35_7948 $qa-C35_7437)) (synthesize (: $proof2_C35_7945 (⊷ Q $a-C35_7948 $qa-C35_7437)) kb rb Z))) (: (IDIBase $proof1_C35_7944 $proof2_C35_7945) (≞ (→ P Q) (ETV (:: $a-C35_7948 ∅) (STV 1 0)))))))

! "===== Prove P→Q using base
   recursive and order rules (synthesizer) ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P Q) $etv)) kb rb (fromNumber 3))
  ((let* (((: $proof1_C35_10461 (⊷ P $a-C35_10467 False)) (synthesize (: $proof1_C35_10461 (⊷ P $a-C35_10467 False)) kb rb (S (S Z)))) ((: $proof2_C35_10462 (⊷ Q $a-C35_10467 $qa-C35_10414)) (synthesize (: $proof2_C35_10462 (⊷ Q $a-C35_10467 $qa-C35_10414)) kb rb (S (S Z)))) ((: $proof3_C35_10463 (≞ (→ P Q) (ETV (:: $h-C35_10468 $t-C35_10469) (STV $PQs-C35_10470 $PQc-C35_10471)))) (synthesize (: $proof3_C35_10463 (≞ (→ P Q) (ETV (:: $h-C35_10468 $t-C35_10469) (STV $PQs-C35_10470 $PQc-C35_10471)))) kb rb (S (S Z)))) ((: $proof4_C35_10464 (⍃ $h-C35_10468 $a-C35_10467)) (synthesize (: $proof4_C35_10464 (⍃ $h-C35_10468 $a-C35_10467)) kb rb (S (S Z))))) (: (IDIRecursive $proof1_C35_10461 $proof2_C35_10462 $proof3_C35_10463 $proof4_C35_10464) (≞ (→ P Q) (ETV (:: $a-C35_10467 (:: $h-C35_10468 $t-C35_10469)) (STV $PQs-C35_10470 $PQc-C35_10471)))))
   (let* (((: $proof2_C35_10958 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2_C35_10958 (⊷ Q (S (S Z)) True)) kb rb (S (S Z)))) ((: $proof3_C35_10959 (≞ (→ P Q) (ETV (:: $h-C35_10964 $t-C35_10965) (STV $PQs-C35_10966 $PQc-C35_10967)))) (synthesize (: $proof3_C35_10959 (≞ (→ P Q) (ETV (:: $h-C35_10964 $t-C35_10965) (STV $PQs-C35_10966 $PQc-C35_10967)))) kb rb (S (S Z)))) ((: $proof4_C35_10960 (⍃ $h-C35_10964 (S (S Z)))) (synthesize (: $proof4_C35_10960 (⍃ $h-C35_10964 (S (S Z)))) kb rb (S (S Z))))) (: (IDIRecursive P2 $proof2_C35_10958 $proof3_C35_10959 $proof4_C35_10960) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h-C35_10964 $t-C35_10965)) (STV $PQs-C35_10966 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_10967) 0) (* -1 (- 1.0 $PQc-C35_10967)) (- 1.0 $PQc-C35_10967)) 1e-09) False) (max-count) (/ (* $PQc-C35_10967 (lookahead)) (- 1.0 $PQc-C35_10967)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_10967) 0) (* -1 (- 1.0 $PQc-C35_10967)) (- 1.0 $PQc-C35_10967)) 1e-09) False) (max-count) (/ (* $PQc-C35_10967 (lookahead)) (- 1.0 $PQc-C35_10967)))) 1.0)))))))
   (let* (((: $proof4_C35_10960 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4_C35_10960 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S (S (S (S (S (S Z))))))))) kb rb (S (S Z))))) (: (IDIRecursive P7 Q7 (IDIBase P7 Q7) $proof4_C35_10960) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: (S (S (S (S (S (S (S Z))))))) ∅)) (STV 1 (/ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) (+ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) 1.0)))))))
   (: (IDIRecursive P7 Q7 (IDIBase P2 Q2) (SuccMonotonicity (SuccMonotonicity ZeroLTSucc))) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: (S (S Z)) ∅)) (STV 0 0.6666666666666666))))
   (let* (((: $proof4_C35_31460 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S Z)))) (synthesize (: $proof4_C35_31460 (⍃ (S (S (S (S (S (S (S Z))))))) (S (S Z)))) kb rb (S (S Z))))) (: (IDIRecursive P2 Q2 (IDIBase P7 Q7) $proof4_C35_31460) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: (S (S (S (S (S (S (S Z))))))) ∅)) (STV (/ (* 1 (* 0.5 1.0)) (- (+ (* 0.5 1.0) 1) 0.5)) (/ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) (+ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) 1.0)))))))
   (let* (((: $proof4_C35_31460 (⍃ (S (S Z)) (S (S Z)))) (synthesize (: $proof4_C35_31460 (⍃ (S (S Z)) (S (S Z)))) kb rb (S (S Z))))) (: (IDIRecursive P2 Q2 (IDIBase P2 Q2) $proof4_C35_31460) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: (S (S Z)) ∅)) (STV (/ (* 0 (* 0.5 1.0)) (- (+ (* 0.5 1.0) 1) 0.5)) (/ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) (+ (+ 1 (if (or (< (if (< (- 1.0 0.5) 0) (* -1 (- 1.0 0.5)) (- 1.0 0.5)) 1e-09) False) (max-count) (/ (* 0.5 (lookahead)) (- 1.0 0.5)))) 1.0)))))))
   (let* (((: $proof2_C35_31458 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2_C35_31458 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb (S (S Z)))) ((: $proof3_C35_31459 (≞ (→ P Q) (ETV (:: $h-C35_31464 $t-C35_31465) (STV $PQs-C35_31466 $PQc-C35_31467)))) (synthesize (: $proof3_C35_31459 (≞ (→ P Q) (ETV (:: $h-C35_31464 $t-C35_31465) (STV $PQs-C35_31466 $PQc-C35_31467)))) kb rb (S (S Z)))) ((: $proof4_C35_31460 (⍃ $h-C35_31464 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4_C35_31460 (⍃ $h-C35_31464 (S (S (S (S (S (S (S Z))))))))) kb rb (S (S Z))))) (: (IDIRecursive P7 $proof2_C35_31458 $proof3_C35_31459 $proof4_C35_31460) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h-C35_31464 $t-C35_31465)) (STV (/ (* $PQs-C35_31466 (* $PQc-C35_31467 1.0)) (- (+ (* $PQc-C35_31467 1.0) 1) $PQc-C35_31467)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_31467) 0) (* -1 (- 1.0 $PQc-C35_31467)) (- 1.0 $PQc-C35_31467)) 1e-09) False) (max-count) (/ (* $PQc-C35_31467 (lookahead)) (- 1.0 $PQc-C35_31467)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc-C35_31467) 0) (* -1 (- 1.0 $PQc-C35_31467)) (- 1.0 $PQc-C35_31467)) 1e-09) False) (max-count) (/ (* $PQc-C35_31467 (lookahead)) (- 1.0 $PQc-C35_31467)))) 1.0)))))))
   (let* (((: $proof2_C35_51150 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2_C35_51150 (⊷ Q (S (S Z)) True)) kb rb (S (S Z))))) (: (IDIBase P2 $proof2_C35_51150) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 1 0.5)))))
   (: (IDIBase P7 Q7) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 1 0.5))))
   (: (IDIBase P2 Q2) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5))))
   (let* (((: $proof2_C35_53005 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2_C35_53005 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb (S (S Z))))) (: (IDIBase P7 $proof2_C35_53005) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 0 0.5)))))
   (let* (((: $proof1_C35_54819 (⊷ P $a-C35_54823 False)) (synthesize (: $proof1_C35_54819 (⊷ P $a-C35_54823 False)) kb rb (S (S Z)))) ((: $proof2_C35_54820 (⊷ Q $a-C35_54823 $qa-C35_51120)) (synthesize (: $proof2_C35_54820 (⊷ Q $a-C35_54823 $qa-C35_51120)) kb rb (S (S Z))))) (: (IDIBase $proof1_C35_54819 $proof2_C35_54820) (≞ (→ P Q) (ETV (:: $a-C35_54823 ∅) (STV 1 0)))))))


