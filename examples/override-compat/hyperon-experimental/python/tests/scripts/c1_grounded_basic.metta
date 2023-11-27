;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; The standard library contains a few basic grounded operations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Implementation of grounded arithmetics may change location,
; but these examples should work
!(assertEqualToResult
  (+ 2 (* 3 5.5))
  (18.5))

!(assertEqualToResult
  (- 8 (/ 4 6.4))
  (7.375))

!(assertEqualToResult
  (% 21 17)
  (4))

!(assertEqualToResult
  (< 4 (+ 2 (* 3 5)))
  (True))

!(assertEqualToResult
  (and (> 4 2) (< 4 3))
  (False))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Currently, `ln` is not a grounded symbol.
; If we don't define its type, then its application
; will not be refused, but it will be unreduced.
; Currently, its grounded argument will be reduced.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(assertEqualToResult
  (ln (+ 2 2))
  ((ln 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Similarly, passing ordinary symbols to grounded
; operations will not cause errors and simply remain
; unreduced, if it type-checks.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(assertEqualToResult
  (> 4 (+ ln 2))
  ((> 4 (+ ln 2))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This will also remain unreduced unless
; grounded operations can do pattern matching
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(assertEqualToResult
  (> 4 (+ $x 2))
  ((> 4 (+ $x 2))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; `==` is now implemented to work with both grounded and
; symbolic atoms (while remaining a grounded operation)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(assertEqualToResult
  (== 4 (+ 2 2))
  (True))
!(assertEqualToResult
  (== 2 3)
  (False))
!(assertEqualToResult
  (== (A B) (A B))
  (True))
!(assertEqualToResult
  (== (A B) (A (B C)))
  (False))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Unlike `<` or `>`, `==` will not remain unreduced if one
; of its arguments is grounded, while another is not.
; Instead, it will return `False`
!(assertEqualToResult
  (== 4 (+ ln 2))
  (False))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Grounded symbols have predefined types.
; Evaluation of ill-typed expressions produces
; a error expression
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(assertEqualToResult
  (+ 2 "String")
  ((Error "String" BadType)))

; Custom symbols as arguments of grounded operations
; work similarly
(: ln LN)
!(assertEqualToResult
  (== 4 (+ ln 2))
  ((Error ln BadType)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Custom functions over grounded functions behave ordinarily
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (sqr $x) (* $x $x))
!(assertEqualToResult
  (sqr 4)
  (16))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Evaluation of grounded operations over nondeterministic
; expressions work in the same way as of custom symbols
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!(assertEqual
  (+ (superpose (1 2 3)) 1)
  (superpose (2 3 4)))

(= (bin) 0)
(= (bin) 1)
!(assertEqualToResult
  (+ 1 (bin))
  (1 2))

!(assertEqualToResult
  (let $x (+ 2 3)
    (* $x $x))
  (25))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; basic recursion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (fact $n) (if (== $n 0) 1 (* (fact (- $n 1)) $n)))
!(assertEqual (fact 5) 120)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Grounded symbols work with non-determinism based "reasoning"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Uses the grounded call `bin`, which returns a list of
; both possible bits (0, 1), to recursively construct all possible
; binary lists of length `$n`, appending bits one by one.
(= (gen $n)
   (if (> $n 0)
       (:: (bin) (gen (- $n 1)))
       nil))
; Note: `::` is just a custom symbol, used here as a constructor,
; but any other symbol can be used for this.

; Calculates the sum of element-wise products between two lists
(= (subsum nil nil) 0)
(= (subsum (:: $x $xs) (:: $b $bs))
   (+ (* $x $b)
      (subsum $xs $bs)))

; Non-determinism "reasoning":
; Among all 3-bit binary lists, return the one whose `subsum`
; with (:: 3 (:: 7 (:: 5 nil))) equals 8, or `nop` if not found
; (`superpose` is used to return an empty result acting as termination
; of evaluation of the branch)
!(assertEqualToResult
  (let $t (gen 3)
    (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $t) 8) $t (superpose ())))
  ((:: 1 (:: 0 (:: 1 nil)))))



; (`nop` is a grounded function that consumes its arguments and returns nothing)
;!(assertEqualToResult
;  (let $t (gen 3)
;    (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $t) 8) $t (nop)))
;  ((:: 1 (:: 0 (:: 1 nil)))))

;!(let $t (gen 3)
;    (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $t) 8) $t (nop)))


;!(assertEqualToResult
;  (let $t (gen 3)
;    (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $t) 8) $t (nop)))
;  (() () (:: 1 (:: 0 (:: 1 nil))) () () () () ()))

!(assertEqualToResult
  (let $t (gen 3)
    (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $t) 8) $t (nop)))
  ((:: 1 (:: 0 (:: 1 nil)))))


; ensure we only return one result
!(assertEqualToResult (fact 5) (120))

!(pragma! trace-on-fail True)
!(pragma! trace-on-pass True)
!(pragma! trace-on-eval True)
!(pragma! trace-on-exec True)

; ensure we only return one result
!(assertEqualToResult ((fact 5)) ((120)))

!(pragma! traclen 1000)
!(assertEqualToResult
  (gen 3)
	((:: 0 (:: 0 (:: 0 nil)))
	 (:: 0 (:: 0 (:: 1 nil)))
	 (:: 0 (:: 1 (:: 0 nil)))
	 (:: 0 (:: 1 (:: 1 nil)))
	 (:: 1 (:: 0 (:: 0 nil)))
	 (:: 1 (:: 0 (:: 1 nil)))
	 (:: 1 (:: 1 (:: 0 nil)))
	 (:: 1 (:: 1 (:: 1 nil)))))

!(assertEqualToResult (bin) (0 1))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MeTTa allows to use a separate knowledge base (Space) &kb
; to accumulate inferred knowledge
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Bind &kb to a new empty Space
!(bind! &kb (new-space))

; Some knowledge
(= (frog $x)
   (and (croaks $x)
        (eat_flies $x)))
(= (croaks Fritz) True)
(= (eat_flies Fritz) True)
(= (croaks Sam) True)
(= (eat_flies Sam) True)
(= (green $x)
   (frog $x))

; Define conditional
(: ift (-> Bool Atom Atom))
(= (ift True $then) $then)

; For anything that is green, assert it is Green in &kb
; There should be two green things
!(assertEqualToResult
  (ift (green $x)
       (add-atom &kb (Green $x)))
  (() ()))

; Retrieve the inferred Green things: Fritz and Sam.
!(assertEqualToResult
  (match &kb (Green $x) $x)
  (Fritz Sam))


!(assertEqualToResult
  (ift (green $x)
      (add-atom &kb (Green $x)))
   ((Green Fritz) (Green Sam)))

; Should not see Tom ?
(Green Tom)


!(assertEqualToResult
  (ift (green $x)
      (add-atom &kb (Green $x)))
   ((Green Fritz) (Green Sam)))
   

!(assertEqualToResult
   (let $x (+ 2 3)
	(* $x $x)) (25))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MeTTa provides proper encapsulated state manipulation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; scoping doesn't conflict between let bound variables and state atom types.
!(assertEqual
  (let $x (new-state 1)
     (change-state! $x (+ (get-state $x) 1)))
  (new-state 2))

; Checking that there is no conflict between variable names in
; let-expression and type definition of new-state
!(assertEqual
   (let $tnso (new-state 1) $tnso)
   (new-state 1))
   
; FIXME: doesn't work as for 25 May 2023
!(get-state (let $x (new-state 1) $x))
