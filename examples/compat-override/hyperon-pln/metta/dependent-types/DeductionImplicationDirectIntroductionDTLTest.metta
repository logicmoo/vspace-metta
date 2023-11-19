;; Test DeductionDTL and ImplicationDirectionIntroductionDTL rules

;; Import the rules
!(import! &self ImplicationDirectIntroductionDTL.metta)
!(import! &self DeductionDTL.metta)
!(import! &self ../synthesis/Synthesize.metta)

;; Knowledge base
(: kb (-> Atom))
(= (kb) (superpose ((: Pm (≞ P (STV 0.2 0.3)))
                    (: Qm (≞ Q (STV 0.3 0.2)))
                    (: Rm (≞ R (STV 0.4 0.1)))
                    (: P2 (⊷ P (fromNumber 2) True))
                    (: Q2 (⊷ Q (fromNumber 2) False))
                    (: P7 (⊷ P (fromNumber 7) True))
                    (: Q7 (⊷ Q (fromNumber 7) True))
                    (: QRm (≞ (→ Q R) (STV 0.9 0.7))))))
;; All axioms are placed in the kb as well
(= (kb) (zero-lt-succ-axiom))

;; Rule base
(: rb (-> Atom))
(= (rb) (superpose ((succ-monotonicity-rule)
                    (deduction-rule)
                    (implication-direct-introduction-base-rule)
                    (implication-direct-introduction-recursive-rule)
                    (evidence-elimination-rule))))

;; Test a combination of deduction and implication direct introduction
;;
;; Build the following inference tree
;;
;;                                                                                      -----(ZeroLTSucc)
;;                                                                                      0 ⍃ 5
;;                                                 --------(P2)     --------(Q2)        -----(SuccMonotonicity)
;;                                                 (P 2) = ⊤        (Q 2) = ⊥           1 ⍃ 6
;;                     --------(P7)  --------(Q7)  --------------------------(IDIBase)  -----(SuccMonotonicity)
;;                     (P 7) = ⊤     (Q 7) = ⊤     P → Q ≞ ((:: 2 ∅), <0 0.5>)          2 ⍃ 7
;;                     ---------------------------------------------------------------------(IDIRecursive)
;;                                                 P → Q ≞ (ETV (:: 7 (:: 2 ∅)) $pqtv)
;;                                                             |
;; ------------(Pm)  ------------(Qm)  ------------(Rm)  -------------(EvidenceElimination)  ----------------(QRm)
;; P ≞ <0.2 0.3>     Q ≞ <0.3 0.2>     R ≞ <0.4 0.1>     P → Q ≞ $pqtv                       Q → R ≞ <0.9 0.7>
;; ----------------------------------------------------------------------------------------------------------(Deduction)
;;                                                       P → R ≞ $prtv
(: deduction_idi_prf (≞ (→ P Q) $tv))
(= deduction_idi_prf (Deduction Pm Qm Rm (IDIBase P2 Q2) QRm))
! deduction_idi_prf
!(get-type deduction_idi_prf)

! "===== Prove that P→Q based on one piece of evidence ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P Q) $etv)) kb rb (fromNumber 1))
;; Output:
((let* (((: $proof_C35_4076 (≞ (→ P Q) (ETV $evidence_C35_3202 $etv))) (synthesize (: $proof_C35_4076 (≞ (→ P Q) (ETV $evidence_C35_3202 $etv))) kb rb Z))) (: (EvidenceElimination $proof_C35_4076) (≞ (→ P Q) $etv)))
 (let* (((: $proof4_C35_4197 (≞ (→ P P) (STV $PQs_C35_4203 $PQc_C35_4208))) (synthesize (: $proof4_C35_4197 (≞ (→ P P) (STV $PQs_C35_4203 $PQc_C35_4208))) kb rb Z)) ((: $proof5_C35_4198 (≞ (→ P Q) (STV $QRs_C35_4204 $QRc_C35_4209))) (synthesize (: $proof5_C35_4198 (≞ (→ P Q) (STV $QRs_C35_4204 $QRc_C35_4209))) kb rb Z))) (: (Deduction Pm Pm Qm $proof4_C35_4197 $proof5_C35_4198) (≞ (→ P Q) (STV (if (< 0.9999 0.2) 0.3 (+ (* $PQs_C35_4203 $QRs_C35_4204) (/ (* (- 1 $PQs_C35_4203) (- 0.3 (* 0.2 $QRs_C35_4204))) (- 1 0.2)))) (if (< 0.3 (if (< 0.3 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.3 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)))) 0.3 (if (< 0.3 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.3 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))))))))
 (let* (((: $proof4_C35_4197 (≞ (→ P Q) (STV $PQs_C35_4203 $PQc_C35_4208))) (synthesize (: $proof4_C35_4197 (≞ (→ P Q) (STV $PQs_C35_4203 $PQc_C35_4208))) kb rb Z)) ((: $proof5_C35_4198 (≞ (→ Q Q) (STV $QRs_C35_4204 $QRc_C35_4209))) (synthesize (: $proof5_C35_4198 (≞ (→ Q Q) (STV $QRs_C35_4204 $QRc_C35_4209))) kb rb Z))) (: (Deduction Pm Qm Qm $proof4_C35_4197 $proof5_C35_4198) (≞ (→ P Q) (STV (if (< 0.9999 0.3) 0.3 (+ (* $PQs_C35_4203 $QRs_C35_4204) (/ (* (- 1 $PQs_C35_4203) (- 0.3 (* 0.3 $QRs_C35_4204))) (- 1 0.3)))) (if (< 0.3 (if (< 0.2 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.2 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)))) 0.3 (if (< 0.2 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.2 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))))))))
 (let* (((: $proof4_C35_4197 (≞ (→ P R) (STV $PQs_C35_4203 $PQc_C35_4208))) (synthesize (: $proof4_C35_4197 (≞ (→ P R) (STV $PQs_C35_4203 $PQc_C35_4208))) kb rb Z)) ((: $proof5_C35_4198 (≞ (→ R Q) (STV $QRs_C35_4204 $QRc_C35_4209))) (synthesize (: $proof5_C35_4198 (≞ (→ R Q) (STV $QRs_C35_4204 $QRc_C35_4209))) kb rb Z))) (: (Deduction Pm Rm Qm $proof4_C35_4197 $proof5_C35_4198) (≞ (→ P Q) (STV (if (< 0.9999 0.4) 0.3 (+ (* $PQs_C35_4203 $QRs_C35_4204) (/ (* (- 1 $PQs_C35_4203) (- 0.3 (* 0.4 $QRs_C35_4204))) (- 1 0.4)))) (if (< 0.3 (if (< 0.1 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.1 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)))) 0.3 (if (< 0.1 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.1 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))))))))
 (let* (((: $proof4_C35_4197 (≞ (→ P (→ Q R)) (STV $PQs_C35_4203 $PQc_C35_4208))) (synthesize (: $proof4_C35_4197 (≞ (→ P (→ Q R)) (STV $PQs_C35_4203 $PQc_C35_4208))) kb rb Z)) ((: $proof5_C35_4198 (≞ (→ (→ Q R) Q) (STV $QRs_C35_4204 $QRc_C35_4209))) (synthesize (: $proof5_C35_4198 (≞ (→ (→ Q R) Q) (STV $QRs_C35_4204 $QRc_C35_4209))) kb rb Z))) (: (Deduction Pm QRm Qm $proof4_C35_4197 $proof5_C35_4198) (≞ (→ P Q) (STV (if (< 0.9999 0.9) 0.3 (+ (* $PQs_C35_4203 $QRs_C35_4204) (/ (* (- 1 $PQs_C35_4203) (- 0.3 (* 0.9 $QRs_C35_4204))) (- 1 0.9)))) (if (< 0.3 (if (< 0.7 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.7 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)))) 0.3 (if (< 0.7 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))) 0.7 (if (< 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209)) 0.2 (if (< $PQc_C35_4208 $QRc_C35_4209) $PQc_C35_4208 $QRc_C35_4209))))))))
 (let* (((: $proof3_C35_4943 (≞ (→ P Q) (ETV (:: $h_C35_4948 $t_C35_4949) (STV $PQs_C35_4950 $PQc_C35_4951)))) (synthesize (: $proof3_C35_4943 (≞ (→ P Q) (ETV (:: $h_C35_4948 $t_C35_4949) (STV $PQs_C35_4950 $PQc_C35_4951)))) kb rb Z)) ((: $proof4_C35_4944 (⍃ $h_C35_4948 (S (S Z)))) (synthesize (: $proof4_C35_4944 (⍃ $h_C35_4948 (S (S Z)))) kb rb Z))) (: (IDIRecursive P2 Q2 $proof3_C35_4943 $proof4_C35_4944) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h_C35_4948 $t_C35_4949)) (STV (/ (* $PQs_C35_4950 (* $PQc_C35_4951 1.0)) (- (+ (* $PQc_C35_4951 1.0) 1) $PQc_C35_4951)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_4951) 0) (* -1 (- 1.0 $PQc_C35_4951)) (- 1.0 $PQc_C35_4951)) 1e-09) False) (max-count) (/ (* $PQc_C35_4951 (lookahead)) (- 1.0 $PQc_C35_4951)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_4951) 0) (* -1 (- 1.0 $PQc_C35_4951)) (- 1.0 $PQc_C35_4951)) 1e-09) False) (max-count) (/ (* $PQc_C35_4951 (lookahead)) (- 1.0 $PQc_C35_4951)))) 1.0)))))))
 (let* (((: $proof2_C35_4942 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2_C35_4942 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb Z)) ((: $proof3_C35_4943 (≞ (→ P Q) (ETV (:: $h_C35_4948 $t_C35_4949) (STV $PQs_C35_4950 $PQc_C35_4951)))) (synthesize (: $proof3_C35_4943 (≞ (→ P Q) (ETV (:: $h_C35_4948 $t_C35_4949) (STV $PQs_C35_4950 $PQc_C35_4951)))) kb rb Z)) ((: $proof4_C35_4944 (⍃ $h_C35_4948 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4_C35_4944 (⍃ $h_C35_4948 (S (S (S (S (S (S (S Z))))))))) kb rb Z))) (: (IDIRecursive P7 $proof2_C35_4942 $proof3_C35_4943 $proof4_C35_4944) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h_C35_4948 $t_C35_4949)) (STV (/ (* $PQs_C35_4950 (* $PQc_C35_4951 1.0)) (- (+ (* $PQc_C35_4951 1.0) 1) $PQc_C35_4951)) (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_4951) 0) (* -1 (- 1.0 $PQc_C35_4951)) (- 1.0 $PQc_C35_4951)) 1e-09) False) (max-count) (/ (* $PQc_C35_4951 (lookahead)) (- 1.0 $PQc_C35_4951)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_4951) 0) (* -1 (- 1.0 $PQc_C35_4951)) (- 1.0 $PQc_C35_4951)) 1e-09) False) (max-count) (/ (* $PQc_C35_4951 (lookahead)) (- 1.0 $PQc_C35_4951)))) 1.0)))))))
 (let* (((: $proof1_C35_5208 (⊷ P $a_C35_5214 False)) (synthesize (: $proof1_C35_5208 (⊷ P $a_C35_5214 False)) kb rb Z)) ((: $proof2_C35_5209 (⊷ Q $a_C35_5214 $qa_C35_4881)) (synthesize (: $proof2_C35_5209 (⊷ Q $a_C35_5214 $qa_C35_4881)) kb rb Z)) ((: $proof3_C35_5210 (≞ (→ P Q) (ETV (:: $h_C35_5215 $t_C35_5216) (STV $PQs_C35_5217 $PQc_C35_5218)))) (synthesize (: $proof3_C35_5210 (≞ (→ P Q) (ETV (:: $h_C35_5215 $t_C35_5216) (STV $PQs_C35_5217 $PQc_C35_5218)))) kb rb Z)) ((: $proof4_C35_5211 (⍃ $h_C35_5215 $a_C35_5214)) (synthesize (: $proof4_C35_5211 (⍃ $h_C35_5215 $a_C35_5214)) kb rb Z))) (: (IDIRecursive $proof1_C35_5208 $proof2_C35_5209 $proof3_C35_5210 $proof4_C35_5211) (≞ (→ P Q) (ETV (:: $a_C35_5214 (:: $h_C35_5215 $t_C35_5216)) (STV $PQs_C35_5217 $PQc_C35_5218)))))
 (let* (((: $proof2_C35_5280 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2_C35_5280 (⊷ Q (S (S Z)) True)) kb rb Z)) ((: $proof3_C35_5281 (≞ (→ P Q) (ETV (:: $h_C35_5286 $t_C35_5287) (STV $PQs_C35_5288 $PQc_C35_5289)))) (synthesize (: $proof3_C35_5281 (≞ (→ P Q) (ETV (:: $h_C35_5286 $t_C35_5287) (STV $PQs_C35_5288 $PQc_C35_5289)))) kb rb Z)) ((: $proof4_C35_5282 (⍃ $h_C35_5286 (S (S Z)))) (synthesize (: $proof4_C35_5282 (⍃ $h_C35_5286 (S (S Z)))) kb rb Z))) (: (IDIRecursive P2 $proof2_C35_5280 $proof3_C35_5281 $proof4_C35_5282) (≞ (→ P Q) (ETV (:: (S (S Z)) (:: $h_C35_5286 $t_C35_5287)) (STV $PQs_C35_5288 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_5289) 0) (* -1 (- 1.0 $PQc_C35_5289)) (- 1.0 $PQc_C35_5289)) 1e-09) False) (max-count) (/ (* $PQc_C35_5289 (lookahead)) (- 1.0 $PQc_C35_5289)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_5289) 0) (* -1 (- 1.0 $PQc_C35_5289)) (- 1.0 $PQc_C35_5289)) 1e-09) False) (max-count) (/ (* $PQc_C35_5289 (lookahead)) (- 1.0 $PQc_C35_5289)))) 1.0)))))))
 (let* (((: $proof3_C35_5281 (≞ (→ P Q) (ETV (:: $h_C35_5286 $t_C35_5287) (STV $PQs_C35_5288 $PQc_C35_5289)))) (synthesize (: $proof3_C35_5281 (≞ (→ P Q) (ETV (:: $h_C35_5286 $t_C35_5287) (STV $PQs_C35_5288 $PQc_C35_5289)))) kb rb Z)) ((: $proof4_C35_5282 (⍃ $h_C35_5286 (S (S (S (S (S (S (S Z))))))))) (synthesize (: $proof4_C35_5282 (⍃ $h_C35_5286 (S (S (S (S (S (S (S Z))))))))) kb rb Z))) (: (IDIRecursive P7 Q7 $proof3_C35_5281 $proof4_C35_5282) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: $h_C35_5286 $t_C35_5287)) (STV $PQs_C35_5288 (/ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_5289) 0) (* -1 (- 1.0 $PQc_C35_5289)) (- 1.0 $PQc_C35_5289)) 1e-09) False) (max-count) (/ (* $PQc_C35_5289 (lookahead)) (- 1.0 $PQc_C35_5289)))) (+ (+ 1 (if (or (< (if (< (- 1.0 $PQc_C35_5289) 0) (* -1 (- 1.0 $PQc_C35_5289)) (- 1.0 $PQc_C35_5289)) 1e-09) False) (max-count) (/ (* $PQc_C35_5289 (lookahead)) (- 1.0 $PQc_C35_5289)))) 1.0)))))))
 (: (IDIBase P2 Q2) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5))))
 (let* (((: $proof2_C35_5617 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) (synthesize (: $proof2_C35_5617 (⊷ Q (S (S (S (S (S (S (S Z))))))) False)) kb rb Z))) (: (IDIBase P7 $proof2_C35_5617) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 0 0.5)))))
 (let* (((: $proof2_C35_5868 (⊷ Q (S (S Z)) True)) (synthesize (: $proof2_C35_5868 (⊷ Q (S (S Z)) True)) kb rb Z))) (: (IDIBase P2 $proof2_C35_5868) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 1 0.5)))))
 (: (IDIBase P7 Q7) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 1 0.5))))
 (let* (((: $proof1_C35_6158 (⊷ P $a_C35_6162 False)) (synthesize (: $proof1_C35_6158 (⊷ P $a_C35_6162 False)) kb rb Z)) ((: $proof2_C35_6159 (⊷ Q $a_C35_6162 $qa_C35_5572)) (synthesize (: $proof2_C35_6159 (⊷ Q $a_C35_6162 $qa_C35_5572)) kb rb Z))) (: (IDIBase $proof1_C35_6158 $proof2_C35_6159) (≞ (→ P Q) (ETV (:: $a_C35_6162 ∅) (STV 1 0)))))))

;; ((: (IDIBase P2 Q2) (≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5))))
;;  (: (IDIBase P7 Q2) (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) ∅) (STV 1 0.5)))))

! "===== Prove that P→Q based on two pieces of evidence ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P Q) $etv)) kb rb (fromNumber 3))
;; Output:
 ((: (IDIRecursive P7
                  Q7
                  (IDIBase P2 Q2)
                  (SuccMonotonicity (SuccMonotonicity ZeroLTSucc)))
    (≞ (→ P Q) (ETV (:: (S (S (S (S (S (S (S Z))))))) (:: (S (S Z)) ∅)) (STV 0 0.6666666666666666))))))

! "===== Prove that P→R based on one piece of evidence and deduction ====="
!(assertEqualToResult (synthesize (: $proof (≞ (→ P R) $etv)) kb rb (fromNumber 3))
;; Output:
   ((: (Deduction Pm Qm Rm (EvidenceElimination (IDIBase P2 Q2)) QRm) (≞ (→ P R) (STV 0.18571428571428572 0.1)))
    (: (Deduction Pm Qm Rm (EvidenceElimination (IDIBase P7 Q7)) QRm) (≞ (→ P R) (STV 0.9 0.1)))))

;; TODO: disabled because it takes to long for now
;; ! "===== Prove that P→R based on two pieces of evidence and deduction ====="
;;!(synthesize (: (Deduction Pm Qm Rm $PQ QRm) (≞ (→ P R) $etv)) kb rb (fromNumber 5))
