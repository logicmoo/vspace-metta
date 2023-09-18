; Factorial
(= (factorial 0) 1)
(= (factorial $n) (* $n (factorial (- $n 1))))

; Tests

; Factorial tests
!(assertEqual (factorial 0) 1)
!(assertEqual (factorial 1) 1)
!(assertEqual (factorial 2) 2)
!(assertEqual (factorial 3) 6)
!(assertEqual (factorial 4) 24)
!(assertEqual (factorial 5) 120)

