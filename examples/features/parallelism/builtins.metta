;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Define a higher-order function `sequential` for sequential processing.
; (From Pat Hammer)
; Operation: Utilizes `superpose` to ensure each element in a list is processed one after the other.
; Usage: Useful when order of execution is critical and operations are not independent.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define higher-order function `sequential`
(:  sequential (-> Atom $t))
(= (sequential $lst) (superpose $lst))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Test sequential nature of `concurrent-and!`
; Operation: Similar to the first function but uses `concurrent-and!`.
; Key Difference: Each task must complete before the next one begins.
; Expectation: Total time should be more than 19 seconds, as tasks run sequentially.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(let $start (cputime!)  ; Store the start CPU time in $start
      (sequential  ; Begin a sequential block
           (concurrent-and! (between 1 4 $_)  ; For each number between 1 and 4
                  (sleep! 5)  ; Sleep for 5 seconds
                 (threads 4))  ; Use 4 separate threads for the operation
       (> (- (cputime!) $start) 19))))  ; Check if the total time taken is more than 19 seconds



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Test parallel execution with `concurrent-forall!`
; Operation: Launches a sleep task concurrently across 4 threads.
; Expectation: Total time should be less than 10 seconds, indicating parallel execution.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(let $start (cputime!)  ; Store the start CPU time in $start
    (sequential  ; Begin a sequential block
         (concurrent-forall! (between 1 4 $_)  ; For each number between 1 and 4
                (sleep 5)  ; Sleep for 5 seconds
               (threads 4))  ; Use 4 separate threads for the operation
     (< (- (cputime!) $start) 10))))  ; Check if the total time taken is less than 10 seconds




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Define predicate `is-even` to check if a number is even.
; Operation: Uses modulo operator to determine if a number is divisible by 2 without remainder.
; Usage: General utility function for checking evenness of numbers.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define `is-even` predicate
(: is-even (-> Number Bool))
(= (is-even $X) (== (% $X 2) 0))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Define predicate `incr` to increment a monadic state variable.
; Operation: Increases state by 1 and retrieves the updated state, ensuring sequential processing.
; Usage: Useful for state management in scenarios where order of state change is important.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define `incr` predicate
(:  incr (-> (MonadicState Number) Number))
(= (incr $var)
     (sequential
           ((do (change-state! $var (+ 1 (get-state $var))))
               (get-state $var))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Demonstrate concurrency with shared state references
; Operation: Concurrently processes numbers, incrementing `$odds` or `$evens` state based on numbers evenness.
; Expectation: Efficient parallel processing of a range of numbers, updating shared states.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(let*
    (($Options (threads 4)) ; Use 4 threads
     ($odds (new-state 0))
     ($evens (new-state 0)))
     (sequential
      (concurrent-forall! (between! 1 100 $X) (if (is-even $X) (incr $evens) (incr $odds)) $Options)
       (print! ("odds=" (get-state $odds) " evens="  (get-state $evens))))))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Demonstrate concurrency with global bind states
; Operation: Uses `concurrent-forall!` to process numbers, updating global bind states based on numbers evenness.
; Expectation: Parallel processing of a number range, efficiently updating global states.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(sequential
  ((bind! &odds (new-state 0))
   (bind! &evens (new-state 0))
    (concurrent-forall! (between! 1 100 $X) (if (is-even $X) (incr &evens) (incr &odds)))
    (print! ( "odds=" (get-state &odds) " evens="  (get-state &evens)))))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Define `factorial` function for arithmetic operation.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(: factorial (-> Number Number))
(= (factorial $n) (if (== $n 0) 1 (* $n (factorial (- $n 1)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Demonstrate parallel processing of a list using `concurrent-maplist`.
; Operation: Applies `factorial` to each number in a list concurrently.
; Expectation: Efficient doubling of each element in the list in parallel.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(concurrent-maplist! factorial (1 2 3 4 5 6 7 8 9))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Purpose: Define a higher-order function `hyperpose` for concurrent evaluation.
; Operation: Applies `concurrent-maplist!` to a list for parallel evaluation of each element.
; Usage: Can be used to speed up evaluation of independent operations.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define higher-order function `hyperpose`
(:  hyperpose (-> Atom $t))
(= (hyperpose $lst) (concurrent-maplist! eval $lst))


;!(let $body
;    (collapse (factorial (superpose (range 1 10))))
;    (hyperpose $body))

!(hyperpose ((factorial 1) (factorial 2) (factorial 3) (factorial 4)
                       (factorial 5) (factorial 6) (factorial 7) (factorial 8)
		       (factorial 9)))


