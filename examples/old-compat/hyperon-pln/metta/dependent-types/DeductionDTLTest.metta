;; ;; Type definitions checker
;; !(pragma! type-check auto)

;; ;; Equality type definition
;; (: = (-> $t $t Type))

;; Import modules
!(import! &self DeductionDTL.metta)
!(import! &self ../synthesis/Synthesize.metta)
!(import! &self ../common/Record.metta)

;; Knowledge base
(: Predicate Type)
(: → (-> Predicate Predicate Type))
(: P Predicate)
(: Q Predicate)
(: R Predicate)
(: kb (-> Atom))
(= (kb) (superpose ((: Pm (≞ P (STV 0.5 0.1)))
                    (: Qm (≞ Q (STV 0.6 0.2)))
                    (: Rm (≞ R (STV 0.7 0.3)))
                    (: PQm (≞ (→ P Q) (STV 0.8 0.4)))
                    (: QRm (≞ (→ Q R) (STV 0.9 0.5))))))

;; Rule base
(: rb (-> Atom))
(= (rb) (deduction-rule))

;; Test deduction rule
;;
;; Build the following inference tree
;;
;; ------------(Pm)  ----------(Qm)  ------------(Rm)  ------------  --(PQm)  ----------------(QRm)
;; P ≞ <0.5 0.1>     Q ≞ <0.6 0.2>   R ≞ <0.7 0.1>     P → Q ≞ <0.8 0.5>      Q → R ≞ <0.9 0.5>
;; -------------------------------------------------------------------------------------------(Deduction)
;;                                          P → R ≞ $tv

;; The following is disabled till the type checker supports running functions inside types
;; ! "===== Test type checker on deduction rule ====="
;; (: deduction_prf (≞ (→ P R) $tv))
;; (= deduction_prf (Deduction Pm Qm Rm PQm QRm))
;; !deduction_prf
;; !(get-type deduction_prf)

;; Test synthesizer
! "===== Test synthesizer ===="
!(assertEqualToResult (record synthesize ((: $proof (≞ (→ P Q) $tv)) kb rb Z))  ((⊷ synthesize ((: $proof (≞ (→ P Q) $tv)) kb rb Z) (: PQm (≞ (→ P Q) (STV 0.8 0.4))))))
!(assertEqualToResult (record synthesize ((: $proof (≞ (→ Q R) $tv)) kb rb Z))  ((⊷ synthesize ((: $proof (≞ (→ Q R) $tv)) kb rb Z) (: QRm (≞ (→ Q R) (STV 0.9 0.5))))))

!(record synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)))

!(assertEqualToResult (record synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)))
  ((⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2911 (≞ (→ P P) (STV $PQs-C35_2917 $PQc-C35_2922))) (synthesize (: $proof4_C35_2911 (≞ (→ P P) (STV $PQs-C35_2917 $PQc-C35_2922))) kb rb Z)) ((: $proof5_C35_2912 (≞ (→ P R) (STV $QRs-C35_2918 $QRc-C35_2923))) (synthesize (: $proof5_C35_2912 (≞ (→ P R) (STV $QRs-C35_2918 $QRc-C35_2923))) kb rb Z))) (: (Deduction Pm Pm Rm $proof4_C35_2911 $proof5_C35_2912) (≞ (→ P R) (STV (if (< 0.9999 0.5) 0.7 (+ (* $PQs-C35_2917 $QRs-C35_2918) (/ (* (- 1 $PQs-C35_2917) (- 0.7 (* 0.5 $QRs-C35_2918))) (- 1 0.5)))) (if (< 0.1 (if (< 0.1 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.1 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))) 0.1 (if (< 0.1 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.1 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))))))))
   (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z))
      (: (Deduction Pm Qm Rm PQm QRm) (≞ (→ P R) (STV 0.8 0.1))))
   (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2911 (≞ (→ P R) (STV $PQs-C35_2917 $PQc-C35_2922))) (synthesize (: $proof4_C35_2911 (≞ (→ P R) (STV $PQs-C35_2917 $PQc-C35_2922))) kb rb Z)) ((: $proof5_C35_2912 (≞ (→ R R) (STV $QRs-C35_2918 $QRc-C35_2923))) (synthesize (: $proof5_C35_2912 (≞ (→ R R) (STV $QRs-C35_2918 $QRc-C35_2923))) kb rb Z)))
                            (: (Deduction Pm Rm Rm $proof4_C35_2911 $proof5_C35_2912) (≞ (→ P R) (STV (if (< 0.9999 0.7) 0.7 (+ (* $PQs-C35_2917 $QRs-C35_2918) (/ (* (- 1 $PQs-C35_2917) (- 0.7 (* 0.7 $QRs-C35_2918))) (- 1 0.7)))) (if (< 0.1 (if (< 0.3 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.3 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))) 0.1 (if (< 0.3 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.3 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))))))))
   (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2911 (≞ (→ P (→ P Q)) (STV $PQs-C35_2917 $PQc-C35_2922))) (synthesize (: $proof4_C35_2911 (≞ (→ P (→ P Q)) (STV $PQs-C35_2917 $PQc-C35_2922))) kb rb Z)) ((: $proof5_C35_2912 (≞ (→ (→ P Q) R) (STV $QRs-C35_2918 $QRc-C35_2923))) (synthesize (: $proof5_C35_2912 (≞ (→ (→ P Q) R) (STV $QRs-C35_2918 $QRc-C35_2923))) kb rb Z))) (: (Deduction Pm PQm Rm $proof4_C35_2911 $proof5_C35_2912) (≞ (→ P R) (STV (if (< 0.9999 0.8) 0.7 (+ (* $PQs-C35_2917 $QRs-C35_2918) (/ (* (- 1 $PQs-C35_2917) (- 0.7 (* 0.8 $QRs-C35_2918))) (- 1 0.8)))) (if (< 0.1 (if (< 0.4 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.4 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))) 0.1 (if (< 0.4 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.4 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))))))))
   (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2911 (≞ (→ P (→ Q R)) (STV $PQs-C35_2917 $PQc-C35_2922))) (synthesize (: $proof4_C35_2911 (≞ (→ P (→ Q R)) (STV $PQs-C35_2917 $PQc-C35_2922))) kb rb Z)) ((: $proof5_C35_2912 (≞ (→ (→ Q R) R) (STV $QRs-C35_2918 $QRc-C35_2923))) (synthesize (: $proof5_C35_2912 (≞ (→ (→ Q R) R) (STV $QRs-C35_2918 $QRc-C35_2923))) kb rb Z))) (: (Deduction Pm QRm Rm $proof4_C35_2911 $proof5_C35_2912) (≞ (→ P R) (STV (if (< 0.9999 0.9) 0.7 (+ (* $PQs-C35_2917 $QRs-C35_2918) (/ (* (- 1 $PQs-C35_2917) (- 0.7 (* 0.9 $QRs-C35_2918))) (- 1 0.9)))) (if (< 0.1 (if (< 0.5 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.5 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))) 0.1 (if (< 0.5 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923))) 0.5 (if (< 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)) 0.3 (if (< $PQc-C35_2922 $QRc-C35_2923) $PQc-C35_2922 $QRc-C35_2923)))))))))))


;; ;; TODO: fix the following
;; !(assertEqual (record synthesize ((: $proof (≞ (→ P R) (STV $s $c))) kb rb (S Z))) (: (Deduction Pm Qm Rm PQm QRm) (≞ (→ P R) (STV 0.8 0.1))))

!(assertEqualToResult
  (record synthesize
    ((: $proof
        (≞ (→ P R) (STV $s $c)))
       kb rb (S Z)))
   ((⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z))

  (let* (((: $proof4_C35_2952 (≞ (→ P P)
     (STV $PQs-C35_2958 $PQc-C35_2963)))
      (synthesize (: $proof4_C35_2952 (≞ (→ P P) (STV $PQs-C35_2958 $PQc-C35_2963))) kb rb Z))
       ((: $proof5_C35_2953 (≞ (→ P R) (STV $QRs-C35_2959 $QRc-C35_2964)))
       (synthesize (: $proof5_C35_2953 (≞ (→ P R) (STV $QRs-C35_2959 $QRc-C35_2964))) kb rb Z))) (: (Deduction Pm Pm Rm $proof4_C35_2952 $proof5_C35_2953) (≞ (→ P R) (STV (if (< 0.9999 0.5) 0.7 (+ (* $PQs-C35_2958 $QRs-C35_2959) (/ (* (- 1 $PQs-C35_2958) (- 0.7 (* 0.5 $QRs-C35_2959))) (- 1 0.5)))) (if (< 0.1 (if (< 0.1 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.1 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))) 0.1 (if (< 0.1 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.1 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))))))))
         (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z))
            (: (Deduction Pm Qm Rm PQm QRm) (≞ (→ P R) (STV 0.8 0.1))))
         (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2952 (≞ (→ P R) (STV $PQs-C35_2958 $PQc-C35_2963))) (synthesize (: $proof4_C35_2952 (≞ (→ P R) (STV $PQs-C35_2958 $PQc-C35_2963))) kb rb Z)) ((: $proof5_C35_2953 (≞ (→ R R) (STV $QRs-C35_2959 $QRc-C35_2964))) (synthesize (: $proof5_C35_2953 (≞ (→ R R) (STV $QRs-C35_2959 $QRc-C35_2964))) kb rb Z))) (: (Deduction Pm Rm Rm $proof4_C35_2952 $proof5_C35_2953) (≞ (→ P R) (STV (if (< 0.9999 0.7) 0.7 (+ (* $PQs-C35_2958 $QRs-C35_2959) (/ (* (- 1 $PQs-C35_2958) (- 0.7 (* 0.7 $QRs-C35_2959))) (- 1 0.7)))) (if (< 0.1 (if (< 0.3 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.3 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))) 0.1 (if (< 0.3 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.3 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))))))))
         (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2952 (≞ (→ P (→ P Q)) (STV $PQs-C35_2958 $PQc-C35_2963))) (synthesize (: $proof4_C35_2952 (≞ (→ P (→ P Q)) (STV $PQs-C35_2958 $PQc-C35_2963))) kb rb Z)) ((: $proof5_C35_2953 (≞ (→ (→ P Q) R) (STV $QRs-C35_2959 $QRc-C35_2964))) (synthesize (: $proof5_C35_2953 (≞ (→ (→ P Q) R) (STV $QRs-C35_2959 $QRc-C35_2964))) kb rb Z))) (: (Deduction Pm PQm Rm $proof4_C35_2952 $proof5_C35_2953) (≞ (→ P R) (STV (if (< 0.9999 0.8) 0.7 (+ (* $PQs-C35_2958 $QRs-C35_2959) (/ (* (- 1 $PQs-C35_2958) (- 0.7 (* 0.8 $QRs-C35_2959))) (- 1 0.8)))) (if (< 0.1 (if (< 0.4 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.4 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))) 0.1 (if (< 0.4 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.4 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))))))))
         (⊷ synthesize ((: $proof (≞ (→ P R) $tv)) kb rb (S Z)) (let* (((: $proof4_C35_2952 (≞ (→ P (→ Q R)) (STV $PQs-C35_2958 $PQc-C35_2963))) (synthesize (: $proof4_C35_2952 (≞ (→ P (→ Q R)) (STV $PQs-C35_2958 $PQc-C35_2963))) kb rb Z)) ((: $proof5_C35_2953 (≞ (→ (→ Q R) R) (STV $QRs-C35_2959 $QRc-C35_2964))) (synthesize (: $proof5_C35_2953 (≞ (→ (→ Q R) R) (STV $QRs-C35_2959 $QRc-C35_2964))) kb rb Z))) (: (Deduction Pm QRm Rm $proof4_C35_2952 $proof5_C35_2953) (≞ (→ P R) (STV (if (< 0.9999 0.9) 0.7 (+ (* $PQs-C35_2958 $QRs-C35_2959) (/ (* (- 1 $PQs-C35_2958) (- 0.7 (* 0.9 $QRs-C35_2959))) (- 1 0.9)))) (if (< 0.1 (if (< 0.5 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.5 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))) 0.1 (if (< 0.5 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964))) 0.5 (if (< 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)) 0.3 (if (< $PQc-C35_2963 $QRc-C35_2964) $PQc-C35_2963 $QRc-C35_2964)))))))))))


