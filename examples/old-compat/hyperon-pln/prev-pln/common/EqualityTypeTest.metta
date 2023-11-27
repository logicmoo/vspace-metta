;; Import ===
!(import! &self EqualityType.metta)

;; Define various subterms
(: TTrue True)
(: T42 42)

;; Define dummy functions to type check equality type
(: foo (-> (=== 42 42) Bool))
(= (foo $prf) True)
(: bar (-> (=== True True) Bool))
(= (bar $prf) True)
(: baz (-> (=== 42 True) Bool))
(= (baz $prf) False)

;; Test equality type
!(assertEqualToResult (foo (Refl T42))  (True))                 ; Should succeed
!(assertEqualToResult (bar (Refl T42)) ((Error T42 BadType)))   ; Should fail
!(assertEqualToResult (bar (Refl TTrue))             (True))    ; Should succeed
!(assertEqualToResult (baz (Refl T42)) ((Error (Refl T42) BadType))) ; Should fail
