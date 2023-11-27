!(import! &self DeductionFormula.metta)

;; Test
!(assertEqualToResult (max 3 4) (4))
!(assertEqualToResult (min 3 4) (3))
!(assertEqualToResult (and True True) (True))
!(assertEqualToResult (or True False) (True))
!(assertEqualToResult (<= 5 4) (False))

!(assertEqualToResult (clamp 2 0 1) (1))
!(assertEqualToResult (smallest-intersection-probability 0.9 0.6) (0.5555555555555556))
!(assertEqualToResult (conditional-probability-consistency 0.9 0.6 0.5)  (True))
!(assertEqualToResult (simple-deduction-strength-formula 0.9 0.6 0.5 0.3 0.4) (0.575))
!(assertEqualToResult (deduction-formula (STV 1 10) (STV 1 4) (STV 1 2) (STV 1 3) (STV 1 5))  ((STV 1 1)))
!(assertEqualToResult (conditional-probability-consistency 0.2 0.3 1)  (True))
!(assertEqualToResult (conditional-probability-consistency 0.3 0.4 0.9) (True))
!(assertEqualToResult (deduction-formula (STV 0.2 0.3) (STV 0.3 0.2) (STV 0.4 0.1) (STV 1 0.5) (STV 0.9 0.7)) ((STV 0.9 0.1)))
