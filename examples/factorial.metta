;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Summary:
;;
;; 1. Functional Recursive Factorial:
;; - Approach: Standard Recursion
;; - Description: This method calculates the factorial of a number 'n'
;;   by recursively multiplying 'n' by the factorial of (n-1) until it
;;   reaches the base case of factorial(0) = 1. It''s straightforward but
;;   can be less efficient due to the creation of multiple stack frames.
;;
;; 2. Functional Tail-Recursive Factorial:
;; - Approach: Tail Recursion with Helper Function
;; - Description: This method uses a helper function with an accumulator to
;;   store the interim results. It is tail-recursive, making the recursive
;;   call the last thing executed by the function. This approach is more
;;   memory-efficient in languages and interpreters that support tail call
;;   optimization, as it reuses the stack frame of the current function call.
;;
;; 3. Functional Factorial using Accumulators:
;; - Approach: Accumulator-Based Recursion
;; - Description: This approach is similar to the tail-recursive one but
;;   emphasizes the use of an accumulator to keep track of the intermediate
;;   product. This is also a form of tail recursion and benefits from stack
;;   frame reuse in systems that support it.
;;
;; All three methods are functional approaches to calculate the factorial
;; of a number, each with its nuances regarding efficiency and readability.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1. Functional Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (factorial 0) 1)
(= (factorial $n) (* $n (factorial (- $n 1))))
;; Approach: Standard recursion
;; How it Works: It calculates the factorial of a number n
;; by recursively multiplying n by the factorial of (n-1)
;; until it reaches the base case of factorial(0) = 1.
;;!(assertEqual (factorial 0) 1)
;;!(assertEqual (factorial 1) 1)
;;!(assertEqual (factorial 4) 24)
;;!(assertEqual (factorial 5) 120)
;;!(assertEqual (factorial 10) 3628800)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 2. Functional Tail-Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (factorial-tr $n) (factorial-tr-helper $n 1))
(= (factorial-tr-helper 0 $ac) $ac)
(= (factorial-tr-helper $n $ac) (factorial-tr-helper (- $n 1) (* $n $ac)))
;; Approach: Tail recursion with helper function
;; How it Works: It uses a helper function with an accumulator to store the interim results.
;; This method is tail-recursive, meaning the recursive call is the last thing executed
;; by the function, which is more memory-efficient in languages and interpreters that
;; support tail call optimization.
;;!(assertEqual (factorial-tr 0) 1)
;;!(assertEqual (factorial-tr 1) 1)
;;!(assertEqual (factorial-tr 4) 24)
;;!(assertEqual (factorial-tr 5) 120)
;;!(assertEqual (factorial-tr 10) 3628800)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 3. Functional Factorial using Accumulators
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (factorial-ac $n) (factorial-ac-helper $n 1))
(= (factorial-ac-helper 0 $ac) $ac)
(= (factorial-ac-helper $n $ac) (factorial-ac-helper (- $n 1) (* $n $ac)))
;; Approach: Accumulator-based recursion
;; How it Works: This approach is very similar to the tail-recursive one.
;; It uses an accumulator to keep track of the intermediate product.
;; It is also a form of tail recursion.
;;!(assertEqual (factorial-ac 0) 1)
;;!(assertEqual (factorial-ac 1) 1)
;;!(assertEqual (factorial-ac 4) 24)
;;!(assertEqual (factorial-ac 5) 120)
;;!(assertEqual (factorial-ac 10) 3628800)















(= (is $x $x) True)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; logical recursive factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (practorial 0 1) True)
(= (practorial $n $Out)
   (and (> $n 0)
      (is $f2 (- $n 1))
      (practorial $f2 $r)
      (is $Out (* $n $r))))

;;!(assertTrue (practorial 0 1))
;;!(assertTrue (practorial 1 1))
;;!(assertTrue (practorial 4 24))
;;!(assertTrue (practorial 5 120))
;;!(assertTrue (practorial 10) 3628800)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; logical tail-recursive factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (practorial-tr $f $Out) (practorial-tr-helper $f 1 $Out))
(= (practorial-tr-helper 0 $h $h) True)
(= (practorial-tr-helper $n1 $f $Out)
   (and (> $n1 0)
      (is $x (* $f $n1))
      (is $f2 (- $n1 1))
      (practorial-tr-helper $f2 $x $Out)))

;;!(assertTrue (practorial-tr 0 1))
;;!(assertTrue (practorial-tr 1 1))
;;!(assertTrue (practorial-tr 4 24))
;;!(assertTrue (practorial-tr 5 120))
;;!(assertTrue (practorial-tr 10) 3628800)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; logical factorial using accumulators
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (practorial-ac $f $Out) (practorial-ac-helper $f 1 $Out))
(= (practorial-ac-helper 0 $Out $Out) True)
(= (practorial-ac-helper $n $f $Out)
   (and (> $n 0)
      (is $x (* $f $n))
      (is $f1 (- $n 1))
      (practorial-ac-helper $f1 $x $Out)))

;;!(assertTrue (practorial-ac 0 1))
;;!(assertTrue (practorial-ac 1 1))
;;!(assertTrue (practorial-ac 4 24))
;;!(assertTrue (practorial-ac 5 120))
;;!(assertTrue (practorial-ac 10) 3628800)

