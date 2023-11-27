!(import! &self MinerMatch.metta)

;; Load sample data
!(import! &db sample.metta)

;; Parameters
(= (minsup) 4)
(= (depth) (S Z))
(= (highsurp) 0.9)

!(miner &db (minsup) (depth))
!(surprisingMiner &db (minsup) (depth) (highsurp))
