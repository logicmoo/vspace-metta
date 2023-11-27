;; Import modules
!(import! &self ModusPonensDTL.metta)
!(import! &self ../synthesis/Synthesize.metta)

;; Puzzle:
;; The cow is big.
;; The cow needs the dog.
;; The dog sees the rabbit.
;; The rabbit chases the cow.
;; The rabbit chases the dog.
;; The rabbit is big.
;; The rabbit sees the dog.
;; If the cow chases the dog then the cow sees the rabbit.
;; If something is big then it chases the dog.
;; Question:
;; The cow sees the rabbit?

;; Knowledge base
(: Predicate Type)
(: → (-> Predicate Predicate Type))
(: big (-> Atom Predicate))
(: need (-> Atom Atom Predicate))
(: see (-> Atom Atom Predicate))
(: chase (-> Atom Atom Predicate))
(: cow Atom)
(: dog Atom)
(: rabbit Atom)
(: kb (-> Atom))
(= (kb) (superpose ((: cow-is-big (≞ (big cow) (STV 0.99 0.99)))
                    (: cow-needs-dog (≞ (need cow dog) (STV 0.99 0.99)))
                    (: dog-sees-rabbit (≞ (see dog rabbit) (STV 0.99 0.99)))
                    (: rabbit-chases-cow (≞ (chase rabbit cow) (STV 0.99 0.99)))
                    (: rabbit-chases-dog (≞ (chase rabbit dog) (STV 0.99 0.99)))
                    (: rabbit-is-big (≞ (big rabbit) (STV 0.99 0.99)))
                    (: rabbit-sees-dog (≞ (see rabbit dog) (STV 0.99 0.99)))
                    (: cow-chases-dog-sees-rabbit (≞ (→ (chase cow dog) (see cow rabbit)) (STV 0.99 0.99)))
                    (: x-is-big-chases-dog (≞ (→ (big $x) (chase $x dog)) (STV 0.99 0.99))))))

;; Rule base
(: rb (-> Atom))
(= (rb) (modus-ponens-rule))

! "===== Test synthesizer ===="
!(assertEqual (synthesize (: $proof (≞ (big cow) (STV $s $c))) kb rb (fromNumber 0))   (: cow-is-big (≞ (big cow) (STV 0.99 0.99))))
!(assertEqual (synthesize (: $proof (≞ (chase cow dog) (STV $s $c))) kb rb (fromNumber 1))    (: (ModusPonens cow-is-big x-is-big-chases-dog) (≞ (chase cow dog) (STV 0.9821 0.99))))
!(assertEqual (synthesize (: $proof (≞ (see cow rabbit) (STV $s $c))) kb rb (fromNumber 2))   (: (ModusPonens (ModusPonens cow-is-big x-is-big-chases-dog) cow-chases-dog-sees-rabbit) (≞ (see cow rabbit) (STV 0.975859 0.99))))



