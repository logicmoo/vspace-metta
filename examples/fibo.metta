;!(extend-py! metta_learner)

; Recursive Fibonacci
(= (fib 0) 0)
(= (fib 1) 1)
(= (fib $n) (+ (fib (- $n 1)) (fib (- $n 2))))

; Tail-Recursive Fibonacci
(= (tail-rec-fib $n) (tail-rec-fib-helper $n 0 1))
(= (tail-rec-fib-helper 0 $a $_) $a)
(= (tail-rec-fib-helper $n $a $b) (tail-rec-fib-helper (- $n 1) $b (+ $a $b)))

; Fibonacci Using Accumulators
(= (fib-acc $n) (fib-acc-helper $n (, 0 1)))
(= (fib-acc-helper 0 (, $a $_)) $a)
(= (fib-acc-helper $n (, $a $b)) (fib-acc-helper (- $n 1) (, $b (+ $a $b))))


;!(assertEqual (fib 0) 0)
;!(assertEqual (tail-rec-fib 0) 0)
;!(assertEqual (fib-acc 0) 0)

;!(assertEqual (fib 1) 1)
;!(assertEqual (tail-rec-fib 1) 1)
;!(assertEqual (fib-acc 1) 1)

;!(assertEqual (fib 2) 1)
;!(assertEqual (tail-rec-fib 2) 1)
;!(assertEqual (fib-acc 2) 1)

;!(assertEqual (fib 3) 2)
;!(assertEqual (tail-rec-fib 3) 2)
;!(assertEqual (fib-acc 3) 2)

;!(assertEqual (fib 4) 3)
;!(assertEqual (tail-rec-fib 4) 3)
;!(assertEqual (fib-acc 4) 3)

;!(assertEqual (fib 5) 5)
;!(assertEqual (tail-rec-fib 5) 5)
;!(assertEqual (fib-acc 5) 5)

!(assertEqual (fib 6) 8)
;!(assertEqual (tail-rec-fib 6) 8)
;!(assertEqual (fib-acc 6) 8)

;!(assertEqual (fib 7) 13)
;!(assertEqual (tail-rec-fib 7) 13)
;!(assertEqual (fib-acc 7) 13)

;!(assertEqual (fib 8) 21)
;!(assertEqual (tail-rec-fib 8) 21)
;!(assertEqual (fib-acc 8) 21)

;!(assertEqual (fib 9) 34)
;!(assertEqual (tail-rec-fib 9) 34)
;!(assertEqual (fib-acc 9) 34)

;!(assertEqual (fib 10) 55)
;!(assertEqual (tail-rec-fib 10) 55)
;!(assertEqual (fib-acc 10) 55)


;!(metta_learner::vspace-main)

