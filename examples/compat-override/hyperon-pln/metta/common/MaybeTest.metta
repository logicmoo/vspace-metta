!(import! &self Maybe.metta)

;; Test Maybe
!(assertEqualToResult (Maybe< (Just 10) (Just 20)) (True))
!(assertEqualToResult (Maybe< (Just 10) Nothing) (False))
!(assertEqualToResult (Maybe< Nothing (Just 10)) (True))
