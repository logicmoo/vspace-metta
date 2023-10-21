;; Import TruthValue
!(import! &self EvidentialTruthValue.metta)

!(assertEqual (mode (ETV (Singleton 42) (STV 0.1 0.2)))          0.1)
!(assertEqual (mean (ETV (Singleton 42) (STV 0.1 0.9)))          0.14)
!(assertEqual (confidence (ETV (Singleton 42) (STV 0.1 0.2)))    0.2)
!(assertEqual (count (ETV (Singleton 42) (STV 0.1 0.9)))         9.000000000000002)
