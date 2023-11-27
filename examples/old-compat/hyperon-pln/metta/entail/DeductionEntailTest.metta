;; Test Deduction Entail Rule
!(import! &self DeductionEntail.metta)

(= (P) (≞ P (STV 1 0.1)))
(= (Q) (≞ Q (STV 1 0.1)))
(= (R) (≞ R (STV 1 0.1)))
(= (PQ) (≞ (→ P Q) (STV 1 0.5)))
(= (QR) (≞ (→ Q R) (STV 1 0.5)))

;; Forward chain
!(assertEqual
  (let* (($p (P))
        ($q (Q))
        ($r (R))
        ($pq (PQ))
        ($qr (QR)))
    (match &self (⊢ $p $q $r $pq $qr $res) $res))
 (≞ (→ P R) (STV 1 1)))

;; Backward chain
;!(match &self (⊢ $p $q $r $pq $qr (≞ (→ P R) $tv)) (S $p $q $r $pq $qr $tv))
;..   (match GroundingSpace-0x1c5e9f8 (⊢ $p $q $r $pq $qr (≞ (→ P R) $tv)) (S $p $q $r $pq $qr $tv))

