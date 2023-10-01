;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enhanced Unit Test File in MeTTa Language
;;
;; This file encompasses a set of tests designed to compare various
;; implementations of factorial functions in the MeTTa language. Each implementation
;; is distinguished by its approach and execution paradigm, either functional,
;; recursive, logical, or utilizing MeTTa States.
;;
;; The main objective is to evaluate the performance, memory efficiency, and correctness
;; of each implementation, enabling developers to gain insights into the nuances and
;; trade-offs associated with different methodologies within the MeTTa environment.
;;
;;
;;   Below are the comparisons found in this file:
;;
;; 1.  Functional Recursive Factorial:
;;    - A standard recursive approach, showcasing the impact of compilation on
;;      performance and efficiency, particularly focusing on stack frame creation
;;      for each recursive call.
;;
;; 2.  Functional Tail-Recursive Factorial:
;;    - Utilizes a tail-recursive approach with a helper function and accumulator,
;;      highlighting the memory efficiency in environments supporting tail call optimization.
;;
;; 3.  Pat Hammer’s Functional Factorial using MeTTa States:
;;    - These implementations provide insights into the utilization of MeTTa States
;;      in both c and interpreted forms, and they are insightful for assessing
;;      performance variations across different MeTTa interpreters.
;;
;; 4. Logical Recursive Factorial:
;;    - This logical approach to factorial calculation employs recursive logical conditions
;;      and assertions to validate the correctness of implementation.
;;
;; 5. Logical Tail-Recursive Factorial:
;;    - Similar to logical recursive factorial but employs tail recursion to optimize
;;      memory usage.
;;
;;
;; These comparisons serve to illustrate the nuances, benefits, and trade-offs associated
;; with each approach, offering insights into efficiency, readability, and performance in
;; different MeTTa environments.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Initial Compiler Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile full)   ; Activate full compilation unless default was set to off
!(pragma! tabling false)   ; Enable internal memoization to optimize performance
!(pragma! trace-on-pass False)
!(pragma! trace-on-fail False)
!(pragma! trace-on-overflow True)
!(pragma! trace-on-error True)
; !(pragma! trace-length 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interpreted Functional Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile false)  ; Switch to interpreted mode for this section

(: fact-f-r-i (-> Number Number))  ; Declaring the interpreted recursive factorial function

(= (fact-f-r-i 0) 1)  ; Establishing the base case for 0
(= (fact-f-r-i $n)   ; Establishing the recursive case for n > 0
   (if (> $n 0)
       (* $n (fact-f-r-i (- $n 1)))  ; Recursive multiplication for n * (n - 1)!
   )
)

;; fact-f-r-i provides insights into the differences in performance
;; between interpreted and c modes, focusing on stack management
;; in recursive scenarios.

;; Interpreted Recursive Factorial Test Cases
;; !(assertEqual (fact-f-r-i 0) 1)
;; !(assertEqual (fact-f-r-i 1) 1)
!(assertEqual 120 (fact-f-r-i 5))


!(pragma! stack-max 100)   ; Reset stack settings post testing
!(pragma! compile full)    ; Revert to compiled mode post testing

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Compiled Functional Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(: fact-f-r-c (-> Number Number))  ; Declaring the c recursive factorial function

(= (fact-f-r-c 0) 1)  ; Establishing the base case for 0
(= (fact-f-r-c $n)   ; Establishing the recursive case for n > 0
   (if (> $n 0)
       (* $n (fact-f-r-c (- $n 1)))  ; Recursive multiplication for n * (n - 1)!
   )
)

;; fact-f-r-c computes factorials using standard recursion. While intuitive,
;; it can lead to stack overflow for large input due to the creation of multiple
;; stack frames for each recursive call.

;; Compiled Recursive Factorial Test Cases
;; !(assertEqual (fact-f-r-c 0) 1)
;; !(assertEqual (fact-f-r-c 1) 1)
!(assertEqual 120 (fact-f-r-c 5))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Compiled Functional Tail-Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! tabling false)  ; Disable tabling for tail-recursive functions due to optimization

(: fact-f-t-c (-> Number Number))  ; Declaring the main function for tail-recursive factorial

(= (fact-f-t-c $n)
   (fact-f-t-c-helper $n 1)  ; Call to helper function with accumulator
)

(: fact-f-t-c-helper (-> Number Number Number))  ; Declaring the helper function for tail-recursive factorial

(= (fact-f-t-c-helper 0 $ac) $ac)  ; Establishing the base case with accumulator as result
(= (fact-f-t-c-helper $n $ac)    ; Establishing the recursive case
   (if (> $n 0)
       (fact-f-t-c-helper (- $n 1) (* $n $ac))  ; Accumulating results in a tail-recursive manner
   )
)

;; fact-f-t-c and its helper manage stack frames efficiently through tail recursion,
;; optimizing memory usage in environments supporting tail call optimization.

;; Compiled Tail-Recursive Factorial Test Cases
;; !(assertEqual (fact-f-t-c 0) 1)
;; !(assertEqual (fact-f-t-c 1) 1)
!(assertEqual 120 (fact-f-t-c 5))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interpreted Functional Tail-Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile false)  ; Switch to interpreted mode for this section

(: fact-f-t-i (-> Number Number))  ; Declaring the main function for interpreted tail-recursive factorial

(= (fact-f-t-i $n)
   (fact-f-t-i-helper $n 1)  ; Call to helper function with accumulator
)

(: fact-f-t-i-helper (-> Number Number Number))  ; Declaring the helper function for interpreted tail-recursive factorial

(= (fact-f-t-i-helper 0 $ac) $ac)  ; Establishing the base case with accumulator as result
(= (fact-f-t-i-helper $n $ac)    ; Establishing the recursive case
   (if (> $n 0)
       (fact-f-t-i-helper (- $n 1) (* $n $ac))  ; Accumulating results in a tail-recursive manner
   )
)

;; fact-f-t-i and its helper demonstrate the efficiency of tail-recursive factorials
;; in interpreted mode, emphasizing on memory usage optimization.

;; Interpreted Tail-Recursive Factorial Test Cases
;; !(assertEqual (fact-f-t-i 0) 1)
;; !(assertEqual (fact-f-t-i 1) 1)
!(assertEqual 120 (fact-f-t-i 5))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Interpreted version of Pat Hammer''s Functional Factorial using MeTTa States
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile false)
!(bind! &factorialstate-i (new-state 1))
(= (fast-i-factorial $K)
   (if (> $K 1)
       (nop (superpose ((change-state! &factorialstate-i (* $K (get-state &factorialstate-i)))
                        (fast-i-factorial (- $K 1)))))))
(= (factorial-fast-i $N)
   (superpose ((nop (change-state! &factorialstate-i 1))
                (fast-i-factorial $N)
                (get-state &factorialstate-i))))


;; !(assertEqual (factorial-fast-i 0) 1)
;; !(assertEqual (factorial-fast-i 1) 1)
!(assertEqual 120 (factorial-fast-i 5))



;; fast-i-factorial and fast-c-factorial use MeTTa States to calculate factorial
;; numbers efficiently by using a mutable state variable to accumulate the product, making them
;; memory efficient for both interpreted and c modes.

;; Factorial Using MeTTa States Test Cases
;; !(assertEqual (fast-i-factorial 0) nil) ; Expects nil as fast-i-factorial does not return a value, modifies state instead
;; !(assertEqual (get-state &factorialstate-i) 1) ; Check state for the factorial of 5
;; !(assertEqual (fast-i-factorial 5) nil) ; Expects nil as fast-i-factorial does not return a value, modifies state instead
;; !(assertEqual (get-state &factorialstate-i) 120) ; Check state for the factorial of 10


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Compiled version of Pat Hammer''s Functional Factorial using MeTTa States
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile full) ; Switch to compiled mode for this section

!(bind! &factorialstate-c (new-state 1)) ; Binding a new state for the c version

(= (fast-c-factorial $K)
   (if (> $K 1)
       (nop (superpose ((change-state! &factorialstate-c (* $K (get-state &factorialstate-c)))
                        (fast-c-factorial (- $K 1)))))))

(= (factorial-fast-c $N)
   (superpose ((nop (change-state! &factorialstate-c 1))
               (fast-c-factorial $N)
               (get-state &factorialstate-c))))

;; !(assertEqual (factorial-fast-c 0) 1)
;; !(assertEqual (factorial-fast-c 1) 1)
!(assertEqual 120 (factorial-fast-c 5))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Factorial Using MeTTa States Test Cases
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; !(assertEqual (fast-c-factorial 0) nil) ; Expects nil as fast-c-factorial does not return a value, modifies state instead
;; !(assertEqual (get-state &factorialstate-c) 1) ; Check state for the factorial of 5
;; !(assertEqual (fast-c-factorial 5) nil) ; Expects nil as fast-c-factorial does not return a value, modifies state instead
;; !(assertEqual (get-state &factorialstate-c) 120) ; Check state for the factorial of 10



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Compiled Logical Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile full)  ; Switch to compiled mode for this section

(: is (-> Number Expression))

(= (is $x $x) True)  ; Identity predicate

(: fact-p-r-c (-> Number Number Bool))

(= (fact-p-r-c 0 1) True)  ; Base case
(= (fact-p-r-c $n $Out)
   (and (> $n 0)
      (is $f2 (- $n 1))
      (fact-p-r-c $f2 $r)   ; Logical recursion
      (is $Out (* $n $r))     ; Predicate to check output
))

;; !(assertEqual (fact-p-r-c 0 1) True)
;; !(assertEqual (fact-p-r-c 1 1) True)
!(assertEqual 120 (fact-p-r-c 5))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Compiled Logical Tail-Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (fact-p-t-c $f $Out) (fact-p-t-c-helper $f 1 $Out))
(= (fact-p-t-c-helper 0 $h $h    ) True)  ; Base case
(= (fact-p-t-c-helper $n1 $f $Out)
   (and (> $n1 0)
      (is $x (* $f $n1))
      (is $f2 (- $n1 1))
      (fact-p-t-c-helper $f2 $x $Out)  ; Tail-recursive logic
))

;; !(assertEqual (fact-p-t-c 0 1) True)
;; !(assertEqual (fact-p-t-c 1 1) True)
!(assertEqual (fact-p-t-c 5 120) True)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interpreted Logical Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(pragma! compile false)  ; Switch to interpreted mode for this section

(: fact-p-r-i (-> Number Number Bool))

(= (fact-p-r-i 0 1) True)  ; Base case
(= (fact-p-r-i $n $Out)
   (and (> $n 0)
      (is $f2 (- $n 1))
      (fact-p-r-i $f2 $r)   ; Logical recursion
      (is $Out (* $n $r))     ; Predicate to check output
))
;; !(assertEqual (fact-p-r-i 0 1) True)
;; !(assertEqual (fact-p-r-i 1 1) True)
!(assertEqual (fact-p-r-i 5 120) True)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interpreted Logical Tail-Recursive Factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (fact-p-t-i $f $Out) (fact-p-t-i-helper $f 1 $Out))
(= (fact-p-t-i-helper 0 $h $h) True)  ; Base case
(= (fact-p-t-i-helper $n1 $f $Out)
   (and (> $n1 0)
      (is $x (* $f $n1))
      (is $f2 (- $n1 1))
      (fact-p-t-i-helper $f2 $x $Out)  ; Tail-recursive logic
))

;; !(assertEqual (fact-p-t-i 0 1) True)
;; !(assertEqual (fact-p-t-i 1 1) True)
!(assertEqual (fact-p-t-i 5 120) True)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Test Cases
;; Each test case is asserting the equality of the output of a factorial function
;; for a given input (30) with the expected output. The expected output for the
;; factorial of 30 is obtained from a predefined function or variable `fact30`.
;;
;; The True or False in the assertions is confirming the correctness of the implementation.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Testing Functional Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-f-r-c 30) 265252859812191058636308480000000)

;; Testing Functional Tail-Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-f-t-c 30) 265252859812191058636308480000000)

;; Testing Logical Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-p-r-c 30 265252859812191058636308480000000) True)

;; Testing Logical Tail-Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-p-t-c 30) 265252859812191058636308480000000) True)

;; Testing Logical Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-p-r-i 30 265252859812191058636308480000000) True)

;; Testing Logical Tail-Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-p-t-i 30) 265252859812191058636308480000000) True)

;; Testing Functional Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-f-r-i 30) 265252859812191058636308480000000)

;; Testing Functional Tail-Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-f-t-i 30) 265252859812191058636308480000000)

;; Testing MeTTa States Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (factorial-fast-i 30) 265252859812191058636308480000000)

;; Testing MeTTa States Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (factorial-fast-c 30) 265252859812191058636308480000000)

:- prolog.

!(repl!)

!(halt 7)

(= (fact666) 1010632056840781493390822708129876451757582398324145411340420807357413802103697022989202806801491012040989802203557527039339704057130729302834542423840165856428740661530297972410682828699397176884342513509493787480774903493389255262878341761883261899426484944657161693131380311117619573051526423320389641805410816067607893067483259816815364609828668662748110385603657973284604842078094141556427708745345100598829488472505949071967727270911965060885209294340665506480226426083357901503097781140832497013738079112777615719116203317542199999489227144752667085796752482688850461263732284539176142365823973696764537603278769322286708855475069835681643710846140569769330065775414413083501043659572299454446517242824002140555140464296291001901438414675730552964914569269734038500764140551143642836128613304734147348086095123859660926788460671181469216252213374650499557831741950594827147225699896414088694251261045196672567495532228826719381606116974003112642111561332573503212960729711781993903877416394381718464765527575014252129040283236963922624344456975024058167368431809068544577258472983979437818072648213608650098749369761056961203791265363665664696802245199962040041544438210327210476982203348458596093079296569561267409473914124132102055811493736199668788534872321705360511305248710796441479213354542583576076596250213454667968837996023273163069094700429467106663925419581193136339860545658673623955231932399404809404108767232000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)

!(pragma! stack-max 1000) ; Adjust stack size for full recursion

;; Testing Functional Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-f-r-i 666) (fact666))

;; Testing Functional Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-f-r-c 666) (fact666))

;; Testing Functional Tail-Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-f-t-c 666) (fact666))

;; Testing Functional Tail-Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-f-t-i 666) (fact666))

;; Testing MeTTa States Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (factorial-fast-i 666) (fact666))

;; Testing MeTTa States Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (factorial-fast-c 666) (fact666))

;; Testing Logical Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-p-r-c 666 (fact666)) True)

;; Testing Logical Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-p-r-i 666 (fact666)) True)

;; Testing Logical Tail-Recursive Factorial in Compiled Mode
!(pragma! compile full)
!(assertEqual (fact-p-t-c 666) (fact666)) True)

;; Testing Logical Tail-Recursive Factorial in Interpreted Mode
!(pragma! compile false)
!(assertEqual (fact-p-t-i 666) (fact666)) True)



