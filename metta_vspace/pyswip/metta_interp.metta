
  (encoding iso-latin-1)
  (set-prolog-flag backtrace True)
  (set-prolog-flag backtrace-depth 100)
  (set-prolog-flag backtrace-goal-dept 100)
  (set-prolog-flag backtrace-show-lines True)
  (set-prolog-flag write-attributes portray)
;:- set_MeTTa_flag(debug_on_interrupt,true).
;:- set_MeTTa_flag(debug_on_error,true).
;:- set_MeTTa_flag(compile_meta_arguments,control).

  (nb-setval cmt-override 
    (lse ;   !("   ") ))

  (= 
    (is-compiling) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member $E $ArgV) 
      (or 
        (== $E qcompile-mettalog) 
        (== $E qsave-program)) 
      (set-det)))

  (= 
    (is-compiled) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member -x $ArgV) 
      (set-det)))
  (= 
    (is-compiled) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (not (member swipl $ArgV)) 
      (set-det)))

  (= 
    (is-converting) 
    (, 
      (nb-current convert True) 
      (set-det)))
  (= 
    (is-converting) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --convert $ArgV) 
      (set-det)))

  (set-prolog-flag debug-on-interrupt True)


  (= 
    (is-compat) 
    (, 
      (nb-current compat True) 
      (set-det)))
  (= 
    (is-compat) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --compat $ArgV) 
      (set-det)))


  (= 
    (is-mettalog) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --log $ArgV) 
      (set-det)))


  (nodebug (metta trace-on-eval))
; is_compatio:- !,fail.

  (= 
    (is-compatio) 
    (notrace is-compatio0))

  (= 
    (is-compatio0) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --log $ArgV) 
      (set-det) 
      (fail)))
  (= 
    (is-compatio0) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --test $ArgV) 
      (set-det) 
      (fail)))
  (= 
    (is-compatio0) 
    (set-det))
  (= 
    (is-compatio0) 
    (, 
      (nb-current compatio True) 
      (set-det)))
  (= 
    (is-compatio0) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --compatio $ArgV) 
      (set-det)))
  (= 
    (is-compatio0) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --compatio=true $ArgV) 
      (set-det)))
;is_compatio0:- is_html,!,fail.
;is_compatio0:- is_testing,!,fail.


  (= 
    (is-synthing-unit-tests) 
    (notrace is-synthing-unit-tests0))

  (= 
    (is-synthing-unit-tests0) 
    (is-testing))
; is_synthing_unit_tests0:- is_compatio,!,fail.


  (= 
    (is-testing) 
    (, 
      (nb-current test True) 
      (set-det)))
  (= 
    (is-testing) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --test $ArgV) 
      (set-det)))
;is_testing:- option_value('test','True'),!.


  (ensure-loaded metta-printer)


  (= 
    (is-html) 
    (, 
      (nb-current html True) 
      (set-det)))
  (= 
    (is-html) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member --html $ArgV) 
      (set-det)))
;is_html:- option_value('html','True'),!.






  (dynamic (/ original-user-output 1))
  (if-then-else 
    (original-user-output $_) True 
    (, 
      (current-output $Out) 
      (asserta (original-user-output $Out))))

  (= 
    (unnullify-output) 
    (, 
      (original-user-output $MFS) 
      (set-prolog-IO user-input $MFS $MFS)))


  (= 
    (null-output $MFS) 
    (, 
      (use-module (library memfile)) 
      (new-memory-file $MF) 
      (open-memory-file $MF append $MFS)))

  (dynamic (/ null-user-output 1))
  (if-then-else 
    (null-user-output $_) True 
    (, 
      (null-output $MFS) 
      (asserta (null-user-output $MFS))))

  (= 
    (nullify-output) 
    (, 
      (null-user-output $MFS) 
      (set-prolog-IO user-input $MFS $MFS)))


  (= 
    (set-output-stream) 
    (, 
      (is-mettalog) 
      (set-det)))
  (= 
    (set-output-stream) 
    (if-then-else is-compatio nullify-output unnullify-output))
;:- nullify_output.

  (set-output-stream)


  (= 
    (show-os-argv) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (show-os-argv) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (write '; libswipl: ') 
      (writeln $ArgV)))

  (= 
    (is-pyswip) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member ./ $ArgV)))

  (multifile (/ is-metta-data-functor 1))
  (dynamic (/ is-metta-data-functor 1))
  (multifile (/ is-nb-space 1))
  (dynamic (/ is-nb-space 1))
;:- '$set_source_module'('user').
  (use-module (library filesex))
  (use-module (library system))
  (use-module (library shell))
;:- use_module(library(tabling)).

  (nb-setval self-space &self)

  (= 
    (current-self $Self) 
    (if-then-else 
      (, 
        (nb-current self-space $Self) 
        (\== $Self Nil)) True 
      (= $Self &self)))

  (nb-setval repl-mode +)

;:- set_stream(user_input,tty(true)).
  (use-module (library readline))
;:- use_module(library(editline)).
  (set-prolog-flag encoding iso-latin-1)
  (set-prolog-flag encoding utf8)
;:- set_output(user_error).
;:- set_MeTTa_flag(encoding,octet).


  (ensure-loaded metta-compiler)
  (ensure-loaded metta-convert)
  (ensure-loaded metta-types)
  (include metta-data)
  (ensure-loaded metta-space)
  (ensure-loaded metta-eval)

  (= 
    (option_value_def  prolog false) True)/*
Now PASSING NARS.TEC:\opt\logicmoo_workspace\packs_sys\logicmoo_opencog\MeTTa\vspace-metta\metta_vspace\pyswip\metta_interp.pl
C:\opt\logicmoo_workspace\packs_sys\logicmoo_opencog\MeTTa\vspace-metta\metta_vspace\pyswip1\metta_interp.pl
STS1.01)
Now PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.08)
Now PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.14)
Now PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.15)
Now PASSING TEST-SCRIPTS.C1-GROUNDED-BASIC.15)
Now PASSING TEST-SCRIPTS.E2-STATES.08)
PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.02)
PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.07)
PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.09)
PASSING TEST-SCRIPTS.B5-TYPES-PRELIM.11)
PASSING TEST-SCRIPTS.C1-GROUNDED-BASIC.14)
PASSING TEST-SCRIPTS.E2-STATES.07)
-----------------------------------------
FAILING TEST-SCRIPTS.D5-AUTO-TYPES.01)
Now FAILING TEST-SCRIPTS.00-LANG-CASE.03)
Now FAILING TEST-SCRIPTS.B5-TYPES-PRELIM.19)
Now FAILING TEST-SCRIPTS.C1-GROUNDED-BASIC.20)

*/
;option_value_def('repl',auto).

  (= 
    (option_value_def  compat auto) True)
  (= 
    (option_value_def  compatio true) True)
;option_value_def('compatio',false).
  (= 
    (option_value_def  compile false) True)
;option_value_def('compile',true).
;option_value_def('compile',full).
  (= 
    (option_value_def  tabling true) True)
  (= 
    (option_value_def  optimize true) True)
  (= 
    (option_value_def  no_repeats false) True)
  (= 
    (option_value_def  time true) True)
  (= 
    (option_value_def  test false) True)
  (= 
    (option_value_def  html false) True)
  (= 
    (option_value_def  python false) True)
;option_value_def('halt',false).
  (= 
    (option_value_def  doing_repl false) True)
  (= 
    (option_value_def  test-retval false) True)
  (= 
    (option_value_def  exeout ./Sav.gitlab.MeTTaLog) True)

  (= 
    (option_value_def  synth_unit_tests false) True)

  (= 
    (option_value_def  trace-length 500) True)
  (= 
    (option_value_def  stack-max 500) True)
  (= 
    (option_value_def  trace-on-overtime 4.0) True)
  (= 
    (option_value_def  trace-on-overflow false) True)
  (= 
    (option_value_def  trace-on-error true) True)
  (= 
    (option_value_def  trace-on-exec false) True)
  (= 
    (option_value_def  trace-on-fail false) True)
  (= 
    (option_value_def  trace-on-pass false) True)


  (= 
    (option_value_def  exec true) True) ; vs skip

  (= 
    (option_value_def  trace-on-load true) True)
  (= 
    (option_value_def  load show) True)

  (= 
    (option_value_def  trace-on-eval false) True)
  (= 
    (option_value_def  eval silent) True)

  (= 
    (option_value_def  transpiler silent) True)
  (= 
    (option_value_def  result show) True)





  (= 
    (fbugio $_ $_) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (fbugio $TF $P) 
    (, 
      (set-det) 
      (ignore (, $TF (set-det) (fbug $P)))))
  (= 
    (fbugio $IO) 
    (fbugio True $IO))


  (= 
    (different-from $N $V) 
    (, 
      (not (not (option-value-def $N $V))) 
      (set-det) 
      (fail)))
  (= 
    (different-from $N $V) 
    (, 
      (not (not (nb-current $N $V))) 
      (set-det) 
      (fail)))
  (= 
    (different_from  $_ $_) True)


  (= 
    (set-option-value-interp $N $V) 
    (, 
      (atom $N) 
      (atomic-list-concat $List , $N) 
      (\= $List 
        (:: $_)) 
      (set-det) 
      (forall 
        (member $E $List) 
        (set-option-value-interp $E $V))))
  (= 
    (set-option-value-interp $N $V) 
    (, 
      (if-then-else 
        (different-from $N $V) 
        (= $Note True) 
        (= $Note False)) 
      (fbugio $Note 
        (set-option-value $N $V)) 
      (set-option-value $N $V) 
      (ignore (if-t (, (atom $N) (atom-concat trace-on- $F $N) (fbugio $Note (set-debug $F $V))) (set-debug $F $V))) 
      (ignore (if-t (, (atom $V) (is-debug-like $V $TF) (fbugio $Note (set-debug $N $TF))) (set-debug $N $TF))) 
      (set-det)))


  (= 
    (is_debug_like  trace true) True)
  (= 
    (is_debug_like  notrace false) True)
  (= 
    (is_debug_like  debug true) True)
  (= 
    (is_debug_like  nodebug false) True)
;is_debug_like(false, false).


  (= 
    (set-is-unit-test $TF) 
    (, 
      (forall 
        (option-value-def $A $B) 
        (set-option-value-interp $A $B)) 
      (set-option-value-interp trace-on-pass False) 
      (set-option-value-interp trace-on-fail False) 
      (set-option-value-interp test $TF) 
      (if-t $TF 
        (set-option-value-interp exec debug)) 
      (if-t $TF 
        (set-option-value-interp eval debug)) 
      (set-option-value-interp trace-on-exec $TF) 
      (set-option-value-interp trace-on-eval $TF) 
      (set-det)));set_option_value_interp('trace-on-load',TF),
; if_t( \+ TF , set_MeTTa_flag(debug_on_interrupt,true)),



  (= 
    (fake-notrace $G) 
    (, 
      (tracing) 
      (set-det) 
      (notrace $G)))
  (= 
    (fake-notrace $G) 
    (, 
      (set-det) 
      (once $G)))
  (= 
    (fake-notrace $G) 
    (, 
      (quietly $G) 
      (set-det)))

  (= 
    (real-notrace $G) 
    (notrace $G))

  (= 
    (user-io $G) 
    (, 
      (original-user-output $Out) 
      (current-output $COut) 
      (setup-call-cleanup 
        (set-prolog-IO user-input $Out user-error) $G 
        (set-prolog-IO user-input $COut user-error)) 
      (set-prolog-IO user-input $COut user-error)))


  (= 
    (if-compatio $G) 
    (if-t is-compatio 
      (user-io $G)))

  (= 
    (not-compat-io $G) 
    (not-compatio $G))

  (= 
    (if-compat-io $G) 
    (if-compatio $G))

  (= 
    (not-compatio $G) 
    (if-t 
      (not is-compatio) $G))


  (set-is-unit-test False)


  (= 
    (trace-on-fail) 
    (option-value trace-on-fail True))

  (= 
    (trace-on-overflow) 
    (option-value trace-on-overflow True))

  (= 
    (trace-on-pass) 
    (option-value trace-on-pass True))

  (= 
    (doing-repl) 
    (option-value doing-repl True))

  (= 
    (if-repl $Goal) 
    (if-then-else doing-repl 
      (call $Goal) True))


  (= 
    (any-floats $S) 
    (, 
      (member $E $S) 
      (float $E) 
      (set-det)))


  (= 
    (show-options-values) 
    (forall 
      (, 
        (nb-current $N $V) 
        (not (, (atom $N) (atom-concat $ $_ $N)))) 
      (write-src-nl (:: pragma! $N $V))))


  (, 
    (prolog-load-context source $File) 
    (add-atom  &self 
      (interpreter_source_file  $File)))


; ============================
; ;;;; Arithmetic Operations
; ============================

; Addition
;'+'(A, B, Sum):- \+ any_floats([A, B, Sum]),!,Sum #= A+B .
;'+'(A, B, Sum):- notrace(catch_err(plus(A, B, Sum),_,fail)),!.

  (= 
    (+ $A $B $Sum) 
    (eval-H 
      (:: + $A $B) $Sum))
; Subtraction

  (= 
    (- $A $B $Sum) 
    (eval-H 
      (:: - $A $B) $Sum))
; Multiplication

  (= 
    (* $A $B $Product) 
    (eval-H 
      (:: * $A $B) $Product))
; Division

  (= 
    (/ $Dividend $Divisor $Quotient) 
    (eval-H 
      (:: / $Dividend $Divisor) $Quotient))   ;{Dividend = Quotient * Divisor}.
; Modulus

  (= 
    (mod $Dividend $Divisor $Remainder) 
    (eval-H 
      (:: mod $Dividend $Divisor) $Remainder))

  (= 
    (% $Dividend $Divisor $Remainder) 
    (eval-H 
      (:: mod $Dividend $Divisor) $Remainder))
; Exponentiation

  (= 
    (exp $Base $Exponent $Result) 
    (eval-H 
      (:: exp $Base $Exponent) $Result))
; Square Root

  (= 
    (sqrt $Number $Root) 
    (eval-H 
      (:: sqrt $Number) $Root))

; ============================
; ;;;; List Operations
; ============================
; Retrieve Head of the List

  (= 
    (car-atom $List $Head) 
    (eval-H 
      (:: car-atom $List) $Head))
; Retrieve Tail of the List

  (= 
    (cdr-atom $List $Tail) 
    (eval-H 
      (:: cdr-atom $List) $Tail))
; Construct a List

  (= 
    (Cons $Element $List 
      (Cons $Element $List)) 
    (set-det))
; Collapse List

  (= 
    (collapse $List $CollapsedList) 
    (eval-H 
      (:: collapse $List) $CollapsedList))
; Count Elements in List

  (= 
    (CountElement $List $Count) 
    (eval-H 
      (:: CountElement $List) $Count))
; Find Length of List
;'length'(List, Length):- eval_H(['length', List], Length).

; ============================
; ;;;; Nondet Opteration
; ============================
; Superpose a List

  (= 
    (superpose $List $SuperposedList) 
    (eval-H 
      (:: superpose $List) $SuperposedList))

; ============================
; ;;;; Testing
; ============================

; `assertEqual` Predicate
; This predicate is used for asserting that the Expected value is equal to the Actual value.
; Expected: The value that is expected.
; Actual: The value that is being checked against the Expected value.
; Result: The result of the evaluation of the equality.
; Example: `assertEqual(5, 5, Result).` would succeed, setting Result to true (or some success indicator).
;'assertEqual'(Expected, Actual, Result):- use_metta_compiler,!,as_tf((Expected=Actual),Result).

  (= 
    (assertEqual $Expected $Actual $Result) 
    (, 
      (ignore (= $Expected $Actual)) 
      (eval-H 
        (:: assertEqual $Expected $Actual) $Result)))

; `assertEqualToResult` Predicate
; This predicate asserts that the Expected value is equal to the Result of evaluating Actual.
; Expected: The value that is expected.
; Actual: The expression whose evaluation is being checked against the Expected value.
; Result: The result of the evaluation of the equality.
; Example: If Actual evaluates to the Expected value, this would succeed, setting Result to true (or some success indicator).

  (= 
    (assertEqualToResult $Expected $Actual $Result) 
    (eval-H 
      (:: assertEqualToResult $Expected $Actual) $Result))

; `assertFalse` Predicate
; This predicate is used to assert that the evaluation of EvalThis is false.
; EvalThis: The expression that is being evaluated and checked for falsehood.
; Result: The result of the evaluation.
; Example: `assertFalse((1 > 2), Result).` would succeed, setting Result to true (or some success indicator), as 1 > 2 is false.

  (= 
    (assertFalse $EvalThis $Result) 
    (eval-H 
      (:: assertFalse $EvalThis) $Result))

; `assertNotEqual` Predicate
; This predicate asserts that the Expected value is not equal to the Actual value.
; Expected: The value that is expected not to match the Actual value.
; Actual: The value that is being checked against the Expected value.
; Result: The result of the evaluation of the inequality.
; Example: `assertNotEqual(5, 6, Result).` would succeed, setting Result to true (or some success indicator).

  (= 
    (assertNotEqual $Expected $Actual $Result) 
    (eval-H 
      (:: assertNotEqual $Expected $Actual) $Result))

; `assertTrue` Predicate
; This predicate is used to assert that the evaluation of EvalThis is true.
; EvalThis: The expression that is being evaluated and checked for truth.
; Result: The result of the evaluation.
; Example: `assertTrue((2 > 1), Result).` would succeed, setting Result to true (or some success indicator), as 2 > 1 is true.

  (= 
    (assertTrue $EvalThis $Result) 
    (eval-H 
      (:: assertTrue $EvalThis) $Result))

; `rtrace` Predicate
; This predicate is likely used for debugging; possibly for tracing the evaluation of Condition.
; Condition: The condition/expression being traced.
; EvalResult: The result of the evaluation of Condition.
; Example: `rtrace((2 + 2), EvalResult).` would trace the evaluation of 2 + 2 and store its result in EvalResult.

  (= 
    (rtrace $Condition $EvalResult) 
    (eval-H 
      (:: rtrace $Condition) $EvalResult))

; `time` Predicate
; This predicate is used to measure the time taken to evaluate EvalThis.
; EvalThis: The expression whose evaluation time is being measured.
; EvalResult: The result of the evaluation of EvalThis.
; Example: `time((factorial(5)), EvalResult).` would measure the time taken to evaluate factorial(5) and store its result in EvalResult.

  (= 
    (time $EvalThis $EvalResult) 
    (eval-H 
      (:: time $EvalThis) $EvalResult))

; ============================
; ;;;; Debugging, Printing and Utility Operations
; ============================
; REPL Evaluation

  (= 
    (repl! $EvalResult) 
    (eval-H 
      (:: repl!) $EvalResult))
; Condition Evaluation

  (= 
    (! $Condition $EvalResult) 
    (eval-H 
      (:: 
        (set-det) $Condition) $EvalResult))
; Import File into Environment

  (= 
    (import! $Environment $Filename $Namespace) 
    (eval-H 
      (:: import! $Environment $Filename) $Namespace))
; Evaluate Expression with Pragma

  (= 
    (pragma! $Environment $Expression $EvalValue) 
    (eval-H 
      (:: pragma! $Environment $Expression) $EvalValue))
; Print Message to Console

  (= 
    (print $Message $EvalResult) 
    (eval-H 
      (:: print $Message) $EvalResult))
; No Operation, Returns EvalResult unchanged

  (= 
    (nop $Expression $EvalResult) 
    (eval-H 
      (:: nop $Expression) $EvalResult))

; ============================
; ;;;; Variable Bindings
; ============================
; Bind Variables

  (= 
    (bind! $Environment $Variable $Value) 
    (eval-H 
      (:: bind! $Environment $Variable) $Value))
; Let binding for single variable

  (= 
    (let $Variable $Expression $Body $Result) 
    (eval-H 
      (:: let $Variable $Expression $Body) $Result))
; Sequential let binding

  (= 
    (let* $Bindings $Body $Result) 
    (eval-H 
      (:: let* $Bindings $Body) $Result))

; ============================
; ;;;; Reflection
; ============================
; Get Type of Value

  (= 
    (get-type $Value $Type) 
    (eval-H 
      (:: get-type $Value) $Type))



  (= 
    (metta-argv $Args) 
    (, 
      (current-prolog-flag metta-argv $Args) 
      (set-det)))
  (= 
    (metta-argv $Before) 
    (, 
      (current-prolog-flag os-argv $OSArgv) 
      (append $_ 
        (Cons  --args $AArgs) $OSArgv) 
      (before-arfer-dash-dash $AArgs $Before $_) 
      (set-det) 
      (set-metta-argv $Before)))

  (= 
    (argv-metta $Nth $Value) 
    (, 
      (metta-argv $Args) 
      (nth1 $Nth $Args $Value)))


  (= 
    (set-metta-argv $Before) 
    (, 
      (maplist read-argv $Before $Args) 
      (set-prolog-flag metta-argv $Args) 
      (set-det)))

  (= 
    (read-argv $AArg $Arg) 
    (, 
      (not (atom $AArg)) 
      (set-det) 
      (= $AArg $Arg)))
  (= 
    (read-argv $AArg $Arg) 
    (, 
      (atom-string $AArg $S) 
      (read-metta $S $Arg) 
      (set-det)))


  (= 
    (metta-cmd-args $Rest) 
    (, 
      (current-prolog-flag late-metta-opts $Rest) 
      (set-det)))
  (= 
    (metta-cmd-args $Rest) 
    (, 
      (current-prolog-flag os-argv $P) 
      (append $_ 
        (Cons  -- $Rest) $P) 
      (set-det)))
  (= 
    (metta-cmd-args $Rest) 
    (, 
      (current-prolog-flag argv $P) 
      (append $_ 
        (Cons  -- $Rest) $P) 
      (set-det)))
  (= 
    (metta-cmd-args $Rest) 
    (current-prolog-flag argv $Rest))


  (dynamic (/ has-run-cmd-args 0))
  (volatile (/ has-run-cmd-args 0))

  (= 
    (run-cmd-args-prescan) 
    (, 
      (has-run-cmd-args) 
      (set-det)))
  (= 
    (run-cmd-args-prescan) 
    (, 
      (add-atom  &self has_run_cmd_args) 
      (do-cmdline-load-metta prescan)))


  (= 
    (run-cmd-args) 
    (do-cmdline-load-metta execute))



  (= 
    (metta-make-hook) 
    (, 
      (loonit-reset) 
      (option-value not-a-reload True) 
      (set-det)))
  (= 
    (metta-make-hook) 
    (, 
      (metta-cmd-args $Rest) 
      (into-reload-options $Rest $Reload) 
      (do-cmdline-load-metta reload &self $Reload)))


  (multifile (with_self  (prolog) (/ make-hook 2)))
  (dynamic (with_self  (prolog) (/ make-hook 2)))

  (= 
    (with_self  
      (prolog) 
      (make-hook after $Some)) 
    (nop metta-make-hook))


  (= 
    (into_reload_options  $Reload $Reload) True)


  (= 
    (is-cmd-option $Opt $M $TF) 
    (, 
      (atom $M) 
      (atom-concat - $Opt $Flag) 
      (atom-contains $M $Flag) 
      (set-det) 
      (get-flag-value $M $FV) 
      (= $TF $FV)))


  (= 
    (get-flag-value $M $V) 
    (, 
      (atomic-list-concat 
        (:: $_ $V) = $M) 
      (set-det)))
  (= 
    (get-flag-value $M False) 
    (, 
      (atom-contains $M -no) 
      (set-det)))
  (= 
    (get_flag_value  $_ true) True)



  (ignore (, (not (prolog-load-context reloading True)) (nop (forall (option-value-def $Opt $Default) (set-option-value-interp $Opt $Default)))))

;process_option_value_def:- \+ option_value('python',false), skip(ensure_loaded(metta_python)).

  (= 
    (process-option-value-def) 
    (, 
      (option-value python load) 
      (ensure-loaded (/ (/ metta-vspace pyswip) metta-python))))
  (= process_option_value_def True)



  (= 
    (process-late-opts) 
    (forall process-option-value-def True))
  (= 
    (process-late-opts) 
    (, 
      (once (option-value html True)) 
      (set-is-unit-test True)))
;process_late_opts:- current_MeTTa_flag(os_argv,[_]),!,ignore(repl).
;process_late_opts:- halt(7).
  (= process_late_opts True)



  (= 
    (do-cmdline-load-metta $Phase) 
    (, 
      (metta-cmd-args $Rest) 
      (set-det) 
      (do-cmdline-load-metta $Phase &self $Rest)))

;do_cmdline_load_metta(Phase,_Slf,Rest):- select('--MeTTa',Rest,RRest),!,
;  set_option_value_interp('MeTTa',true),
;  set_MeTTa_flag(late_metta_opts,RRest).
  (= 
    (do-cmdline-load-metta $Phase $Self $Rest) 
    (, 
      (set-prolog-flag late-metta-opts $Rest) 
      (forall process-option-value-def True) 
      (cmdline-load-metta $Phase $Self $Rest) 
      (set-det) 
      (forall process-late-opts True)))


  (= 
    (load-metta-file $Self $Filemask) 
    (, 
      (atom-concat $_ .metta $Filemask) 
      (set-det) 
      (load-metta $Self $Filemask)))
  (= 
    (load-metta-file $Slf $Filemask) 
    (load-flybase $Filemask))


  (= 
    (catch-abort $From $Goal) 
    (catch-abort $From $Goal $Goal))
  (= 
    (catch-abort $From $TermV $Goal) 
    (catch $Goal $aborted 
      (fbug (aborted $From $TermV))))
; done


  (= 
    (before-arfer-dash-dash $Rest $Args $NewRest) 
    (if-then-else 
      (append $Args 
        (Cons  -- $NewRest) $Rest) True 
      (, 
        (= Nil $NewRest) 
        (= $Args $Rest))))


  (= 
    (cmdline-load-metta $_ $_ $Nil) 
    (, 
      (== $Nil Nil) 
      (set-det)))

  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  -- $Rest)) 
    (, 
      (set-det) 
      (cmdline-load-metta $Phase $Self $Rest)))

  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  --args $Rest)) 
    (, 
      (set-det) 
      (before-arfer-dash-dash $Rest $Before $NewRest) 
      (set-det) 
      (set-metta-argv $Before) 
      (cmdline-load-metta $Phase $Self $NewRest)))
    
  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  --repl $Rest)) 
    (, 
      (set-det) 
      (if-phase $Phase execute repl) 
      (cmdline-load-metta $Phase $Self $Rest)))
  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  $Filemask $Rest)) 
    (, 
      (atom $Filemask) 
      (not (atom-concat - $_ $Filemask)) 
      (if-phase $Phase execute 
        (cmdline-load-file $Self $Filemask)) 
      (cmdline-load-metta $Phase $Self $Rest)))        

  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  -g 
        (Cons  $M $Rest))) 
    (, 
      (set-det) 
      (if-phase $Phase execute 
        (catch-abort 
          (:: -g $M) 
          (, 
            (read-term-from-atom $M $Term Nil) 
            (ignore (call $Term))))) 
      (cmdline-load-metta $Phase $Self $Rest)))

  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  -G 
        (Cons  $Str $Rest))) 
    (, 
      (set-det) 
      (current-self $Self) 
      (if-phase $Phase execute 
        (catch-abort 
          (:: -G $Str) 
          (ignore (call-sexpr (set-det) $Self $Str $S $Out)))) 
      (cmdline-load-metta $Phase $Self $Rest)))

  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  $M $Rest)) 
    (, 
      (m-opt $M $Opt) 
      (is-cmd-option $Opt $M $TF) 
      (fbug (is-cmd-option $Phase $Opt $M $TF)) 
      (set-option-value-interp $Opt $TF) 
      (set-det) 
      (cmdline-load-metta $Phase $Self $Rest)));set_tty_color_term(true),


  (= 
    (cmdline-load-metta $Phase $Self 
      (Cons  $M $Rest)) 
    (, 
      (format ~N) 
      (fbug (unused-cmdline-option $Phase $M)) 
      (set-det) 
      (cmdline-load-metta $Phase $Self $Rest)))



  (= 
    (cmdline-load-file $Self $Filemask) 
    (, 
      (= $Src 
        (with_self  
          (user) 
          (load-metta-file $Self $Filemask))) 
      (catch-abort $Src 
        (must-det-ll (, (not-compatio (, (nl) (write ; ) (write-src $Src) (nl))) (catch-red $Src) (set-det) (flush-output)))) 
      (set-det)))


  (= 
    (if-phase $Current $Phase $Goal) 
    (ignore (, (sub-var $Current $Phase) (set-det) $Goal)))


  (= 
    (set-tty-color-term $TF) 
    (, 
      (current-output $X) 
      (set-stream $X 
        (tty $TF)) 
      (set-stream current-output 
        (tty $TF)) 
      (set-prolog-flag color-term $TF)))


  (= 
    (m-opt $M $Opt) 
    (, 
      (m-opt0 $M $Opt1) 
      (m-opt1 $Opt1 $Opt)))


  (= 
    (m-opt1 $Opt1 $Opt) 
    (atomic-list-concat 
      (Cons  $Opt $_) = $Opt1))


  (= 
    (m-opt0 $M $Opt) 
    (, 
      (atom-concat --no- $Opt $M) 
      (set-det)))
  (= 
    (m-opt0 $M $Opt) 
    (, 
      (atom-concat -- $Opt $M) 
      (set-det)))
  (= 
    (m-opt0 $M $Opt) 
    (, 
      (atom-concat - $Opt $M) 
      (set-det)))


  (set-prolog-flag occurs-check True)


  (= 
    (start-html-of $Filename) 
    (, 
      (not (tee-file $TEE_FILE)) 
      (set-det)))
  (= 
    (start-html-of $Filename) 
    (set-det))
  (= 
    (start-html-of $Filename) 
    (must-det-ll (, (= $S $_) (nop (remove-all-atoms  &self (metta_type  $S $_ $_))) (loonit-reset) (tee-file $TEE_FILE) (sformat $S 'cat /dev/null > "~w"' (:: $TEE_FILE)) (writeln (doing $S)) (ignore (shell $S)))));retractall(metta_defn(Eq,S,_,_)),
;retractall(get_metta_atom(Eq,S,_,_,_)),



  (= 
    (save-html-of $Filename) 
    (, 
      (not (tee-file $TEE_FILE)) 
      (set-det)))
  (= 
    (save-html-of $_) 
    (, 
      (not has-loonit-results) 
      (not (option-value html True))))
  (= 
    (save-html-of $_) 
    (, 
      (set-det) 
      (writeln '<br/><a href="https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md">Return to Summaries</a><br/>')))
  (= 
    (save-html-of $Filename) 
    (set-det))
  (= 
    (save-html-of $Filename) 
    (must-det-ll (, (file-name-extension $Base $_ $Filename) (file-name-extension $Base metta.html $HtmlFilename) (loonit-reset) (tee-file $TEE_FILE) (writeln '<br/><a href="https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md">Return to Summaries</a><br/>') (sformat $S 'ansi2html -u < "~w" > "~w" ' (:: $TEE_FILE $HtmlFilename)) (writeln (doing $S)) (ignore (shell $S)))))


  (= 
    (tee-file $TEE_FILE) 
    (, 
      (getenv TEE-FILE $TEE_FILE) 
      (set-det)))
  (= 
    (tee-file $TEE_FILE) 
    (, 
      (metta-dir $Dir) 
      (directory-file-path $Dir TEE.ansi $TEE_FILE) 
      (set-det)))

  (= 
    (metta-dir $Dir) 
    (, 
      (getenv METTA-DIR $Dir) 
      (set-det)))


  (= 
    (load-metta $Filename) 
    (load-metta &self $Filename));clear_spaces,



  (= 
    (load-metta $Self $Filename) 
    (, 
      (== $Filename --repl) 
      (set-det) 
      (repl)))
  (= 
    (load-metta $Self $Filename) 
    (, 
      (or 
        (not (atom $Filename)) 
        (not (exists-file $Filename))) 
      (set-det) 
      (with-wild-path 
        (load-metta $Self) $Filename) 
      (set-det) 
      (loonit-report)))
  (= 
    (load-metta $Self $RelFilename) 
    (, 
      (atom $RelFilename) 
      (exists-file $RelFilename) 
      (set-det) 
      (absolute-file-name $RelFilename $Filename) 
      (track-load-into-file $Filename 
        (include-metta $Self $RelFilename))))


  (= 
    (include-metta $Self $Filename) 
    (, 
      (or 
        (not (atom $Filename)) 
        (not (exists-file $Filename))) 
      (set-det) 
      (must-det-ll (with-wild-path (include-metta $Self) $Filename)) 
      (set-det)))

  (= 
    (include-metta $Self $RelFilename) 
    (must-det-ll (, (atom $RelFilename) (exists-file $RelFilename) (set-det) (absolute-file-name $RelFilename $Filename) (must-det-ll (setup-call-cleanup (open $Filename read $In (:: (encoding utf8))) (, (directory-file-path $Directory $_ $Filename) (add-atom  &self (metta_file  $Self $Filename $Directory)) (with-cwd $Directory (must-det-ll (load-metta-file-stream $Filename $Self $In)))) (close $In))))))


  (= 
    (load-metta-file-stream $Filename $Self $In) 
    (, 
      (once (if-then-else (, (is-file-stream-and-size $In $Size) (> $Size 102400)) (= $P2 read-sform2) (= $P2 read-metta2))) 
      (with-option loading-file $Filename 
        (, 
          (must-det-ll (, (set-exec-num $Filename 1) (load-answer-file $Filename) (set-exec-num $Filename 0))) 
          (load-metta-file-stream-fast $Size $P2 $Filename $Self $In)))));current_exec_file(Filename),





  (= 
    (accept-line $Self end-of-file) 
    (set-det))
  (= 
    (accept-line $Self $I) 
    (, 
      (normalize-space 
        (string $Str) $I) 
      (set-det) 
      (accept-line2 $Self $Str) 
      (set-det)))


  (= 
    (accept-line2 $Self $S) 
    (, 
      (string-concat ";" $_ $S) 
      (set-det) 
      (writeln $S)))
  (= 
    (accept-line2 $Self $S) 
    (, 
      (string-concat ( $RS $S) 
      (string-concat $M ) $RS) 
      (set-det) 
      (atomic-list-concat 
        (Cons  $F $LL) ' ' $M) 
      (=.. $PL 
        (Cons  $F 
          (Cons  $Self $LL))) 
      (add-atom  &self $PL) 
      (set-det) 
      (flag next-assert $X 
        (+ $X 1)) 
      (if-t 
        (is 0 
          (mod $X 10000000)) 
        (, 
          (writeln (= $X $PL)) 
          (statistics)))))
  (= 
    (accept-line2 $Self $S) 
    (, 
      (fbug (accept-line2 $Self $S)) 
      (set-det)))


  (= 
    (load-metta-file-stream-fast $Size $P2 $Filename $Self $S) 
    (, 
      (atomic-list-concat 
        (Cons  $_ 
          (Cons  $_ 
            (Cons  $_ $_))) . $Filename) 
      (not (option-value html True)) 
      (atomic $S) 
      (is-stream $S) 
      (stream-property $S input) 
      (set-det) 
      (repeat) 
      (read-line-to-string $S $I) 
      (accept-line $Self $I) 
      (== $I end-of-file) 
      (set-det)))

  (= 
    (load-metta-file-stream-fast $Size $P2 $Filename $Self $In) 
    (, 
      (repeat) 
      (current-read-mode file $Mode) 
      (call $P2 $In $Expr) 
      (once (if-then-else (do-metta (file $Filename) $Mode $Self $Expr $O) True (pp-m (unknown-do-metta (file $Filename) $Mode $Self $Expr)))) 
      (flush-output) 
      (at-end-of-stream $In) 
      (set-det)));write_src(read_metta=Expr),nl,



  (= 
    (clear-spaces) 
    (clear-space $_))

  (= 
    (clear-space $S) 
    (, 
      (nop (remove-all-atoms  &self (metta_type  $S $_ $_))) 
      (remove-all-atoms  &self 
        (asserted_metta_atom  $S $_))));retractall(metta_defn(_,S,_,_)),



  (= 
    (dcall $G) 
    (call $G))


  (= 
    (lsm) 
    (lsm $_))
  (= 
    (lsm $S) 
    (, 
      (listing (metta-file $S $_ $_)) 
      (forall 
        (mdyn-type $S $_ $_ $Src) 
        (color-g-mesg #22a5ff 
          (write-f-src $Src))) 
      (nl) 
      (nl) 
      (nl) 
      (forall 
        (mdyn-defn $S $_ $_ $Src) 
        (color-g-mesg #00ffa5 
          (write-f-src $Src))) 
      (set-det)));listing(mdyn_type(S,_,_,_)),
;listing(mdyn_defn(S,_,_,_)),



  (= 
    (write-f-src $H $B) 
    (, 
      (=@= $H $B) 
      (set-det) 
      (write-f-src $H)))
  (= 
    (write-f-src $H $B) 
    (write-f-src (:: = $H $B)))


  (= 
    (hb-f $HB $ST) 
    (, 
      (sub-term $ST $HB) 
      (atom $ST) 
      (\== $ST =) 
      (\== $ST :) 
      (set-det)))

  (= 
    (write-f-src $HB) 
    (, 
      (hb-f $HB $ST) 
      (option-else current-def $CST Nil) 
      (set-det) 
      (if-then-else 
        (== $CST $ST) True 
        (, 
          (nl) 
          (nl) 
          (nl) 
          (set-option-value-interp current-def $ST))) 
      (write-src $HB)))




  (= 
    (debug-only $G) 
    (notrace (ignore (catch-warn $G))))
  (= 
    (debug-only $What $G) 
    (ignore (, (fail) (notrace (catch-warn $G)))))



  (= True True)

  (= False 
    (empty))



  (= 
    (metta-learner::vspace-main) 
    (repl))


  (= 
    (into-underscores $D $U) 
    (, 
      (atom $D) 
      (set-det) 
      (atomic-list-concat $L - $D) 
      (atomic-list-concat $L - $U)))
  (= 
    (into-underscores $D $U) 
    (, 
      (descend-and-transform into-underscores $D $U) 
      (set-det)))



  (= 
    (descend-and-transform $P2 $Input $Transformed) 
    (if-then-else 
      (var $Input) 
      (= $Transformed $Input) 
      (if-then-else 
        (compound $Input) 
        (, 
          (compound-name-arguments $Input $Functor $Args) 
          (maplist 
            (descend-and-transform $P2) $Args $TransformedArgs) 
          (compound-name-arguments $Transformed $Functor $TransformedArgs)) 
        (if-then-else 
          (, 
            (atom $Input) 
            (call $P2 $Input $Transformed)) True 
          (= $Transformed $Input))))); Keep variables as they are
; Transform atoms using xform_atom/2
; Keep other non-compound terms as they are



  (= 
    (is-function $F) 
    (atom $F))/*
is_syspred(H,Len,Pred):- notrace(is_syspred0(H,Len,Pred)).
is_syspred0(H,_Ln,_Prd):- \+ atom(H),!,fail.
is_syspred0(H,_Ln,_Prd):- upcase_atom(H,U),downcase_atom(H,U),!,fail.
is_syspred0(H,Len,Pred):- current_predicate(H/Len),!,Pred=H.
is_syspred0(H,Len,Pred):- atom_concat(Mid,'!',H), H\==Mid, is_syspred0(Mid,Len,Pred),!.
is_syspred0(H,Len,Pred):- into_underscores(H,Mid), H\==Mid, is_syspred0(Mid,Len,Pred),!.

fn_append(List,X,Call):-
  fn_append1(List,X,ListX),
  into_fp(ListX,Call).





is_metta_data_functor(Eq,F):-
  current_self(Self),is_metta_data_functor(Eq,Self,F).

is_metta_data_functor(Eq,Other,H):-
  metta_type(Other,H,_),
  \+ get_metta_atom(Eq,Other,[H|_]),
  \+ metta_defn(Eq,Other,[H|_],_).
*/



  (= 
    (is-False $X) 
    (, 
      (\== $X True) 
      (if-then-else 
        (is-False1 $X) True 
        (, 
          (eval-H $X $Y) 
          (is-False1 $Y)))))

  (= 
    (is-False1 $Y) 
    (or 
      (== $Y 0) 
      (or 
        (== $Y Nil) 
        (== $Y False))))


  (= 
    (is-conz $Self) 
    (, 
      (compound $Self) 
      (= $Self 
        (Cons  $_ $_))))

;dont_x(eval_H(Depth,Self,metta_if(A<B,L1,L2),R)).

  (= 
    (dont_x  
      (eval_H  
        (<  $_ $_) $_)) True)


  (= 
    (into-fp $D $D) 
    (, 
      (not (not (dont-x $D))) 
      (set-det)))
  (= 
    (into-fp $ListX $CallAB) 
    (, 
      (sub-term $STerm $ListX) 
      (needs-expanded $STerm $Term) 
      (= $Term $CTerm) 
      (substM $ListX $CTerm $Var $CallB) 
      (fn-append1 $Term $Var $CallA) 
      (into-fp 
        (, $CallA $CallB) $CallAB)));copy_term(Term,CTerm),

  (= 
    (into_fp  $A $A) True)


  (= 
    (needs-expand $Expand) 
    (, 
      (compound $Expand) 
      (functor $Expand $F $N) 
      (>= $N 1) 
      (atom-concat metta- $_ $F)))

  (= 
    (needs-expanded 
      (eval-H $Term $_) $Expand) 
    (, 
      (set-det) 
      (sub-term $Expand $Term) 
      (compound $Expand) 
      (\=@= $Expand $Term) 
      (compound $Expand) 
      (not (is-conz $Expand)) 
      (not (is-ftVar $Expand)) 
      (needs-expand $Expand)))
  (= 
    (needs-expanded 
      (Cons  $A $B) $Expand) 
    (, 
      (sub-term $Expand 
        (Cons  $A $B)) 
      (compound $Expand) 
      (not (is-conz $Expand)) 
      (not (is-ftVar $Expand)) 
      (needs-expand $Expand)))


  (= 
    (fn-append1 
      (eval-H $Term $X) $X 
      (eval-H $Term $X)) 
    (set-det))
  (= 
    (fn_append1  $Term $X 
      (eval_H  $Term $X)) True)


; Check if parentheses are balanced in a list of characters

  (= 
    (balanced-parentheses $Chars) 
    (balanced-parentheses $Chars 0))
  (= 
    (balanced_parentheses  () 0) True)
  (= 
    (balanced-parentheses 
      (Cons  ( $T) $N) 
    (, 
      (is $N1 
        (+ $N 1)) 
      (balanced-parentheses $T $N1)))
  (= 
    (balanced-parentheses 
      (Cons  ) $T) $N) 
    (, 
      (> $N 0) 
      (is $N1 
        (- $N 1)) 
      (balanced-parentheses $T $N1)))
  (= 
    (balanced-parentheses 
      (Cons  $H $T) $N) 
    (, 
      (\= $H () 
      (\= $H )) 
      (balanced-parentheses $T $N)))
; Recursive function to read lines until parentheses are balanced.

  (= 
    (repl-read $NewAccumulated $Expr) 
    (, 
      (atom-concat $Atom . $NewAccumulated) 
      (catch-err 
        (, 
          (read-term-from-atom $Atom $Term Nil) 
          (= $Expr 
            (call $Term))) $E 
        (, 
          (write 'Syntax error: ') 
          (writeq $E) 
          (nl) 
          (repl-read $Expr))) 
      (set-det)))


;repl_read(Str, Expr):- ((clause(t_l:s_reader_info(Expr),_,Ref),erase(Ref))).
  (= 
    (repl-read "!" 
      (set-det)) 
    (set-det))
  (= 
    (repl-read "+" +) 
    (set-det))
  (= 
    (repl-read $Str $Atom) 
    (, 
      (atom-string $Atom $Str) 
      (metta-interp-mode $Atom $_) 
      (set-det)))

  (= 
    (repl-read $Str $Expr) 
    (, 
      (atom-concat @ $_ $Str) 
      (set-det) 
      (atom-string $Expr $Str)))
  (= 
    (repl-read $Str $Expr) 
    (, 
      (atom-concat ) $_ $Str) 
      (set-det) 
      (fbug (repl-read-syntax $Str)) 
      (throw restart-reading)))
  (= 
    (repl-read $NewAccumulated $Expr) 
    (, 
      (normalize-space 
        (string $Renew) $NewAccumulated) 
      (\== $Renew $NewAccumulated) 
      (set-det) 
      (repl-read $Renew $Expr)))
;repl_read(Str, 'add-atom'('&self',Expr)):- atom_concat('+',W,Str),!,repl_read(W,Expr).
;repl_read(NewAccumulated,exec(Expr)):- string_concat("!",Renew,NewAccumulated), !, repl_read(Renew, Expr).
  (= 
    (repl-read $NewAccumulated $Expr) 
    (, 
      (string-chars $NewAccumulated $Chars) 
      (balanced-parentheses $Chars) 
      (length $Chars $Len) 
      (> $Len 0) 
      (parse-sexpr-metta $NewAccumulated $Expr) 
      (set-det) 
      (normalize-space 
        (string $Renew) $NewAccumulated) 
      (add-history-string $Renew)))
  (= 
    (repl-read $Accumulated $Expr) 
    (, 
      (read-line-to-string current-input $Line) 
      (repl-read $Accumulated $Line $Expr)))

  (= 
    (repl-read $_ end-of-file end-of-file) 
    (throw end-of-input))

  (= 
    (repl-read $Accumulated "" $Expr) 
    (, 
      (set-det) 
      (repl-read $Accumulated $Expr)))
  (= 
    (repl-read $Accumulated $Line $Expr) 
    (, 
      (== $Line end-of-file) 
      (set-det) 
      (= $Expr $Line)))
  (= 
    (repl-read $Accumulated $Line $Expr) 
    (, 
      (atomics-to-string 
        (:: $Accumulated " " $Line) $NewAccumulated) 
      (set-det) 
      (repl-read $NewAccumulated $Expr)))

  (= 
    (repl-read $O2) 
    (, 
      (clause 
        (with_self  
          (t-l) 
          (s-reader-info $O2)) $_ $Ref) 
      (erase $Ref)))
  (= 
    (repl-read $Expr) 
    (, 
      (repeat) 
      (remove-pending-buffer-codes $_ $Was) 
      (text-to-string $Was $Str) 
      (repl-read $Str $Expr) 
      (if-then-else 
        (, 
          (peek-pending-codes $_ $Peek) 
          (== $Peek Nil)) 
        (set-det) True))); once(((atom(Expr1),atom_concat('@',_,Expr1), \+ atom_contains(Expr1,"="), repl_read(Expr2)) -> Expr=[Expr1,Expr2] ; Expr1 = Expr)),
; this cutrs the repeat/0



  (= 
    (add-history-string $Str) 
    (, 
      (notrace (ignore (add-history01 $Str))) 
      (set-det)))


  (= 
    (add-history-src $Exec) 
    (notrace (ignore (, (\= $Exec Nil) (with-output-to (string $H) (with-indents False (write-src $Exec))) (add-history-string $H)))))


  (= 
    (add-history-pl $Exec) 
    (, 
      (var $Exec) 
      (set-det)))
  (= 
    (add-history-pl (eval $_ (catch-red $PL) $_)) 
    (, 
      (set-det) 
      (add-history-pl $PL)))
  (= 
    (add-history-pl (show-failure $PL)) 
    (, 
      (set-det) 
      (add-history-pl $PL)))
  (= 
    (add-history-pl (as-tf $PL $OUT)) 
    (, 
      (set-det) 
      (add-history-pl $PL)))
  (= 
    (add-history-pl $Exec) 
    (notrace (ignore (, (\= $Exec Nil) (with-output-to (string $H) (with-indents False (, (writeq $Exec) (writeln .)))) (add-history-string $H)))))


;read_metta(In,Expr):- current_input(CI), \+ is_same_streams(CI,In), !, read_sform(In,Expr).

  (= 
    (read-metta $_ $O) 
    (, 
      (clause 
        (with_self  
          (t-l) 
          (s-reader-info $O)) $_ $Ref) 
      (erase $Ref)))
  (= 
    (read-metta $I $O) 
    (, 
      (string $I) 
      (normalize-space 
        (string $M) $I) 
      (set-det) 
      (parse-sexpr-metta1 $M $O) 
      (set-det)))
  (= 
    (read-metta $In $Expr) 
    (, 
      (current-input $In0) 
      (== $In $In0) 
      (set-det) 
      (repl-read $Expr)))
  (= 
    (read-metta $In $Expr) 
    (read-metta1 $In $Expr))


  (= 
    (read-metta1 $In $Expr) 
    (, 
      (is-file-stream-and-size $In $Size) 
      (> $Size 10240) 
      (set-det) 
      (read-sform1 Nil $In $Expr)))
  (= 
    (read-metta1 $In $Expr) 
    (read-metta2 $In $Expr))


  (= 
    (read-metta2 $_ $O) 
    (, 
      (clause 
        (with_self  
          (t-l) 
          (s-reader-info $O)) $_ $Ref) 
      (erase $Ref)))
  (= 
    (read-metta2 $In $Expr) 
    (, 
      (peek-char $In $Char) 
      (read-metta2 $In $Char $Expr)))
  (= 
    (read-metta2 $In $Char $Expr) 
    (, 
      (char-type $Char space) 
      (get-char $In $Char) 
      (put $Char) 
      (set-det) 
      (read-metta2 $In $Expr)))
  (= 
    (read-metta2 $In 
      (set-det) $Expr) 
    (, 
      (get-char $In $_) 
      (set-det) 
      (read-metta2 $In $Read1) 
      (set-det) 
      (= $Expr 
        !$Read1)))
  (= 
    (read-metta2 $In or $Expr) 
    (, 
      (get-char $In $_) 
      (set-det) 
      (if-then-else 
        (maybe-read-pl $In $Expr) True 
        (, 
          (read-line-to-string $In $Str) 
          (= $Expr 
            ($COMMENT $Str 0 0))))))
; write_comment(Str),!,read_metta2(In,Expr))),!.
; read_metta2(In,_,Expr):-  maybe_read_pl(In,Expr),!.
  (= 
    (read-metta2 $In $_ $Read1) 
    (, 
      (parse-sexpr-metta $In $Expr) 
      (set-det) 
      (must-det-ll (= $Expr $Read1))))


; Predicate to check if a stream is a file stream and get its size.

  (= 
    (is-file-stream-and-size $Stream $Size) 
    (, 
      (stream-property $Stream 
        (file-name $FileName)) 
      (exists-file $FileName) 
      (size-file $FileName $Size))); Check if the stream is associated with a file.
; Check if the file is accessible and get its size.




  (= 
    (maybe-read-pl $In $Expr) 
    (, 
      (peek-line $In $Line1) 
      (\== $Line1 '') 
      (atom-contains $Line1 .) 
      (atom-contains $Line1 :-) 
      (notrace (, (catch-err (, (read-term-from-atom $Line1 $Term Nil) (\== $Term end-of-file) (= $Expr (call $Term))) $_ fail) (set-det) (read-term $In $Term Nil)))))

  (= 
    (peek-line $In $Line1) 
    (, 
      (peek-string $In 1024 $Str) 
      (split-string $Str "\r\n" " " 
        (Cons  $Line1 
          (Cons  $_ $_))) 
      (set-det)))
  (= 
    (peek-line $In $Line1) 
    (, 
      (peek-string $In 4096 $Str) 
      (split-string $Str "\r\n" " " 
        (Cons  $Line1 
          (Cons  $_ $_))) 
      (set-det)))




;read_line_to_sexpr(Stream,UnTyped),

  (= 
    (read-sform $Str $F) 
    (, 
      (string $Str) 
      (open-string $Str $S) 
      (set-det) 
      (read-sform $S $F)))
  (= 
    (read-sform $S $F) 
    (, 
      (read-sform1 Nil $S $F1) 
      (if-then-else 
        (\== $F1 
          (set-det)) 
        (= $F $F1) 
        (, 
          (read-sform1 Nil $S $F2) 
          (= $F 
            !$F2)))))



  (= 
    (read-sform2 $S $F1) 
    (, 
      (set-det) 
      (read-metta2 $S $F1)))
  (= 
    (read-sform2 $S $F1) 
    (read-sform1 Nil $S $F1))


  (= 
    (read-sform1 $_ $_ $O) 
    (, 
      (clause 
        (with_self  
          (t-l) 
          (s-reader-info $O)) $_ $Ref) 
      (erase $Ref)))
  (= 
    (read-sform1 $AltEnd $Str $F) 
    (, 
      (string $Str) 
      (open-string $Str $S) 
      (set-det) 
      (read-sform1 $AltEnd $S $F)))
  (= 
    (read-sform1 $AltEnd $S $F) 
    (, 
      (at-end-of-stream $S) 
      (set-det) 
      (= $F end-of-file)))
  (= 
    (read-sform1 $AltEnd $S $M) 
    (, 
      (get-char $S $C) 
      (read-sform3 s $AltEnd $C $S $F) 
      (untyped-to-metta $F $M)))
;read_sform1( AltEnd,S,F):- profile(parse_sexpr_metta(S,F)).


  (= 
    (read-sform3 $AoS $AltEnd $C $_ $F) 
    (, 
      (== $C end-of-file) 
      (set-det) 
      (= $F end-of-file)))
  (= 
    (read-sform3 s $AltEnd $C $S $F) 
    (, 
      (char-type $C space) 
      (set-det) 
      (read-sform1 $AltEnd $S $F)))
;read_sform3(AoS,_AltEnd,';',S,'$COMMENT'(F,0,0)):- !, read_line_to_string(S,F).
  (= 
    (read-sform3 s $AltEnd or $S $F) 
    (, 
      (read-line-to-string $S $_) 
      (set-det) 
      (read-sform1 $AltEnd $S $F)))
  (= 
    (read-sform3 s $AltEnd 
      (set-det) $S 
      !$F) 
    (, 
      (set-det) 
      (read-sform1 $AltEnd $S $F)))

  (= 
    (read-sform3 $AoS $AltEnd " $S $Text) 
    (, 
      (set-det) 
      (must-det-ll (atom-until $S Nil " $Text))))
  (= 
    (read-sform3 $AoS $AltEnd ` $S $Text) 
    (, 
      (set-det) 
      (atom-until $S Nil ` $Text)))
  (= 
    (read-sform3 $AoS $AltEnd ' $S $Text) 
    (, 
      (set-det) 
      (atom-until $S Nil ' $Text)))
  (= 
    (read-sform3 $AoS $AltEnd , $_ ,) 
    (set-det))
  (= 
    (read-sform3 s $AltEnd $C $S $F) 
    (, 
      (read-sform4 $AltEnd $C $S $F) 
      (set-det)))
  (= 
    (read-sform3 $AoS $AltEnd $P $S $Sym) 
    (, 
      (peek-char $S $Peek) 
      (set-det) 
      (read-symbol-or-number $AltEnd $Peek $S 
        (:: $P) $Expr) 
      (into-symbol-or-number $Expr $Sym)))


  (= 
    (into-symbol-or-number $Expr $Sym) 
    (, 
      (atom-number $Expr $Sym) 
      (set-det)))
  (= 
    (into_symbol_or_number  $Sym $Sym) True)


  (= 
    (read-sform4 $AltEnd $B $S $Out) 
    (, 
      (read-sform5 s $B $S $List $E) 
      (c-list $E $List $Out)))

  (= 
    (c_list  ) $List $List) True)  
  (= 
    (c_list  } $List 
      {$List }) True) 
  (= 
    (c_list  ] $List 
      [$List ]) True)



  (= 
    (read-sform5 $AoS ( $S $List )) 
    (, 
      (set-det) 
      (collect-list-until $AoS $S ) $List) 
      (set-det)))
  (= 
    (read-sform5 $AoS { $S $List }) 
    (, 
      (set-det) 
      (collect-list-until $AoS $S } $List) 
      (set-det)))
  (= 
    (read-sform5 $AoS [ $S $List ]) 
    (, 
      (set-det) 
      (collect-list-until $AoS $S ] $List) 
      (set-det)))



  (= 
    (read-symbol-or-number $AltEnd $Peek $S $SoFar $Expr) 
    (, 
      (char-type $Peek space) 
      (set-det) 
      (must-det-ll (atomic-list-concat $SoFar $Expr))))
  (= 
    (read-symbol-or-number $AltEnd $B $S $SoFar $Expr) 
    (, 
      (read-sform5 $AltEnd $B $S $List $E) 
      (flatten 
        (:: $List $E) $F) 
      (append $SoFar $F $NSoFar) 
      (peek-char $S $NPeek) 
      (read-symbol-or-number $AltEnd $NPeek $S $NSoFar $Expr)))
  (= 
    (read-symbol-or-number $AltEnd $Peek $S $SoFar $Expr) 
    (, 
      (member $Peek $AltEnd) 
      (set-det) 
      (must-det-ll (do-atomic-list-concat $Peek $SoFar $Expr))))
  (= 
    (read-symbol-or-number $AltEnd $Peek $S $SoFar $Expr) 
    (, 
      (get-char $S $C) 
      (append $SoFar 
        (:: $C) $NSoFar) 
      (peek-char $S $NPeek) 
      (read-symbol-or-number $AltEnd $NPeek $S $NSoFar $Expr)))


  (= 
    (atom-until $S $SoFar $End $Text) 
    (, 
      (get-char $S $C) 
      (atom-until $S $SoFar $C $End $Text)))
  (= 
    (atom-until $_ $SoFar $C $End $Expr) 
    (, 
      (== $C $End) 
      (set-det) 
      (must-det-ll (do-atomic-list-concat $End $SoFar $Expr))))
  (= 
    (atom-until $S $SoFar \ $End $Expr) 
    (, 
      (get-char $S $C) 
      (set-det) 
      (atom-until2 $S $SoFar $C $End $Expr)))
  (= 
    (atom-until $S $SoFar $C $End $Expr) 
    (atom-until2 $S $SoFar $C $End $Expr))

  (= 
    (atom-until2 $S $SoFar $C $End $Expr) 
    (, 
      (append $SoFar 
        (:: $C) $NSoFar) 
      (get-char $S $NC) 
      (atom-until $S $NSoFar $NC $End $Expr)))


  (= 
    (do-atomic-list-concat " $SoFar $Expr) 
    (, 
      (not string-to-syms) 
      (set-det) 
      (atomics-to-string $SoFar $Expr) 
      (set-det)))
  (= 
    (do-atomic-list-concat $End $SoFar $Expr) 
    (atomic-list-concat $SoFar $Expr))


  (= 
    (collect-list-until $AoS $S $End $List) 
    (, 
      (get-char $S $C) 
      (cont-list $AoS $C $End $S $List)))


  (= 
    (cont-list $AoS $End $End1 $_ Nil) 
    (, 
      (== $End end-of-file) 
      (set-det)))
  (= 
    (cont-list $AoS $End $End1 $_ Nil) 
    (, 
      (== $End $End1) 
      (set-det)))
  (= 
    (cont-list $AoS $C $End $S 
      (Cons  $F $List)) 
    (, 
      (read-sform3 $AoS 
        (:: $End) $C $S $F) 
      (set-det) 
      (collect-list-until $AoS $S $End $List)))




  (= 
    (in2-stream $N1 $S1) 
    (, 
      (integer $N1) 
      (set-det) 
      (stream-property $S1 
        (file-no $N1)) 
      (set-det)))
  (= 
    (in2-stream $N1 $S1) 
    (, 
      (atom $N1) 
      (stream-property $S1 
        (alias $N1)) 
      (set-det)))
  (= 
    (in2-stream $N1 $S1) 
    (, 
      (is-stream $N1) 
      (= $S1 $N1) 
      (set-det)))
  (= 
    (in2-stream $N1 $S1) 
    (, 
      (atom $N1) 
      (stream-property $S1 
        (file-name $N1)) 
      (set-det)))

  (= 
    (is-same-streams $N1 $N2) 
    (, 
      (in2-stream $N1 $S1) 
      (in2-stream $N2 $S2) 
      (set-det) 
      (== $S1 $S2)))




  (= 
    (parse-sexpr-metta $I $O) 
    (, 
      (string $I) 
      (normalize-space 
        (string $M) $I) 
      (parse-sexpr-metta1 $M $O) 
      (set-det)))
  (= 
    (parse-sexpr-metta $I $O) 
    (, 
      (parse-sexpr-untyped $I $U) 
      (trly untyped-to-metta $U $O)))


  (= 
    (parse-sexpr-metta1 $M 
      !$O) 
    (, 
      (string-concat 
        (set-det) $I $M) 
      (set-det) 
      (parse-sexpr-metta1 $I $O)))
  (= 
    (parse-sexpr-metta1 $M $O) 
    (, 
      (string-concat + $I $M) 
      (set-det) 
      (parse-sexpr-metta1 $I $O)))
  (= 
    (parse-sexpr-metta1 $I $O) 
    (, 
      (parse-sexpr-untyped $I $U) 
      (trly untyped-to-metta $U $O)))




  (= 
    (write-comment $_) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (write-comment $_) 
    (, 
      (silent-loading) 
      (set-det)))
  (= 
    (write-comment $Cmt) 
    (, 
      (connlf) 
      (format ;;~w~n 
        (:: $Cmt))))

  (= 
    (do-metta-cmt $_ 
      ($COMMENT $Cmt $_ $_)) 
    (, 
      (write-comment $Cmt) 
      (set-det)))
  (= 
    (do-metta-cmt $_ 
      Cmt) 
    (, 
      (write-comment $Cmt) 
      (set-det)))
  (= 
    (do-metta-cmt $Self 
      (:: $Cmt)) 
    (, 
      (set-det) 
      (do-metta-cmt $Self $Cmt) 
      (set-det)))



  (= 
    (mlog_sym  @) True)

;untyped_to_metta(I,exec(O)):- compound(I),I=exec(M),!,untyped_to_metta(M,O).

  (= 
    (untyped-to-metta $I $O) 
    (must-det-ll (, (trly mfix-vars1 $I $M) (trly cons-to-c $M $OM) (trly cons-to-l $OM $O))))



  (= 
    (trly $P2 $A $B) 
    (, 
      (once (call $P2 $A $M)) 
      (\=@= $A $M) 
      (set-det) 
      (trly $P2 $M $B)))
  (= 
    (trly  $_ $A $A) True)


  (= 
    (mfix-vars1 $I $O) 
    (, 
      (var $I) 
      (set-det) 
      (= $I $O)))
  (= 
    (mfix_vars1  $_ $_) True)
  (= 
    (mfix_vars1  $ $) True)
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (atom $I) 
      (atom-concat $ $N $I) 
      (atom-concat - $N $O)))
;mfix_vars1('$t','$VAR'('T')):-!.
;mfix_vars1('$T','$VAR'('T')):-!.
;mfix_vars1(I,O):- I=='T',!,O='True'.
;mfix_vars1(I,O):- I=='F',!,O='False'.
;mfix_vars1(I,O):- is_i_nil(I),!,O=[].
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (== $I True) 
      (set-det) 
      (= $O True)))
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (== $I False) 
      (set-det) 
      (= $O False)))
  (= 
    (mfix-vars1 
      I $O) 
    (, 
      (not string-to-syms) 
      (mfix-vars1 $I $OO) 
      (text-to-string $OO $O) 
      (set-det)))
;mfix_vars1('$STRING'(I),O):- \+ string_to_syms, text_to_string(I,O),!.
  (= 
    (mfix-vars1 
      I $O) 
    (, 
      (set-det) 
      (mfix-vars1 $I $M) 
      (atom-chars $O $M) 
      (set-det)))
;mfix_vars1('$STRING'(I),O):- !, mfix_vars1(I,M),name(O,M),!.
  (= 
    (mfix-vars1 
      (Cons  $H $T) $O) 
    (, 
      (== $H [) 
      (is-list $T) 
      (last $T $L) 
      (== $L ]) 
      (append $List 
        (:: $L) $T) 
      (set-det) 
      (= $O 
        (:: [...] $List))))
  (= 
    (mfix-vars1 
      (Cons  $H $T) $O) 
    (, 
      (== $H {) 
      (is-list $T) 
      (last $T $L) 
      (== $L }) 
      (append $List 
        (:: $L) $T) 
      (set-det) 
      (= $O 
        (:: {...} $List))))
  (= 
    (mfix-vars1 
      (Cons  $H $T) $O) 
    (, 
      (is-list $T) 
      (last $T $L) 
      (== $L }) 
      (append $List 
        (:: $L) $T) 
      (append $Left 
        (Cons  { $R) $List) 
      (append 
        (Cons  $H $Left) 
        (:: (:: {} $R)) $NewList) 
      (mfix-vars1 $NewList $O)))
  (= 
    (mfix-vars1 
      [$List ] $O) 
    (, 
      (is-list $List) 
      (set-det) 
      (= $O 
        (:: [...] $List))))
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (= $I 
        (:: [ $X ])) 
      (nonvar $X) 
      (set-det) 
      (= $O 
        (:: [...] $X))))
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (= $I 
        (:: { $X })) 
      (nonvar $X) 
      (set-det) 
      (= $O 
        (:: {...} $X))))
  (= 
    (mfix-vars1 
      [$List ] $Res) 
    (, 
      (is-list $List) 
      (set-det) 
      (append 
        (Cons  [ $List) 
        (:: ]) $Res) 
      (set-det)))
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (== $I 
        (:: $Quote $S)) 
      (== $Quote quote) 
      (== $S s) 
      (set-det) 
      (= $O is)))
  (= 
    (mfix-vars1 
      (Cons  $K 
        (Cons  $H $T)) $Cmpd) 
    (, 
      (atom $K) 
      (mlog-sym $K) 
      (is-list $T) 
      (mfix-vars1 
        (Cons  $H $T) 
        (Cons  $HH $TT)) 
      (atom $HH) 
      (is-list $TT) 
      (set-det) 
      (compound-name-arguments $Cmpd $HH $TT)))
;mfix_vars1([H|T],[HH|TT]):- !, mfix_vars1(H,HH),mfix_vars1(T,TT).
  (= 
    (mfix-vars1 $List $ListO) 
    (, 
      (is-list $List) 
      (set-det) 
      (maplist mfix-vars1 $List $ListO)))
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (string $I) 
      (string-to-syms) 
      (set-det) 
      (atom-string $O $I)))

  (= 
    (mfix-vars1 $I $O) 
    (, 
      (compound $I) 
      (set-det) 
      (compound-name-arguments $I $F $II) 
      (\== $F $VAR) 
      (maplist mfix-vars1 $II $OO) 
      (set-det) 
      (compound-name-arguments $O $F $OO)))
  (= 
    (mfix-vars1 $I $O) 
    (, 
      (not (atom $I)) 
      (set-det) 
      (= $I $O)))
  (= 
    (mfix_vars1  $I $I) True)


  (= no_cons_reduce True)

  (= 
    (svar-fixvarname-dont-capitalize $O $O) 
    (set-det))
  (= 
    (svar-fixvarname-dont-capitalize $M $O) 
    (, 
      (svar-fixvarname $M $O) 
      (set-det)))


;dvar_name(t,'T'):- !.

  (= 
    (dvar-name $N $O) 
    (, 
      (atom-concat - $_ $N) 
      (set-det) 
      (= $O $N)))
  (= 
    (dvar-name $N $O) 
    (, 
      (integer $N) 
      (atom-concat - $N $O)))
  (= 
    (dvar-name $N $O) 
    (, 
      (atom $N) 
      (atom-number $N $Num) 
      (dvar-name $Num $O) 
      (set-det)))
  (= 
    (dvar-name $N $O) 
    (, 
      (not (atom $N)) 
      (set-det) 
      (format 
        (atom $A) ~w 
        (:: $N)) 
      (dvar-name $A $O)))
  (= 
    (dvar-name $N $O) 
    (, 
      (set-det) 
      (format 
        (atom $A) -~w 
        (:: $N)) 
      (dvar-name $A $O)))
;dvar_name(  '',''):-!. ; "$"
;dvar_name('_','__'):-!. ; "$_"
  (= 
    (dvar-name $N $O) 
    (, 
      (atom-concat - $_ $N) 
      (set-det) 
      (atom-concat - $N $O)))
  (= 
    (dvar-name $N $O) 
    (, 
      (svar-fixvarname-dont-capitalize $N $O) 
      (set-det)))
  (= 
    (dvar-name $N $O) 
    (, 
      (must-det-ll (, (atom-chars $N $Lst) (maplist c2vn $Lst $NList) (atomic-list-concat $NList $S) (svar-fixvarname-dont-capitalize $S $O))) 
      (set-det)))

  (= 
    (c2vn $A $A) 
    (, 
      (char-type $A prolog-identifier-continue) 
      (set-det)))
  (= 
    (c2vn $A $A) 
    (, 
      (char-type $A prolog-var-start) 
      (set-det)))
  (= 
    (c2vn $A $AA) 
    (, 
      (char-code $A $C) 
      (atomic-list-concat 
        (:: -C $C -) $AA)))


  (= 
    (cons-to-l $I $I) 
    (, 
      (no-cons-reduce) 
      (set-det)))
  (= 
    (cons-to-l $I $O) 
    (, 
      (var $I) 
      (set-det) 
      (= $O $I)))
  (= 
    (cons-to-l $I $O) 
    (, 
      (is-i-nil $I) 
      (set-det) 
      (= $O Nil)))
  (= 
    (cons-to-l $I $O) 
    (, 
      (== $I nil) 
      (set-det) 
      (= $O Nil)))
  (= 
    (cons-to-l $C $O) 
    (, 
      (not (compound $C)) 
      (set-det) 
      (= $O $C)))
  (= 
    (cons-to-l 
      (Cons  $Cons 
        (Cons  $H 
          (Cons  $T $List))) 
      (Cons  $HH $TT)) 
    (, 
      (== $List Nil) 
      (atom $Cons) 
      (is-cons-f $Cons) 
      (t-is-ttable $T) 
      (cons-to-l $H $HH) 
      (set-det) 
      (cons-to-l $T $TT)))
  (= 
    (cons-to-l $List $ListO) 
    (, 
      (is-list $List) 
      (set-det) 
      (maplist cons-to-l $List $ListO)))
  (= 
    (cons_to_l  $I $I) True)


  (= 
    (cons-to-c $I $I) 
    (, 
      (no-cons-reduce) 
      (set-det)))
  (= 
    (cons-to-c $I $O) 
    (, 
      (var $I) 
      (set-det) 
      (= $O $I)))
  (= 
    (cons-to-c $I $O) 
    (, 
      (is-i-nil $I) 
      (set-det) 
      (= $O Nil)))
  (= 
    (cons-to-c $I $O) 
    (, 
      (== $I nil) 
      (set-det) 
      (= $O Nil)))
  (= 
    (cons-to-c $C $O) 
    (, 
      (not (compound $C)) 
      (set-det) 
      (= $O $C)))
  (= 
    (cons-to-c 
      (Cons  $Cons 
        (Cons  $H 
          (Cons  $T $List))) 
      (Cons  $HH $TT)) 
    (, 
      (== $List Nil) 
      (atom $Cons) 
      (is-cons-f $Cons) 
      (t-is-ttable $T) 
      (cons-to-c $H $HH) 
      (set-det) 
      (cons-to-c $T $TT)))
  (= 
    (cons-to-c $I $O) 
    (, 
      (not (is-list $I)) 
      (compound-name-arguments $I $F $II) 
      (maplist cons-to-c $II $OO) 
      (set-det) 
      (compound-name-arguments $O $F $OO)))
  (= 
    (cons_to_c  $I $I) True)




  (= 
    (t-is-ttable $T) 
    (, 
      (var $T) 
      (set-det)))
  (= 
    (t-is-ttable $T) 
    (, 
      (is-i-nil $T) 
      (set-det)))
  (= 
    (t-is-ttable $T) 
    (, 
      (is-ftVar $T) 
      (set-det)))
  (= 
    (t-is-ttable (Cons  $F $Args)) 
    (, 
      (== $F Cons) 
      (set-det) 
      (is-list $Args)))
  (= 
    (t-is-ttable (Cons  $_ $Args)) 
    (, 
      (set-det) 
      (not (is-list $Args))))
  (= 
    (t_is_ttable  $_) True)


  (= 
    (is-cons-f $Cons) 
    (is-cf-nil $Cons $_))

  (= 
    (is_cf_nil  Cons NNNil) True)
;is_cf_nil('::','nil').


  (= 
    (is-i-nil $I) 
    (, 
      (is-cf-nil Cons $Nil) 
      (== $I $Nil)))


  (= 
    (subst-vars $TermWDV $NewTerm) 
    (, 
      (subst-vars $TermWDV $NewTerm $NamedVarsList) 
      (maybe-set-var-names $NamedVarsList)))

  (= 
    (subst-vars $TermWDV $NewTerm $NamedVarsList) 
    (subst-vars $TermWDV $NewTerm Nil $NamedVarsList))

  (= 
    (subst-vars $Term $Term $NamedVarsList $NamedVarsList) 
    (, 
      (var $Term) 
      (set-det)))
  (= 
    (subst-vars Nil Nil $NamedVarsList $NamedVarsList) 
    (set-det))
  (= 
    (subst-vars 
      (Cons  $TermWDV $RestWDV) 
      (Cons  $Term $Rest) $Acc $NamedVarsList) 
    (, 
      (set-det) 
      (subst-vars $TermWDV $Term $Acc $IntermediateNamedVarsList) 
      (subst-vars $RestWDV $Rest $IntermediateNamedVarsList $NamedVarsList)))
  (= 
    (subst-vars $_ $_ $NamedVarsList $NamedVarsList) 
    (set-det))
  (= 
    (subst-vars $VName $Var $Acc $NamedVarsList) 
    (, 
      (nonvar $VName) 
      (svar-fixvarname-dont-capitalize $VName $Name) 
      (set-det) 
      (if-then-else 
        (memberchk 
          (= $Name $Var) $Acc) 
        (= $NamedVarsList $Acc) 
        (, 
          (set-det) 
          (= $Var $_) 
          (= $NamedVarsList 
            (Cons  
              (= $Name $Var) $Acc))))))
  (= 
    (subst-vars $Term $Var $Acc $NamedVarsList) 
    (, 
      (atom $Term) 
      (atom-concat $ $DName $Term) 
      (dvar-name $DName $Name) 
      (set-det) 
      (subst-vars $Name $Var $Acc $NamedVarsList)))

  (= 
    (subst-vars $TermWDV $NewTerm $Acc $NamedVarsList) 
    (, 
      (compound $TermWDV) 
      (set-det) 
      (compound-name-arguments $TermWDV $Functor $ArgsWDV) 
      (subst-vars $ArgsWDV $Args $Acc $NamedVarsList) 
      (compound-name-arguments $NewTerm $Functor $Args)))
  (= 
    (subst_vars  $Term $Term $NamedVarsList $NamedVarsList) True)




  (nb-setval variable-names Nil)


  (= 
    (assert-preds $Self $Load $List) 
    (, 
      (is-list $List) 
      (set-det) 
      (maplist 
        (assert-preds $Self $Load) $List)))
;assert_preds(_Self,_Load,_Preds):- \+ show_transpiler,!.
  (= 
    (assert-preds $Self $Load $Preds) 
    (, 
      (expand-to-hb $Preds $H $B) 
      (functor $H $F $A) 
      (if-t show-transpiler 
        (color-g-mesg-ok #005288 
          (, 
            (ignore (, (if-t (not (predicate-property $H defined)) (not-compatio (format '  :- ~q.~n' (:: (dynamic (/ $F $A)))))) (if-t (option-value tabling True) (not-compatio (format '  :- ~q.~n' (:: (table (/ $F $A)))))))) 
            (not-compatio (format '~N~n  ~@' (:: (portray-clause $Preds))))))) 
      (if-t is-transpiling 
        (if-t 
          (not (predicate-property $H static)) 
          (add-assertion $Self $Preds))) 
      (nop (metta-anew1 $Load $Preds)))); \+ predicate_property(H,defined),
;if_t(is_transpiling,catch_i(dynamic(F,A))),



;load_hook(_Load,_Hooked):- !.

  (= 
    (load-hook $Load $Hooked) 
    (, 
      (ignore (not (forall (load-hook0 $Load $Hooked) True))) 
      (set-det)))




  (= 
    (assertion_hb  
      (metta_defn  = $Self $H $B) $Self $H $B) True)
  (= 
    (assertion_hb  
      (asserted_metta_atom  $Self 
        (= $H $B)) $Self $H $B) True)


  (= 
    (load-hook0 $_ $_) 
    (, 
      (not show-transpiler) 
      (not is-transpiling) 
      (set-det)))
  (= 
    (load-hook0 $Load $Assertion) 
    (, 
      (assertion-hb $Assertion $Self $H $B) 
      (functs-to-preds 
        (:: = $H $B) $Preds) 
      (assert-preds $Self $Load $Preds)))
  (= 
    (load-hook0 $_ $_) 
    (, 
      (not (current-prolog-flag metta-interp ready)) 
      (set-det)))

  (= 
    (is-transpiling) 
    (use-metta-compiler))/*
load_hook0(Load,get_metta_atom(Eq,Self,H)):- B = 'True',
       H\=[':'|_], functs_to_preds([=,H,B],Preds),
       assert_preds(Self,Load,Preds).
*/


  (= 
    (use-metta-compiler) 
    (, 
      (notrace (option-value compile full)) 
      (set-det)))

  (= 
    (preview-compiler) 
    (, 
      (not (option-value compile False)) 
      (set-det)))
;preview_compiler:- use_metta_compiler,!.

  (= 
    (show-transpiler) 
    (, 
      (option-value code $Something) 
      (\== $Something silent) 
      (set-det)))
  (= 
    (show-transpiler) 
    (preview-compiler))

  (= 
    (option-switch-pred $F) 
    (, 
      (current-predicate (/ $F 0)) 
      (interpreter-source-file $File) 
      (source-file $F $File) 
      (not (not (, (member $Prefix (:: is- show- trace-on-)) (atom-concat $Prefix $_ $F))))))


  (= 
    (do-show-option-switches) 
    (forall 
      (option-switch-pred $F) 
      (if-then-else 
        (call $F) 
        (writeln (yes $F)) 
        (writeln (not $F))))) 

  (= 
    (do-show-options-values) 
    (, 
      (forall 
        (, 
          (nb-current $N $V) 
          (not (, (atom $N) (atom-concat $ $_ $N)))) 
        (write-src-nl (:: pragma! $N $V))) 
      (do-show-option-switches))) 


  (= 
    (op_decl  pragma! 
      (Atom Atom) EmptyType) True)

  (= 
    (op_decl  match 
      (Space Atom Atom) %Undefined%) True)
  (= 
    (op_decl  remove-atom 
      (Space Atom) EmptyType) True)
  (= 
    (op_decl  add-atom 
      (Space Atom) EmptyType) True)
  (= 
    (op_decl  get-atoms 
      (Space) Atom) True)

  (= 
    (op_decl  get-state 
      ( (MonadicState $Type)) $Type) True)
  (= 
    (op_decl  change-state! 
      ( (MonadicState $Type) $Type) EmptyType) True)
  (= 
    (op_decl  new-state 
      ($Type) 
      (MonadicState $Type)) True)

  (= 
    (op_decl  car-atom 
      (Expression) Atom) True)
  (= 
    (op_decl  cdr-atom 
      (Expression) Expression) True)

  (= 
    (op_decl  let 
      (Atom %Undefined% Atom) Atom) True)
  (= 
    (op_decl  let* 
      (Expression Atom) Atom) True)

  (= 
    (op_decl  and 
      (Bool Bool) Bool) True)
  (= 
    (op_decl  or 
      (Bool Bool) Bool) True)
  (= 
    (op_decl  case 
      (Expression Atom) Atom) True)
  (= 
    (op_decl  eval 
      (Atom) Atom) True)/*
op_decl(apply, [ 'Atom', 'Variable', 'Atom' ], 'Atom').
op_decl(chain, [ 'Atom', 'Variable', 'Atom' ], 'Atom').
op_decl('filter-atom', [ 'Expression', 'Variable', 'Atom' ], 'Expression').
op_decl('foldl-atom', [ 'Expression', 'Atom', 'Variable', 'Variable', 'Atom' ], 'Atom').
op_decl('map-atom', [ 'Expression', 'Variable', 'Atom' ], 'Expression').
op_decl(quote, [ 'Atom' ], 'Atom').
op_decl('if-decons', [ 'Atom', 'Variable', 'Variable', 'Atom', 'Atom' ], 'Atom').
op_decl('if-empty', [ 'Atom', 'Atom', 'Atom' ], 'Atom').
op_decl('if-error', [ 'Atom', 'Atom', 'Atom' ], 'Atom').
op_decl('if-non-empty-expression', [ 'Atom', 'Atom', 'Atom' ], 'Atom').
op_decl('if-not-reducible', [ 'Atom', 'Atom', 'Atom' ], 'Atom').
op_decl(return, [ 'Atom' ], 'ReturnType').
op_decl('return-on-error', [ 'Atom', 'Atom'], 'Atom').
op_decl(unquote, [ ';Undefined;'], ';Undefined;').
op_decl(cons, [ 'Atom', 'Atom' ], 'Atom').
op_decl(decons, [ 'Atom' ], 'Atom').
op_decl(empty, [], ';Undefined;').
op_decl('Error', [ 'Atom', 'Atom' ], 'ErrorType').
op_decl(function, [ 'Atom' ], 'Atom').
op_decl(id, [ 'Atom' ], 'Atom').
op_decl(unify, [ 'Atom', 'Atom', 'Atom', 'Atom' ], 'Atom').
*/

  (= 
    (op_decl  unify 
      (Atom Atom Atom Atom) %Undefined%) True)
  (= 
    (op_decl  if 
      (Bool Atom Atom) $T) True)
  (= 
    (op_decl  % 
      (Number Number) Number) True)
  (= 
    (op_decl  * 
      (Number Number) Number) True)
  (= 
    (op_decl  - 
      (Number Number) Number) True)
  (= 
    (op_decl  + 
      (Number Number) Number) True)
  (= 
    (op_decl  combine 
      ($X $X) $X) True)

  (= 
    (op_decl  bind! 
      (Symbol %Undefined%) EmptyType) True)
  (= 
    (op_decl  import! 
      (Space Atom) EmptyType) True)
  (= 
    (op_decl  get-type 
      (Atom) Type) True)


  (= 
    (type_decl  Any) True)
  (= 
    (type_decl  Atom) True)
  (= 
    (type_decl  Bool) True)
  (= 
    (type_decl  ErrorType) True)
  (= 
    (type_decl  Expression) True)
  (= 
    (type_decl  Number) True)
  (= 
    (type_decl  ReturnType) True)
  (= 
    (type_decl  Space) True)
  (= 
    (type_decl  Symbol) True)
  (= 
    (type_decl  MemoizedState) True)
  (= 
    (type_decl  Type) True)
  (= 
    (type_decl  %Undefined%) True)
  (= 
    (type_decl  Variable) True)


  (dynamic (/ get-metta-atom 2))
  (dynamic (/ asserted-metta-atom 2))
  (multifile (/ asserted-metta 4))
  (dynamic (/ asserted-metta 4))

  (= 
    (metta-atom-stdlib $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (metta-atom-stdlib $X) 
    (metta-atom-stdlib-types $X))

  (= 
    (metta-atom-stdlib-types (:: : $Type Type)) 
    (type-decl $Type))
  (= 
    (metta-atom-stdlib-types (:: : $Op (Cons  -> $List))) 
    (, 
      (op-decl $Op $Params $ReturnType) 
      (append $Params 
        (:: $ReturnType) $List)))

;get_metta_atom(Eq,KB, [F|List]):- KB='&flybase',fb_pred(F, Len), length(List,Len),apply(F,List).



  (= 
    (get-metta-atom $Eq $Space $Atom) 
    (, 
      (get-metta-atom-from $Space $Atom) 
      (not (, (= $Atom (:: $EQ $_ $_)) (== $EQ $Eq)))))


  (= 
    (get-metta-atom-from $KB 
      (Cons  $F 
        (Cons  $A $List))) 
    (, 
      (= $KB &flybase) 
      (fb-pred-nr $F $Len) 
      (current-predicate (/ $F $Len)) 
      (length 
        (Cons  $A $List) $Len) 
      (apply $F 
        (Cons  $A $List))))
  (= 
    (get-metta-atom-from 
      (:: $Superpose $ListOf) $Atom) 
    (, 
      (== $Superpose superpose) 
      (is-list $ListOf) 
      (set-det) 
      (member $KB $ListOf) 
      (get-metta-atom-from $KB $Atom)))
  (= 
    (get-metta-atom-from $Space $Atom) 
    (, 
      (typed-list $Space $_ $L) 
      (set-det) 
      (member $Atom $L)))
  (= 
    (get-metta-atom-from $KB $Atom) 
    (, 
      (or 
        (== $KB &self) 
        (= $KB &stdlib)) 
      (metta-atom-stdlib $Atom)))
  (= 
    (get-metta-atom-from $KB $Atom) 
    (if-or-else 
      (asserted-metta-atom $KB $Atom) 
      (asserted-metta-atom-fallback $KB $Atom)))


  (= 
    (asserted-metta-atom-fallback $KB $Atom) 
    (, 
      (fail) 
      (is-list $KB) 
      (set-det) 
      (member $Atom $KB)))
;asserted_metta_atom_fallback( KB,Atom):- get_metta_atom_from(KB,Atom)

;metta_atom(KB,[F,A|List]):- metta_atom(KB,F,A,List), F \== '=',!.

  (= 
    (metta-atom $KB $Atom) 
    (get-metta-atom-from $KB $Atom))

  (= 
    (metta-defn $KB $Head $Body) 
    (add-atom  $KB 
      ($Eq $Head $Body)))
  (= 
    (add-atom  $KB 
      ($Eq $Head $Body)) 
    (, 
      (ignore (= $Eq =)) 
      (get-metta-atom-from $KB 
        (:: $Eq $Head $Body))))


  (= 
    (metta-type $S $H $B) 
    (if-or-else 
      (get-metta-atom-from $S 
        (:: : $H $B)) 
      (metta-atom-stdlib-types (:: : $H $B))))

;typed_list(Cmpd,Type,List):-  compound(Cmpd), Cmpd\=[_|_], compound_name_arguments(Cmpd,Type,[List|_]),is_list(List).


  (if (not (current-predicate (/ pfcAdd 1))))

  (= 
    (pfcAdd $P) 
    (add-atom  &self $P))

  (endif)

;maybe_xform(metta_atom(KB,[F,A|List]),metta_atom(KB,F,A,List)):- is_list(List),!.

  (= 
    (maybe_xform  
      (metta_defn  $Eq $KB $Head $Body) 
      (metta_atom  $KB 
        ($Eq $Head $Body))) True)
  (= 
    (maybe_xform  
      (metta_type  $KB $Head $Body) 
      (metta_atom  $KB 
        (: $Head $Body))) True)
  (= 
    (maybe_xform  
      (metta_atom  $KB $HeadBody) 
      (asserted_metta_atom  $KB $HeadBody)) True)
  (= 
    (maybe-xform $OBO $XForm) 
    (, 
      (set-det) 
      (fail)))


  (= 
    (asserted-metta-atom $KB $HeadBody) 
    (asserted-metta $KB $HeadBody $_ $_))


  (= 
    (metta-anew1 $Load $OBO) 
    (, 
      (var $Load) 
      (trace) 
      (set-det)))
  (= 
    (metta-anew1 $Ch $OBO) 
    (, 
      (metta-interp-mode $Ch $Mode) 
      (set-det) 
      (metta-anew1 $Mode $OBO)))
  (= 
    (metta-anew1 $Load $OBO) 
    (, 
      (maybe-xform $OBO $XForm) 
      (set-det) 
      (metta-anew1 $Load $XForm)))
  (= 
    (metta-anew1 load $OBO) 
    (, 
      (= $OBO 
        (metta-atom $Space $Atom)) 
      (set-det) 
      (add-atom $Space $Atom)))
  (= 
    (metta-anew1 unload $OBO) 
    (, 
      (= $OBO 
        (metta-atom $Space $Atom)) 
      (set-det) 
      (remove-atom $Space $Atom)))

  (= 
    (metta-anew1 load $OBO) 
    (, 
      (set-det) 
      (must-det-ll (, (load-hook load $OBO) (subst-vars $OBO $Cl) (pfcAdd $Cl))))) ;to_metta(Cl).
  (= 
    (metta-anew1 load $OBO) 
    (, 
      (set-det) 
      (must-det-ll (, (load-hook load $OBO) (subst-vars $OBO $Cl) (show-failure (pfcAdd $Cl)))))) ;to_metta(Cl).
  (= 
    (metta-anew1 unload $OBO) 
    (, 
      (subst-vars $OBO $Cl) 
      (load-hook unload $OBO) 
      (expand-to-hb $Cl $Head $Body) 
      (predicate-property $Head 
        (number-of-clauses $_)) 
      (ignore (, (clause $Head $Body $Ref) (clause $Head2 $Body2 $Ref) (=@= (+ $Head $Body) (+ $Head2 $Body2)) (erase $Ref) (pp-m $Cl)))))


  (= 
    (metta-anew2 $Load $OBO) 
    (, 
      (var $Load) 
      (trace) 
      (set-det)))
  (= 
    (metta-anew2 $Load $OBO) 
    (, 
      (maybe-xform $OBO $XForm) 
      (set-det) 
      (metta-anew2 $Load $XForm)))
  (= 
    (metta-anew2 $Ch $OBO) 
    (, 
      (metta-interp-mode $Ch $Mode) 
      (set-det) 
      (metta-anew2 $Mode $OBO)))
  (= 
    (metta-anew2 load $OBO) 
    (must-det-ll (, (load-hook load $OBO) (subst-vars-not-last $OBO $Cl) (assertz-if-new $Cl)))) ;to_metta(Cl).
  (= 
    (metta-anew2 unload $OBO) 
    (, 
      (subst-vars-not-last $OBO $Cl) 
      (load-hook unload $OBO) 
      (expand-to-hb $Cl $Head $Body) 
      (predicate-property $Head 
        (number-of-clauses $_)) 
      (ignore (, (clause $Head $Body $Ref) (clause $Head2 $Body2 $Ref) (=@= (+ $Head $Body) (+ $Head2 $Body2)) (erase $Ref) (pp-m $Cl)))))



  (= 
    (metta-anew $Load $Src $OBO) 
    (, 
      (maybe-xform $OBO $XForm) 
      (set-det) 
      (metta-anew $Load $Src $XForm)))
  (= 
    (metta-anew $Ch $Src $OBO) 
    (, 
      (metta-interp-mode $Ch $Mode) 
      (set-det) 
      (metta-anew $Mode $Src $OBO)))
  (= 
    (metta-anew $Load $Src $OBO) 
    (, 
      (silent-loading) 
      (set-det) 
      (metta-anew1 $Load $OBO)))
  (= 
    (metta-anew $Load $Src $OBO) 
    (, 
      (format ~N) 
      (color-g-mesg #0f0f0f 
        (, 
          (write '  ; Action: ') 
          (writeq (= $Load $OBO)))) 
      (color-g-mesg #ffa500 
        (write-src $Src)) 
      (metta-anew1 $Load $OBO) 
      (format ~n)))


  (= 
    (subst-vars-not-last $A $B) 
    (, 
      (functor $A $F $N) 
      (arg $N $A $E) 
      (subst-vars $A $B) 
      (nb-setarg $N $B $E) 
      (set-det)))


  (= 
    (con-write $W) 
    (, 
      (check-silent-loading) 
      (write $W)))

  (= 
    (con-writeq $W) 
    (, 
      (check-silent-loading) 
      (writeq $W)))

  (= 
    (writeqln $Q) 
    (, 
      (check-silent-loading) 
      (write ' ') 
      (con-writeq $Q) 
      (connl)))


  (= 
    (connlf) 
    (, 
      (check-silent-loading) 
      (format ~N)))

  (= 
    (connl) 
    (, 
      (check-silent-loading) 
      (nl)))
; check_silent_loading:- silent_loading,!,trace,break.

  (= check_silent_loading True)

  (= 
    (silent-loading) 
    (, 
      (is-converting) 
      (set-det)))
  (= 
    (silent-loading) 
    (, 
      (option-value html True) 
      (set-det) 
      (fail)))
  (= 
    (silent-loading) 
    (, 
      (option-value trace-on-load False) 
      (set-det)))





  (= 
    (uncompound $OBO $Src) 
    (, 
      (not (compound $OBO)) 
      (set-det) 
      (= $Src $OBO)))
  (= 
    (uncompound $OBO $OBO) 
    (set-det))
  (= 
    (uncompound $IsList $Src) 
    (, 
      (is-list $IsList) 
      (set-det) 
      (maplist uncompound $IsList $Src)))
  (= 
    (uncompound 
      (Cons  $Is $NotList) 
      (Cons  $SrcH $SrcT)) 
    (, 
      (set-det) 
      (uncompound $Is $SrcH) 
      (uncompound $NotList $SrcT)))
  (= 
    (uncompound $Compound $Src) 
    (, 
      (compound-name-arguments $Compound $Name $Args) 
      (maplist uncompound 
        (Cons  $Name $Args) $Src)))


  (= 
    (assert-to-metta $_) 
    (, 
      (reached-file-max) 
      (set-det)))
  (= 
    (assert-to-metta $OBO) 
    (must-det-ll (, (=.. $OBO (Cons  $Fn $DataLL)) (maplist better-arg $DataLL $DataL) (into-datum $Fn $DataL $Data) (functor $Data $Fn $A) (decl-fb-pred $Fn $A) (real-assert $Data) (set-det) (incr-file-count $_))))

  (= 
    (assert-to-metta $OBO) 
    (, 
      (ignore (, (>= $A 2) (< $A 700) (=.. $OBO (Cons  $Fn $Cols)) (must-det-ll (, (make-assertion4 $Fn $Cols $Data $OldData) (functor $Data $FF $AA) (decl-fb-pred $FF $AA) (if-then-else (, (fail) (call $Data)) True (must-det-ll (, (real-assert $Data) (incr-file-count $_) (ignore (, (should-show-data $X) (ignore (, (fail) (\== $OldData $Data) (write '; oldData ') (write-src $OldData) (format '  ; ~w ~n' (:: $X)))) (write-src $Data) (format '  ; ~w ~n' (:: $X)))) (ignore (, (fail) (option-value output-stream $OutputStream) (is-stream $OutputStream) (should-show-data $X1) (< $X1 1000) (must-det-ll (, (display $OutputStream $Data) (writeln $OutputStream .)))))))))))) 
      (set-det)))


  (= 
    (assert-MeTTa $OBO) 
    (, 
      (set-det) 
      (assert-to-metta $OBO)))
;assert_MeTTa(OBO):- !, assert_to_metta(OBO),!,heartbeat.

  (= 
    (into-space $Self &self $Self) 
    (set-det))/*
assert_MeTTa(Data):- !, heartbeat, functor(Data,F,A), A>=2,
   decl_fb_pred(F,A),
   incr_file_count(_),
   ignore((((should_show_data(X),
       write(newData(X)),write(=),write_src(Data))))),
   assert(Data),!.
*/
;:- dynamic((metta_type/3,metta_defn/3,get_metta_atom/2)).

  (= 
    (into-space $_ $Other $Other) 
    (set-det))


  (= 
    (into-space $Self $Myself $SelfO) 
    (into-space 30 $Self $Myself $SelfO))

  (= 
    (into-space $Dpth $Self $Myself $Self) 
    (, 
      (== $Myself &self) 
      (set-det)))
  (= 
    (into-space $Dpth $Self $None $Self) 
    (, 
      (== None $None) 
      (set-det)))
  (= 
    (into-space $Depth $Self $Other $Result) 
    (eval-H $Depth $Self $Other $Result))

  (= 
    (into_name  $_ $Other $Other) True)

;eval_f_args(Depth,Self,F,ARGS,[F|EARGS]):- maplist(eval_H(Depth,Self),ARGS,EARGS).



  (= 
    (combine-result $TF $R2 $R2) 
    (, 
      (== $TF Nil) 
      (set-det)))
  (= 
    (combine-result $TF $_ $TF) 
    (set-det))



  (= 
    (do-metta1-e $Self $_ 
      !$Exec) 
    (, 
      (set-det) 
      (write-exec $Exec) 
      (set-det)))
  (= 
    (do-metta1-e $Self $_ 
      (:: = $A $B)) 
    (, 
      (set-det) 
      (with-concepts False 
        (, 
          (con-write (= ) 
          (with-indents False 
            (write-src $A)) 
          (if-then-else 
            (is-list $B) connl True) 
          (con-write ' ') 
          (with-indents True 
            (write-src $B)) 
          (con-write )))) 
      (connl)))
  (= 
    (do-metta1-e $Self $LoadExec $Term) 
    (, 
      (write-src $Term) 
      (connl)))


  (= 
    (write-exec $Exec) 
    (notrace (write-exec0 $Exec)))
;write_exec0(Exec):- atom(Exec),!,write_exec0([Exec]).


  (= 
    (write-exec0 $_) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (write-exec0 $Exec) 
    (, 
      (wots $S 
        (write-src !$Exec)) 
      (nb-setval exec-src $Exec) 
      (format ~N) 
      (ignore (notrace (color-g-mesg #0D6328 (writeln $S))))))




  (= 
    (asserted-do-metta $Space $Ch $Src) 
    (, 
      (metta-interp-mode $Ch $Mode) 
      (set-det) 
      (asserted-do-metta $Space $Mode $Src)))

  (= 
    (asserted-do-metta $Space $Load $Src) 
    (, 
      (== $Load exec) 
      (set-det) 
      (do-metta-exec python $Space $Src $Out)))
  (= 
    (asserted-do-metta $Space $Load $Src) 
    (asserted-do-metta2 $Space $Load $Src $Src))


  (= 
    (asserted-do-metta2 $Space $Ch $Info $Src) 
    (, 
      (metta-interp-mode $Ch $Mode) 
      (set-det) 
      (asserted-do-metta2 $Space $Mode $Info $Src)))
  (= 
    (asserted-do-metta2 $Self $Load 
      (:: $TypeOp $Fn $Type) $Src) 
    (, 
      (= $TypeOp :) 
      (not (is-list $Type)) 
      (set-det) 
      (must-det-ll (color-g-mesg-ok #ffa500 (metta-anew $Load $Src (metta-atom $Self (:: : $Fn $Type))))) 
      (set-det)))

  (= 
    (asserted-do-metta2 $Self $Load 
      (:: $TypeOp $Fn $TypeDecL) $Src) 
    (, 
      (= $TypeOp :) 
      (set-det) 
      (must-det-ll (, (decl-length $TypeDecL $Len) (is $LenM1 (- $Len 1)) (last-element $TypeDecL $LE) (color-g-mesg-ok #ffa500 (metta-anew $Load $Src (metta-atom $Self (:: : $Fn $TypeDecL)))) (metta-anew1 $Load (metta-arity $Self $Fn $LenM1)) (arg-types $TypeDecL Nil $EachArg) (metta-anew1 $Load (metta-params $Self $Fn $EachArg)) (set-det) (metta-anew1 $Load (metta-last $Self $Fn $LE))))))

  (= 
    (asserted-do-metta2 $Self $Load 
      (:: $TypeOp $Fn $TypeDecL $RetType) $Src) 
    (, 
      (= $TypeOp :) 
      (set-det) 
      (must-det-ll (, (decl-length $TypeDecL $Len) (append $TypeDecL (:: $RetType) $TypeDecLRet) (color-g-mesg-ok #ffa500 (metta-anew $Load $Src (metta-atom $Self (:: : $Fn $TypeDecLRet)))) (metta-anew1 $Load (metta-arity $Self $Fn $Len)) (arg-types $TypeDecL (:: $RetType) $EachArg) (metta-anew1 $Load (metta-params $Self $Fn $EachArg)) (metta-anew1 $Load (metta-return $Self $Fn $RetType)))) 
      (set-det)))

  (= 
    (asserted-do-metta2 $Self $Load 
      (:: $EQ $Head $Result) $Src) 
    (, 
      (== $EQ =) 
      (set-det) 
      (must-det-ll (, (discover-head $Self $Load $Head) (color-g-mesg-ok #ffa500 (metta-anew $Load $Src (add-atom  $Self ($EQ $Head $Result)))) (discover-body $Self $Load $Result)))))/*do_metta(File,Self,Load,PredDecl, Src):-fail,
   metta_anew(Load,Src,metta_atom(Self,PredDecl)),
   ignore((PredDecl=['=',Head,Body], metta_anew(Load,Src,metta_defn(Eq,Self,Head,Body)))),
   ignore((Body == 'True',!,do_metta(File,Self,Load,Head))),
   nop((fn_append(Head,X,Head), fn_append(PredDecl,X,Body),
   metta_anew((Head:- Body)))),!.*/


  (= 
    (asserted-do-metta2 $Self $Load $PredDecl $Src) 
    (, 
      (ignore (discover-head $Self $Load $PredDecl)) 
      (color-g-mesg-ok #ffa500 
        (metta-anew $Load $Src 
          (metta-atom $Self $PredDecl)))))



  (= 
    (always-exec !$W) 
    (, 
      (set-det) 
      (is-list $W) 
      (always-exec $W)))
  (= 
    (always-exec $Comp) 
    (, 
      (compound $Comp) 
      (compound-name-arity $Comp $Name $N) 
      (atom-concat eval $_ $Name) 
      (is $Nm1 
        (- $N 1)) 
      (arg $Nm1 $Comp $TA) 
      (set-det) 
      (always-exec $TA)))
  (= 
    (always-exec $List) 
    (, 
      (not (is-list $List)) 
      (set-det) 
      (fail)))
  (= 
    (always-exec (Cons  $Var $_)) 
    (, 
      (not (atom $Var)) 
      (set-det) 
      (fail)))
  (= 
    (always-exec (Cons  extend-py! $_)) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (always-exec (Cons  $H $_)) 
    (, 
      (atom-concat $_ 
        (set-det) $H) 
      (set-det))) ;pragma!/print!/transfer!/include! etc
  (= 
    (always-exec (Cons  assertEqualToResult $_)) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (always-exec (Cons  assertEqual $_)) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (always-exec $_) 
    (, 
      (set-det) 
      (fail))) ; everything else


  (= 
    (file-hides-results (Cons  $W $_)) 
    (== $W pragma!))


  (= 
    (if-t $A $B $C) 
    (, 
      (trace) 
      (if-t 
        (, $A $B) $C)))



  (= 
    (check-answers-for $TermV $Ans) 
    (, 
      (or 
        (string $TermV) 
        (or 
          (var $Ans) 
          (var $TermV))) 
      (set-det) 
      (fail)))
  (= 
    (check-answers-for $TermV $_) 
    (, 
      (sformat $S ~q 
        (:: $TermV)) 
      (atom-contains $S "[assert") 
      (set-det) 
      (fail)))
  (= 
    (check-answers-for $_ $Ans) 
    (, 
      (contains-var BadType $Ans) 
      (set-det) 
      (fail)))
  (= 
    (check-answers-for $TermV $_) 
    (, 
      (inside-assert $TermV $BaseEval) 
      (always-exec $BaseEval) 
      (set-det) 
      (fail)))

;check_answers_for([TermV],Ans):- !, check_answers_for(TermV,Ans).
;check_answers_for(TermV,[Ans]):- !, check_answers_for(TermV,Ans).
  (= 
    (check_answers_for  $_ $_) True)


  (= 
    (got-exec-result2 $Val $Nth $Ans) 
    (, 
      (is-list $Ans) 
      (exclude 
        (== ,) $Ans $Ans2) 
      (\== $Ans $Ans2) 
      (set-det) 
      (got-exec-result2 $Val $Nth $Ans2)))
  (= 
    (got-exec-result2 $Val $Nth $Ans) 
    (must-det-ll (, (is $Nth100 (+ $Nth 100)) (get-test-name $Nth100 $TestName) (nb-current exec-src $Exec) (if-t (not (is-unit-test-exec $Exec)) (if-then-else (equal-enough $Val $Ans) (write-pass-fail-result-now $TestName exec $Exec PASS $Ans $Val) (write-pass-fail-result-now $TestName exec $Exec FAIL $Ans $Val))))))


  (= 
    (write-pass-fail-result-now $TestName exec $Exec $PASS_FAIL $Ans $Val) 
    (, 
      (if-then-else 
        (== $PASS_FAIL PASS) 
        (flag loonit-success $X 
          (+ $X 1)) 
        (flag loonit-failure $X 
          (+ $X 1))) 
      (if-then-else 
        (== $PASS_FAIL PASS) 
        (= $Color cyan) 
        (= $Color red)) 
      (color-g-mesg $Color 
        (write-pass-fail-result-c $TestName exec $Exec $PASS_FAIL $Ans $Val)) 
      (set-det) 
      (nl) 
      (nl) 
      (writeln --------------------------------------------------------------------------) 
      (set-det)))


  (= 
    (write-pass-fail-result-c $TestName exec $Exec $PASS_FAIL $Ans $Val) 
    (, 
      (nl) 
      (write-mobj exec 
        (:: (:: assertEqualToResult $Exec $Ans))) 
      (nl) 
      (write-src (! (:: assertEqual $Val $Ans))) 
      (write-pass-fail-result $TestName exec $Exec $PASS_FAIL $Ans $Val)))


  (= 
    (is-unit-test-exec $Exec) 
    (, 
      (sformat $S ~w 
        (:: $Exec)) 
      (sub-atom $S $_ $_ $_ assert)))
  (= 
    (is-unit-test-exec $Exec) 
    (, 
      (sformat $S ~q 
        (:: $Exec)) 
      (sub-atom $S $_ $_ $_ "!',")))


  (= 
    (return_empty  ) True)
  (= 
    (return-empty $_ $Empty) 
    (return-empty $Empty))


  (= 
    (convert-tax $How $Self $Tax $Expr $NewHow) 
    (, 
      (metta-interp-mode $Ch $Mode) 
      (string-concat $Ch $TaxM $Tax) 
      (set-det) 
      (normalize-space 
        (string $NewTax) $TaxM) 
      (convert-tax $Mode $Self $NewTax $Expr $NewHow)))
  (= 
    (convert-tax $How $Self $Tax $Expr $How) 
    (, 
      (normalize-space 
        (string $NewTax) $Tax) 
      (parse-sexpr-metta1 $NewTax $Expr)));parse_sexpr_metta(Tax,Expr).



  (if (not (current-predicate (/ notrace 1))))
  
  (= 
    (notrace $G) 
    (once $G))

  (endif)


  (= 
    (metta_interp_mode  + load) True)
  (= 
    (metta_interp_mode  - unload) True)
  (= 
    (metta_interp_mode  ! exec) True)
  (= 
    (metta_interp_mode  ? call) True)
  (= 
    (metta_interp_mode  ^ load_like_file) True)



  (= 
    (call-sexpr $How $Self $Tax $S $Out) 
    (, 
      (or 
        (atom $Tax) 
        (string $Tax)) 
      (normalize-space 
        (string $TaxM) $Tax) 
      (convert-tax $How $Self $TaxM $Expr $NewHow) 
      (set-det) 
      (show-call (do-metta python $NewHow $Self $Expr $Out))))


  (= 
    (do-metta $File $Load $Self $Cmt $Out) 
    (, 
      (if-trace do-metta 
        (fbug (do-metta $File $Load $Self $Cmt $Out))) 
      (fail)))

  (= 
    (do-metta $File $Load $Self $In $Out) 
    (, 
      (var $In) 
      (set-det) 
      (= $In $Out)))
  (= 
    (do-metta $From $Mode $Self end-of-file ) 
    (set-det)) ;, halt(7), writeln('\n\n; To restart, use: ?- repl.').
  (= 
    (do-metta $File $Load $Self $Cmt $Out) 
    (, 
      (== $Cmt Nil) 
      (set-det) 
      (= $Out Nil)))

  (= 
    (do-metta $From $Load $Self 
      ($COMMENT $Expr $_ $_) $Out) 
    (, 
      (set-det) 
      (do-metta $From 
        (comment $Load) $Self $Expr $Out)))
  (= 
    (do-metta $From $Load $Self 
      Expr $Out) 
    (, 
      (set-det) 
      (do-metta $From 
        (comment $Load) $Self $Expr $Out)))
  (= 
    (do-metta $From 
      (comment $Load) $Self 
      (:: $Expr) $Out) 
    (, 
      (set-det) 
      (do-metta $From 
        (comment $Load) $Self $Expr $Out)))
  (= 
    (do-metta $From 
      (comment $Load) $Self $Cmt $Out) 
    (, 
      (write-comment $Cmt) 
      (set-det) 
      (ignore (, (atomic $Cmt) (atomic-list-concat (:: $_ $Src) 'MeTTaLog only: ' $Cmt) (set-det) (atom-string $Src $SrcCode) (do-metta (mettalog-only $From) $Load $Self $SrcCode $Out))) 
      (ignore (, (atomic $Cmt) (atomic-list-concat (:: $_ $Src) 'MeTTaLog: ' $Cmt) (set-det) (atom-string $Src $SrcCode) (do-metta (mettalog-only $From) $Load $Self $SrcCode $Out))) 
      (set-det)))

  (= 
    (do-metta $From $How $Self $Src $Out) 
    (, 
      (string $Src) 
      (set-det) 
      (normalize-space 
        (string $TaxM) $Src) 
      (convert-tax $How $Self $TaxM $Expr $NewHow) 
      (set-det) 
      (do-metta $From $NewHow $Self $Expr $Out)))

  (= 
    (do-metta $From $_ $Self 
      !$Expr $Out) 
    (, 
      (set-det) 
      (do-metta $From exec $Self $Expr $Out)))
  (= 
    (do-metta $From $_ $Self 
      (call $Expr) $Out) 
    (, 
      (set-det) 
      (do-metta $From call $Self $Expr $Out)))
  (= 
    (do-metta $From $_ $Self 
      !$Expr $Out) 
    (, 
      (set-det) 
      (do-metta $From call $Self $Expr $Out)))
  (= 
    (do-metta $From call $Self $TermV $FOut) 
    (, 
      (set-det) 
      (call-for-term-variables $TermV $Term $NamedVarsList $X) 
      (must-be nonvar $Term) 
      (copy-term $NamedVarsList $Was) 
      (= $Output $NamedVarsList) 
      (with_self  
        (user) 
        (interactively-do-metta-exec $From $Self $TermV $Term $X $NamedVarsList $Was $Output $FOut))))
  (= 
    (do-metta $File $Load $Self $Src $Out) 
    (, 
      (\== $Load exec) 
      (set-det) 
      (as-tf 
        (asserted-do-metta $Self $Load $Src) $Out)))

  (= 
    (do-metta 
      (file $Filename) exec $Self $TermV $Out) 
    (, 
      (inc-exec-num $Filename) 
      (is-synthing-unit-tests) 
      (must-det-ll (, (get-exec-num $Filename $Nth) (> $Nth 0))) 
      (file-answers $Filename $Nth $Ans) 
      (check-answers-for $TermV $Ans) 
      (set-det) 
      (must-det-ll (color-g-mesg-ok #ffa500 (, (writeln ';; In file as:  ') (color-g-mesg (:: bold (fg #FFEE58)) (write-src !$TermV)) (write ';; To unit test case:')))) 
      (set-det) 
      (do-metta-exec 
        (file $Filename) $Self 
        (:: assertEqualToResult $TermV $Ans) $Out)))

  (= 
    (do-metta $From exec $Self $TermV $Out) 
    (, 
      (set-det) 
      (do-metta-exec $From $Self $TermV $Out)))


  (= 
    (do-metta-exec $From $Self $TermV $FOut) 
    (, 
      (= $Output $X) 
      (not-compatio (write-exec $TermV)) 
      (notrace (into-metta-callable $Self $TermV $Term $X $NamedVarsList $Was)) 
      (set-det) 
      (with_self  
        (user) 
        (interactively-do-metta-exec $From $Self $TermV $Term $X $NamedVarsList $Was $Output $FOut)) 
      (set-det)))



  (= 
    (call-for-term-variables $TermV 
      (catch-red (show-failure $Term)) $NamedVarsList $X) 
    (, 
      (term-variables $TermV $AllVars) 
      (call-for-term-variables4v $TermV $AllVars $Term $NamedVarsList $X) 
      (set-det) 
      (must-be callable $Term)))
  (= 
    (call-for-term-variables $TermV 
      (catch-red (show-failure $Term)) $NamedVarsList $X) 
    (, 
      (get-term-variables $TermV $DCAllVars $Singletons $NonSingletons) 
      (call-for-term-variables5 $TermV $DCAllVars $Singletons $NonSingletons $Term $NamedVarsList $X) 
      (set-det) 
      (must-be callable $Term)))


  (= 
    (into-metta-callable $Self $TermV $Term $X $NamedVarsList $Was) 
    (, 
      (is-transpiling) 
      (set-det) 
      (must-det-ll (, (= $RealRes $Res) (compile-for-exec $Res $TermV $ExecGoal) (set-det) (subst-vars (+ $Res $ExecGoal) (+ $Res $Term) $NamedVarsList) (copy-term $NamedVarsList $Was) (term-variables $Term $Vars) (notrace (color-g-mesg #114411 (print-pl-source (= (answer $Res) $ExecGoal)))) (not (not (, (numbervars (v $TermV $Term $NamedVarsList $Vars) 999 $_ (:: (attvar bind))) (nop nl)))) (nop (maplist verbose-unify $Vars)) (var $RealRes) (= $X $RealRes))) 
      (set-det))); ignore(Res = '$VAR'('ExecRes')),
;nl,writeq(Term),nl,
;nb_current(variable_names,NamedVarsList),
;nl,print(subst_vars(Term,NamedVarsList,Vars)),
;NamedVarsList=[_=RealRealRes|_],



  (= 
    (into-metta-callable $Self $TermV $CALL $X $NamedVarsList $Was) 
    (, 
      (set-det) 
      (option-else stack-max $StackMax 100) 
      (= $CALL 
        (eval-H $StackMax $Self $Term $X)) 
      (notrace (must-det-ll (, (if-t show-transpiler (write-compiled-exec $TermV $Goal)) (subst-vars $TermV $Term $NamedVarsList) (copy-term $NamedVarsList $Was)))) 
      (set-det)));term_variables(Term,Vars),
;nl,writeq(Term),nl,
;skip((\+ \+
;((numbervars(v(TermV,Term,NamedVarsList,Vars),999,_,[attvar(bind)]),  ;nb_current(variable_names,NamedVarsList),
;nl,print(subst_vars(TermV,Term,NamedVarsList,Vars)),nl)))),
;nop(maplist(verbose_unify,Vars)))))),!.



  

  (= 
    (eval-S $Self $Form) 
    (, 
      (nonvar $Form) 
      (current-self $SelfS) 
      (== $SelfS $Self) 
      (set-det) 
      (do-metta True exec $Self $Form $Out)))

  (= 
    (eval-H $Term $X) 
    (eval-args $Term $X))
  (= 
    (eval-H $StackMax $Self $Term $X) 
    (eval-args = $_ $StackMax $Self $Term $X))

  (= 
    (print-goals $TermV) 
    (write-src $TermV))/*
eval_H(StackMax,Self,Term,X).

eval_H(StackMax,Self,Term,X):-
  Time = 90.0,
 ((always_exec(Term)) ->
    if_or_else(t1('=',_,StackMax,Self,Term,X),
                      (t2('=',_,StackMax,Self,Term,X)));
    call_max_time(t1('=',_,StackMax,Self,Term,X),   Time,
                              (t2('=',_,StackMax,Self,Term,X)))).

eval_H(Term,X):-
    current_self(Self), StackMax = 100,
    if_or_else((t1('=',_,StackMax,Self,Term,X),X\==Term),(t2('=',_,StackMax,Self,Term,X),nop(X\==Term))).


t1('=',_,StackMax,Self,Term,X):- eval_args('=',_,StackMax,Self,Term,X).
t2('=',_,StackMax,Self,Term,X):- fail, subst_args('=',_,StackMax,Self,Term,X).
*/
;eval_H(Term,X):- if_or_else((subst_args(Term,X),X\==Term),(eval_args(Term,Y),Y\==Term)).




  (= 
    (if-or-else $Goal $Else) 
    (or 
      (each-then 
        (call $Goal) True) 
      (call $Else)))


  (= 
    (interacting) 
    (, 
      (tracing) 
      (set-det)))
  (= 
    (interacting) 
    (, 
      (current-prolog-flag debug True) 
      (set-det)))
  (= 
    (interacting) 
    (, 
      (option-value interactive True) 
      (set-det)))
  (= 
    (interacting) 
    (, 
      (option-value prolog True) 
      (set-det)))

; call_max_time(+Goal, +MaxTime, +Else)

  (= 
    (call-max-time $Goal $MaxTime $Else) 
    (, 
      (interacting) 
      (set-det) 
      (if-or-else $Goal $Else)))
  (= 
    (call-max-time $Goal $MaxTime $Else) 
    (, 
      (set-det) 
      (if-or-else $Goal $Else)))
  (= 
    (call-max-time $Goal $MaxTime $Else) 
    (catch 
      (if-or-else 
        (call-with-time-limit $MaxTime $Goal) $Else) time-limit-exceeded $Else))



  (= 
    (catch-err $G $E $C) 
    (catch $G $E 
      (, 
        (notrace (if-t (atom $E) (throw $E))) $C)))

;repl:- option_value('repl',MeTTa),!,MeTTa.
;:- ensure_loaded(metta_toplevel).

;:- discontiguous do_metta_exec/3.

;repl:- setup_call_cleanup(flag(repl_level,Was,Was+1),repl0,
 ; (flag(repl_level,_,Was),(Was==0 -> maybe_halt(7) ; true))).


  (= 
    (repl) 
    (catch repl2 end-of-input True))


  (= 
    (repl1) 
    (with-option doing-repl True 
      (with-option repl True repl2))) ;catch((repeat, repl2, fail)'$aborted',true).

  (= 
    (repl2) 
    (, 
      (repeat) 
      (garbage-collect) 
      (ignore (catch (once repl3) restart-reading True)) 
      (fail)));notrace((current_input(In),nop(catch(load_history,_,true)))),
; ignore(install_readline(In)),
;set_MeTTa_flag(gc,true),
;set_MeTTa_flag(gc,false),
;with_option(not_a_reload,true,make),
;set_MeTTa_flag(gc,true),


  (= 
    (repl3) 
    (, 
      (notrace (, (flag eval-num $_ 0) (current-self $Self) (current-read-mode repl $Mode) (format (atom $P) 'metta ~w ~w> ' (:: $Self $Mode)))) 
      (setup-call-cleanup 
        (notrace (prompt $Was $P)) 
        (notrace (, (ttyflush) (repl-read $Expr) (ttyflush))) 
        (notrace (prompt $_ $Was))) 
      (if-trace replt 
        (fbug (repl-read $Mode $Expr))) 
      (notrace (if-t (== $Expr end-of-file) (throw end-of-input))) 
      (notrace (ignore (check-has-directive $Expr))) 
      (once (do-metta repl-true $Mode $Self $Expr $_))));ignore(shell('stty sane ; stty echo')),
;current_input(In),
;format(atom(P2),'metta> ',[]),
;fbug(repl_read(Expr)),
;ignore(shell('stty sane ; stty echo')),



  (= 
    (check-has-directive $Atom) 
    (, 
      (atom $Atom) 
      (atom-concat $_ . $Atom) 
      (set-det)))
  (= 
    (check-has-directive (call (= $N $V))) 
    (, 
      (nonvar $N) 
      (set-det) 
      (set-directive $N $V)))
  (= 
    (check-has-directive (call $Rtrace)) 
    (, 
      (== rtrace $Rtrace) 
      (set-det) 
      (rtrace) 
      (notrace (throw restart-reading))))
  (= 
    (check-has-directive $NEV) 
    (, 
      (atom $NEV) 
      (atomic-list-concat 
        (:: $N $V) = $NEV) 
      (set-directive $N $V)))
  (= 
    (check-has-directive (:: $AtEq $Value)) 
    (, 
      (atom $AtEq) 
      (atom-concat @ $Name $AtEq) 
      (set-directive $Name $Value)))
  (= 
    (check-has-directive $ModeChar) 
    (, 
      (atom $ModeChar) 
      (metta-interp-mode $ModeChar $Mode) 
      (set-det) 
      (set-directive repl-mode $ModeChar)))
  (= 
    (check-has-directive @) 
    (, 
      (do-show-options-values) 
      (set-det) 
      (notrace (throw restart-reading))))
  (= 
    (check-has-directive $AtEq) 
    (, 
      (atom $AtEq) 
      (atom-concat @ $NEV $AtEq) 
      (option-value $NEV $Foo) 
      (fbug (= $NEV $Foo)) 
      (set-det) 
      (notrace (throw restart-reading))))
  (= 
    (check_has_directive  $_) True)

  (= 
    (set-directive $N $V) 
    (, 
      (atom-concat @ $NN $N) 
      (set-det) 
      (set-directive $NN $V)))
  (= 
    (set-directive $N $V) 
    (, 
      (== $N mode) 
      (set-det) 
      (set-directive repl-mode $V)))
  (= 
    (set-directive $N $V) 
    (, 
      (show-call (set-option-value-interp $N $V)) 
      (set-det) 
      (notrace (throw restart-reading))))


  (= 
    (read-pending-white-codes $In) 
    (, 
      (read-pending-codes $In 
        (:: 10) Nil) 
      (set-det)))
  (= 
    (read_pending_white_codes  $_) True)


  (= 
    (call-for-term-variables4v $Term Nil 
      (as-tf $Term $TF) $NamedVarsList $TF) 
    (, 
      (get-global-varnames $NamedVarsList) 
      (set-det)))
  (= 
    (call-for-term-variables4v $Term 
      (:: $X) $Term $NamedVarsList $X) 
    (get-global-varnames $NamedVarsList))



  (= 
    (not-in-eq $List $Element) 
    (, 
      (member $V $List) 
      (== $V $Element)))


  (= 
    (get-term-variables $Term $DontCaresN $CSingletonsN $CNonSingletonsN) 
    (, 
      (term-variables $Term $AllVars) 
      (get-global-varnames $VNs) 
      (writeqln (= (term-variables $Term $AllVars) $VNs)) 
      (term-singletons $Term $Singletons) 
      (term-dont-cares $Term $DontCares) 
      (include 
        (not-in-eq $Singletons) $AllVars $NonSingletons) 
      (include 
        (not-in-eq $DontCares) $NonSingletons $CNonSingletons) 
      (include 
        (not-in-eq $DontCares) $Singletons $CSingletons) 
      (maplist into-named-vars 
        (:: $DontCares $CSingletons $CNonSingletons) 
        (:: $DontCaresN $CSingletonsN $CNonSingletonsN)) 
      (writeqln (:: $DontCaresN $CSingletonsN $CNonSingletonsN))))


  (= 
    (term-dont-cares $Term $DontCares) 
    (, 
      (term-variables $Term $AllVars) 
      (get-global-varnames $VNs) 
      (include 
        (has-sub-var $AllVars) $VNs $HVNs) 
      (include underscore-vars $HVNs $DontCareNs) 
      (maplist 
        (arg 2) $DontCareNs $DontCares)))


  (= 
    (into-named-vars $Vars $L) 
    (, 
      (is-list $Vars) 
      (set-det) 
      (maplist name-for-var-vn $Vars $L)))
  (= 
    (into-named-vars $Vars $L) 
    (, 
      (term-variables $Vars $VVs) 
      (set-det) 
      (into-named-vars $VVs $L)))


  (= 
    (has-sub-var $AllVars 
      (= $_ $V)) 
    (sub-var $V $AllVars))

  (= 
    (underscore-vars $V) 
    (, 
      (var $V) 
      (set-det) 
      (name-for-var $V $N) 
      (set-det) 
      (underscore-vars $N)))
  (= 
    (underscore-vars (= $N $_)) 
    (, 
      (set-det) 
      (atomic $N) 
      (set-det) 
      (underscore-vars $N)))
  (= 
    (underscore-vars $N) 
    (, 
      (atomic $N) 
      (set-det) 
      (atom-concat - $_ $N)))


  (= 
    (get-global-varnames $VNs) 
    (, 
      (nb-current variable-names $VNs) 
      (\== $VNs Nil) 
      (set-det)))
  (= 
    (get-global-varnames $VNs) 
    (, 
      (prolog-load-context variable-names $VNs) 
      (set-det)))

  (= 
    (maybe-set-var-names $List) 
    (, 
      (== $List Nil) 
      (set-det)))
  (= 
    (maybe-set-var-names $List) 
    (, 
      (is-list $List) 
      (set-det) 
      (nb-linkval variable-names $List))); fbug(maybe_set_var_names(List)),

  (= 
    (maybe_set_var_names  $_) True)


  (= 
    (name-for-var-vn $V 
      (= $N $V)) 
    (name-for-var $V $N))


  (= 
    (name-for-var $V $N) 
    (, 
      (var $V) 
      (set-det) 
      (get-global-varnames $VNs) 
      (member 
        (= $N $VV) $VNs) 
      (== $VV $V) 
      (set-det)))
  (= 
    (name-for-var 
      (= $N $_) $N) 
    (set-det))
  (= 
    (name-for-var $V $N) 
    (, 
      (term-to-atom $V $N) 
      (set-det)))


  ;call_for_term_variables5(Term,[],as_tf(Term,TF),[],TF):- atom(Term),!.

  (= 
    (call-for-term-variables5 $Term Nil Nil Nil 
      (as-tf $Term $TF) Nil $TF) 
    (, 
      (ground $Term) 
      (set-det)))
  (= 
    (call-for-term-variables5 $Term $DC Nil Nil 
      (call-nth $Term $TF) $DC $TF) 
    (, 
      (ground $Term) 
      (set-det)))
  (= 
    (call_for_term_variables5  $Term $_ () 
      ( (= $_ $Var)) 
      (call_nth  $Term $Count) 
      ( (= Count $Count)) $Var) True)
  (= 
    (call_for_term_variables5  $Term $_ 
      ( (= $_ $Var)) () 
      (call_nth  $Term $Count) 
      ( (= Count $Count)) $Var) True)
  (= 
    (call_for_term_variables5  $Term $_ $Vars 
      ( (= $_ $Var)) $Term $Vars $Var) True)
  (= 
    (call_for_term_variables5  $Term $_ 
      ( (= $_ $Var)) $Vars $Term $Vars $Var) True)
  (= 
    (call_for_term_variables5  $Term $_ $SVars $Vars 
      (call_nth  $Term $Count) 
      ($Vars $SVars) $Count) True)




  (= 
    (is-interactive $From) 
    (notrace (is-interactive0 $From)))

  (= 
    (is-interactive0 $From) 
    (, 
      (== $From False) 
      (set-det) 
      (fail)))
  (= 
    (is-interactive0 $From) 
    (, 
      (atomic $From) 
      (is-stream $From) 
      (set-det) 
      (not (stream-property $From (filename $_)))))
  (= 
    (is-interactive0 $From) 
    (, 
      (= $From repl-true) 
      (set-det)))
  (= 
    (is-interactive0 $From) 
    (, 
      (= $From True) 
      (set-det)))



  (set-prolog-flag history 3)


  (= 
    (inside-assert $Var $Var) 
    (, 
      (not (compound $Var)) 
      (set-det)))
  (= 
    (inside-assert 
      (:: $H $IA $_) $IA) 
    (, 
      (atom $H) 
      (atom-concat assert $_ $H) 
      (set-det)))
  (= 
    (inside-assert $Conz $Conz) 
    (, 
      (is-conz $Conz) 
      (set-det)))
  (= 
    (inside-assert 
      !$I $O) 
    (, 
      (set-det) 
      (inside-assert $I $O)))
  (= 
    (inside-assert $Eval $O) 
    (, 
      (functor $Eval eval-H $A) 
      (is $A1 
        (- $A 1)) 
      (arg $A1 $Eval $I) 
      (set-det) 
      (inside-assert $I $O)))
;inside_assert(eval_H(I,C),eval_H(O,C)):- !, inside_assert(I,O).
;inside_assert(eval_H(A,B,I,C),eval_H(A,B,O,C)):- !, inside_assert(I,O).
  (= 
    (inside-assert 
      (call $I) $O) 
    (, 
      (set-det) 
      (inside-assert $I $O)))
  (= 
    (inside-assert 
      (?- $I) $O) 
    (, 
      (set-det) 
      (inside-assert $I $O)))
  (= 
    (inside-assert 
      !$I $O) 
    (, 
      (set-det) 
      (inside-assert $I $O)))
  (= 
    (inside_assert  $Var $Var) True)


  (= 
    (current-read-mode repl $Mode) 
    (, 
      (if-then-else 
        (, 
          (nb-current repl-mode $Mode) 
          (\== $Mode Nil)) True 
        (= $Mode +)) 
      (set-det)))
  (= 
    (current-read-mode file $Mode) 
    (if-then-else 
      (, 
        (nb-current file-mode $Mode) 
        (\== $Mode Nil)) True 
      (= $Mode +)))




  (= 
    (eval (all $Form)) 
    (, 
      (nonvar $Form) 
      (set-det) 
      (forall 
        (eval $Form $_) True)))
  (= 
    (eval $Form) 
    (, 
      (current-self $Self) 
      (do-metta True exec $Self $Form $Out)))
  (= 
    (eval $Form $Out) 
    (, 
      (current-self $Self) 
      (eval $Self $Form $Out))) 
  (= 
    (eval $Self $Form $Out) 
    (do-metta prolog exec $Self $Form $Out))


  (= 
    (name-vars $P) 
    (ignore (name-vars0 $P)))

  (= 
    (name-vars0 (= $X $Y)) 
    (, 
      (== $X $Y) 
      (set-det)))
  (= 
    (name_vars0  
      (= $X $X)) True)


  (= 
    (interactively-do-metta-exec $From $Self $TermV $Term $X $NamedVarsList $Was $Output $FOut) 
    (catch 
      (interactively-do-metta-exec0 $From $Self $TermV $Term $X $NamedVarsList $Was $Output $FOut) $aborted 
      (fbug (aborted $From $TermV))))


;interactively_do_metta_exec0(file(_),Self,_TermV,Term,X,_NamedVarsList,_Was,_Output,_FOut):- file_hides_results(Term),!,eval_args(Self,Term,X).

  (= 
    (interactively-do-metta-exec0 $From $Self $TermV $Term $X $NamedVarsList $Was $Output $FOut) 
    (, 
      (notrace (, (= $Result (res $FOut)) (inside-assert $Term $BaseEval) (if-then-else is-compatio (option-else answer $Leap leap) (option-else answer $Leap each)) (= $Control (contrl inf $Leap)) (= $Skipping $_) (if-then-else (, (= $From (file $Filename)) (option-value exec skip) (not (always-exec $BaseEval))) (, (= $GG (, (skip $Term) (deterministic $Complete))) (= $Skipping 1) (set-det)) (, (= $GG (, $Term (deterministic $Complete) (nb-setarg 1 $Result $Output))) (set-det) (flag result-num $_ 0) (= $PL (eval $Self $BaseEval $X)) (not (not (, (with_self  (user) (maplist name-vars $NamedVarsList)) (with_self  (user) (name-vars (= OUT $X))) (if-t (== $Skipping 1) (writeln ' ; SKIPPING')) (if-t (or (is-interactive $From) (== $Skipping 1)) (, (if-t (not (option-value doing-repl True)) (if-t (not (option-value repl True)) (if-t (option-value prolog True) (add-history-pl $PL)))) (if-t (option-value repl True) (add-history-src !$BaseEval)))) (prolog-only (color-g-mesg #da70d6 (, (write '% DEBUG:   ') (writeq $PL) (writeln .))))))))))) 
      (if-compatio (write [)) 
      (or 
        (each-then 
          (forall-interactive $From $WasInteractive $Complete 
            (timed-call $GG $Seconds) 
            (or 
              (, 
                (if-then-else 
                  (== $Complete True) 
                  (set-det) True) 
                (set-option-value interactive $WasInteractive) 
                (= $Control 
                  (contrl $Max $DoLeap)) 
                (nb-setarg 1 $Result $Output) 
                (current-input $CI) 
                (read-pending-codes $CI $_ Nil) 
                (flag result-num $R 
                  (+ $R 1)) 
                (flag result-num $ResNum $ResNum) 
                (if-t 
                  (=< $ResNum $Max) 
                  (, 
                    (if-then-else 
                      (, 
                        (== $ResNum 1) 
                        (== $Complete True)) 
                      (, 
                        (not-compatio (format '~NDeterministic: ' Nil)) 
                        (set-det)) 
                      (if-then-else 
                        (== $Complete True) 
                        (, 
                          (not-compatio (format '~NLast Result(~w): ' (:: $ResNum))) 
                          (set-det)) 
                        (not-compatio (format '~NNDet Result(~w): ' (:: $ResNum))))) 
                    (color-g-mesg-ok yellow 
                      (ignore (, (not-compatio (if-t (not (atomic $Output)) nl)) (if-compatio (, (if-t (> $ResNum 1) (write , )) (with-indents False (write-asrc $Output)))) (not-compatio (write-asrc $Output)) (not-compatio nl)))) 
                    (not-compatio (with-output-to user-error (give-time Execution $Seconds))) 
                    (color-g-mesg green 
                      (ignore (if-then-else (\=@= $NamedVarsList $Was) (not-compatio (, (maplist print-var $NamedVarsList) (nl))) True))))) 
                (if-then 
                  (, 
                    (\== $Complete True) $WasInteractive 
                    (\== $DoLeap leap) 
                    (< $ResNum $Max)) 
                  (, 
                    (write "press ';' for more solutions ") 
                    (get-single-char-key $C) 
                    (not-compatio (, (writeq (= key $C)) (nl))) 
                    (if-then-else 
                      (== $C b) 
                      (, 
                        (once repl) 
                        (fail)) 
                      (if-then-else 
                        (== $C m) make 
                        (if-then-else 
                          (== $C t) 
                          (, 
                            (nop (set-debug eval True)) 
                            (rtrace)) 
                          (if-then-else 
                            (== $C T) 
                            (set-debug eval True) 
                            (if-then-else 
                              (== $C or) True 
                              (if-then-else 
                                (== $C 
                                  (esc [A 
                                    (:: 27 91 65))) 
                                (nb-setarg 2 $Control leap) 
                                (if-then-else 
                                  (== $C L) 
                                  (nb-setarg 1 $Control $ResNum) 
                                  (if-then-else 
                                    (== $C l) 
                                    (nb-setarg 2 $Control leap) 
                                    (if-then-else 
                                      (or 
                                        (== $C 
)                                       (== $C ))                                    (, 
                                        (set-det) 
                                        (fail)) 
                                      (, 
                                        (set-det) 
                                        (fail)))))))))))))) 
              (if-then-else 
                (, 
                  (\== $Complete True) 
                  (not $WasInteractive) 
                  (= $Control 
                    (contrl $Max leap))) True 
                (if-then-else 
                  (== $Complete True) 
                  (set-det) True)))) 
          (, 
            (ignore (= $Result (res $FOut))) 
            (ignore (= $Output $FOut)))) 
        (, 
          (flag result-num $ResNum $ResNum) 
          (if-then-else 
            (== $ResNum 0) 
            (, 
              (not-compatio (format ~N<no-results>~n~n)) 
              (set-det)) True))) 
      (if-compatio (write ]
))    (ignore (= $Result (res $FOut))))); Initialize Control as a compound term with 'each' as its argument.
;GG = interact(['Result'=X|NamedVarsList],Term,trace_off),
;Output =
;FOut = "Skipped",
;color_g_mesg('#da70d6', (write('; SKIPPING: '), writeq(eval_H(100,Self,BaseEval,X)),writeln('.'))),
; color_g_mesg('#fa90f6', (writeln('; SKIPPING'), with_indents(true,write_src(exec(BaseEval))))),
;  if_t(is_list(BaseEval),add_history_src(exec(TermV))),
;$ locally(set_MeTTa_flag(gc,false),
; metta_toplevel
; with_indents(true,
; add_history_src(exec(BaseEval)),
;if_t(TermV\=BaseEval,color_g_mesg('#fa90f6', (write('; '), with_indents(false,write_src(exec(BaseEval)))))),
;may_rtrace
;repeat,
;or Nondet
;not_compatio(give_time('Execution',Seconds),





  (= 
    (mqd) 
    (forall 
      (metta-atom $KB 
        (:: query-info $E $T $Q)) 
      (, 
        (writeln $E) 
        (term-variables $T $TVs) 
        (term-variables $Q $QVs) 
        (intersection $TVs $QVs $_ $_ $SVs) 
        (notrace (eval (:: match &flybase $Q $T) $SVs)))))



  (= 
    (get-single-char-key $O) 
    (, 
      (get-single-char $C) 
      (get-single-char-key $C $O)))
  (= 
    (get-single-char-key 27 
      (esc $A 
        (Cons  27 $O))) 
    (, 
      (set-det) 
      (read-pending-codes user-input $O Nil) 
      (name $A $O)))
  (= 
    (get-single-char-key $C $A) 
    (name $A 
      (:: $C)))


  (= 
    (forall-interactive 
      (file $_) False $Complete $Goal $After) 
    (, 
      (set-det) $Goal 
      (if-then-else 
        (== $Complete True) 
        (, $After 
          (set-det)) 
        (not $After))))
  (= 
    (forall-interactive prolog False $Complete $Goal $After) 
    (, 
      (set-det) $Goal 
      (if-then-else 
        (== $Complete True) 
        (set-det) True) 
      (quietly $After)))
  (= 
    (forall-interactive $From $WasInteractive $Complete $Goal $After) 
    (, 
      (if-then-else 
        (is-interactive $From) 
        (= $WasInteractive True) 
        (= $WasInteractive False)) 
      (set-det) $Goal 
      (if-then-else 
        (== $Complete True) 
        (, 
          (quietly $After) 
          (set-det)) 
        (quietly (not $After)))))


  (= 
    (print-var (= $Name $Var)) 
    (print-var $Name $Var))
;print_var(Name,_Var) :- atom_concat('Num',Rest,Name),atom_number(Rest,_),!.


  (= 
    (write-var $V) 
    (, 
      (var $V) 
      (set-det) 
      (write-dvar $V) 
      (set-det))) 
  (= 
    (write-var $S) 
    (, 
      (set-det) 
      (write-dvar $S) 
      (set-det))) 
  (= 
    (write-var $V) 
    (, 
      (write-dvar $V) 
      (set-det)))


  (= 
    (print-var $Name $Var) 
    (, 
      (write-var $Name) 
      (write  = ) 
      (write-asrc $Var) 
      (nl)))


  (= 
    (write-asrc $Var) 
    (, 
      (copy-term $Var $Copy $Goals) 
      (= $Var $Copy) 
      (write-asrc $Var $Goals)))
  (= 
    (write-asrc $Var Nil) 
    (write-src $Var))
  (= 
    (write-asrc $Var 
      (Cons  $G $Goals)) 
    (, 
      (write-src $Var) 
      (write  { ) 
      (write-src $G) 
      (maplist write-src-space $Goals) 
      (writeln  } )))


  (= 
    (write-src-space $Goal) 
    (, 
      (write ' ') 
      (write-src $Goal)))

; Entry point for the user to call with tracing enabled

  (= 
    (toplevel-goal $Goal) 
    (, 
      (term-variables $Goal $Vars) 
      (trace-goal $Vars $Goal trace-off)))

; Entry point for the user to call with tracing enabled

  (= 
    (trace-goal $Goal) 
    (trace-goal $Goal trace-on))

; Handle tracing
  (= 
    (trace-goal $Goal $Tracing) 
    (, 
      (if-then-else 
        (== $Tracing trace-on) 
        (, 
          (writeln 'Entering goal:') 
          (writeln $Goal)) True) 
      (term-variables $Goal $Variables) 
      (if-then-else 
        (call $Goal) 
        (, 
          (if-then-else 
            (== $Tracing trace-on) 
            (, 
              (writeln 'Goal succeeded with:') 
              (writeln $Variables)) True) 
          (interact $Variables $Goal $Tracing)) 
        (, 
          (if-then-else 
            (== $Tracing trace-on) 
            (writeln 'Goal failed.') True) False))))

; Interaction with the user

  (= 
    (interact $Variables $Goal $Tracing) 
    (, 
      (call $Goal) 
      (write 'Solution: ') 
      (write-src $Variables) 
      (write ' [;next]?') 
      (get-single-char $Code) 
      (if-then-else 
        (command $Code $Command) 
        (handle-command $Command $Variables $Goal $Tracing) 
        (, 
          (writeln 'Unknown command.') 
          (interact $Variables $Goal $Tracing))))); handle unknown commands




  (dynamic (/ is-installed-readline-editline 1))
  (volatile (/ is-installed-readline-editline 1))

  (= 
    (install-readline-editline) 
    (, 
      (current-input $Input) 
      (install-readline $Input) 
      (set-det)))


  (= 
    (install-readline $Input) 
    (, 
      (is-installed-readline-editline $Input) 
      (set-det)))
  (= 
    (install-readline $_) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (install-readline $_) 
    (set-det))
  (= 
    (install-readline $Input) 
    (, 
      (add-atom  &self 
        (is_installed_readline_editline  $Input)) 
      (install-readline-editline1) 
      (use-module (library readline)) 
      (use-module (library editline)) 
      (nop (catch load-history $_ True)) 
      (add-history-string "!(pfb3)") 
      (add-history-string "!(load-flybase-full)") 
      (add-history-string "!(obo-alt-id $X BS:00063)") 
      (add-history-string "!(and (total-rows $T TR$) (unique-values $T2 $Col $TR))") 
      (nop (ignore (with_self  (editline) (el-wrap)))) 
      (nop (ignore (with_self  (editline) (add-prolog-commands $Input))))))



  (dynamic (/ setup-done 0))
  (volatile (/ setup-done 0))


  (= 
    (install-readline-editline1) 
    (, 
      (setup-done) 
      (set-det)))
  (= 
    (install-readline-editline1) 
    (, 
      (asserta setup-done) 
      (with_self  
        ($toplevel) 
        (, 
          ($clean-history) 
          (apple-setup-app) 
          ($run-initialization) 
          ($load-system-init-file) 
          (set-toplevel) 
          ($set-file-search-paths) 
          (init-debug-flags) 
          (start-pldoc) 
          (opt-attach-packs) 
          (load-init-file) 
          (catch setup-backtrace $E1 
            (print-message warning $E1)) 
          (catch setup-readline $E2 
            (print-message warning $E2)) 
          (catch setup-history $E3 
            (print-message warning $E3)) 
          (catch setup-colors $E4 
            (print-message warning $E4)))) 
      (install-readline user-input)))


; Command descriptions

  (= 
    (command  59 retry) True)    ; ';' to retry
  (= 
    (command  115 skip) True)    ; 's' to skip to the next solution
  (= 
    (command  108 leap) True)    ; 'l' to leap (end the debugging session)
  (= 
    (command  103 goals) True)   ; 'g' to show current goals
  (= 
    (command  102 fail) True)    ; 'f' to force fail
  (= 
    (command  116 trace) True)   ; 't' to toggle tracing
  (= 
    (command  117 up) True)      ; 'u' to continue without interruption
  (= 
    (command  101 exit) True)    ; 'e' to exit the debugger
  (= 
    (command  97 abort) True)    ; 'a' to abort
  (= 
    (command  98 break) True)    ; 'b' to set a breakpoint
  (= 
    (command  99 creep) True)    ; 'c' to proceed step by step
  (= 
    (command  104 help) True)    ; 'h' for help
  (= 
    (command  65 alternatives) True)    ; 'A' for alternatives
  (= 
    (command  109 make) True)       ; 'm' for make (recompile)
  (= 
    (command  67 compile) True)     ; 'C' for Compile (compile new executable)


  (style-check (- singleton))

; Command implementations

  (= 
    (handle-command make $Variables $Goal $Tracing) 
    (, 
      (writeln Recompiling...) 
      (make) 
      (fail))); Insert the logic to recompile the code.
; This might involve calling `make/0` or similar.
; This is assuming your MeTTa environment has a `make` predicate.
 ; interact(Variables, Goal, Tracing).

  (= 
    (handle-command compile $Variables $Goal $Tracing) 
    (, 
      (writeln 'Compiling new executable...') 
      (fail))); Insert the logic to compile a new executable.
; This will depend on how you compile MeTTa programs in your environment.
; For example, you might use `qsave_program/2` to create an executable.
; Pseudocode: compile_executable(ExecutableName)
 ; interact(Variables, Goal, Tracing).
  (= 
    (handle-command alternatives $Variables $Goal $Tracing) 
    (, 
      (writeln 'Showing alternatives...') 
      (writeln 'Alternatives for current goal:') 
      (writeln $Goal) 
      (fail))); Here you would include the logic for displaying the alternatives.
; For example, showing other clauses that could be tried for the current goal.
; Pseudocode: find_alternatives(Goal, Alternatives)
; Pseudocode: print_alternatives(Alternatives)
 ; interact(Variables, Goal, Tracing).
; Extend the command handling with the 'help' command implementation
  (= 
    (handle-command help $Variables $Goal $Tracing) 
    (, 
      (print-help) 
      (fail))) ; interact(Variables, Goal, Tracing).
  (= 
    (handle-command abort $_ $_ $_) 
    (, 
      (writeln Aborting...) 
      (abort)))
  (= 
    (handle-command break $Variables $Goal $Tracing) 
    (, 
      (writeln 'Breakpoint set.') 
      (fail))); Here you should define what 'setting a breakpoint' means in your context
 ; interact(Variables, Goal, Tracing).
  (= 
    (handle-command creep $Variables $Goal $Tracing) 
    (, 
      (writeln Creeping...) 
      (trace))); Here you should define how to 'creep' (step by step execution) through the code
 ; interact(Variables, Goal, Tracing).
  (= 
    (handle-command retry $Variables $Goal $Tracing) 
    (, 
      (writeln Continuing...) 
      (set-det)))
    ;trace_goal(Goal, Tracing).
  (= 
    (handle-command skip $Variables $Goal $Tracing) 
    (writeln Skipping...))
  (= 
    (handle-command leap $_ $_ $_) 
    (, 
      (writeln Leaping...) 
      (nontrace))) ; Cut to ensure we stop the debugger
  (= 
    (handle-command goals $Variables $Goal $Tracing) 
    (, 
      (writeln 'Current goal:') 
      (writeln $Goal) 
      (writeln 'Current variables:') 
      (writeln $Variables) 
      (bt) 
      (fail))) ; interact(Variables, Goal, Tracing).
  (= 
    (handle-command fail $_ $_ $_) 
    (, 
      (writeln 'Forcing failure...') 
      (fail)))
  (= 
    (handle-command trace $Variables $Goal $Tracing) 
    (, 
      (if-then-else 
        (== $Tracing trace-on) 
        (, 
          (= $NewTracing trace-off) 
          (writeln 'Tracing disabled.')) 
        (, 
          (= $NewTracing trace-on) 
          (writeln 'Tracing enabled.'))) 
      (interact $Variables $Goal $NewTracing)))
  (= 
    (handle-command up $Variables $Goal $Tracing) 
    (, 
      (writeln 'Continuing up...') 
      (repeat) 
      (if-then-else 
        (trace-goal $Goal $Tracing) True 
        (, 
          (set-det) 
          (fail)))))
  (= 
    (handle-command exit $_ $_ $_) 
    (, 
      (writeln 'Exiting debugger...') 
      (set-det))) ; Cut to ensure we exit the debugger


  (style-check (+ singleton))


; Help description

  (= 
    (print-help) 
    (, 
      (writeln 'Debugger commands:') 
      (writeln '(;)  next             - Retry with next solution.') 
      (writeln '(g)  goal             - Show the current goal.') 
      (writeln '(u)  up               - Finish this goal without interruption.') 
      (writeln '(s)  skip             - Skip to the next solution.') 
      (writeln '(c)  creep or <space> - Proceed step by step.') 
      (writeln '(l)  leap             - Leap over (the debugging).') 
      (writeln '(f)  fail             - Force the current goal to fail.') 
      (writeln '(B)  back             - Go back to the previous step.') 
      (writeln '(t)  trace            - Toggle tracing on or off.') 
      (writeln '(e)  exit             - Exit the debugger.') 
      (writeln '(a)  abort            - Abort the current operation.') 
      (writeln '(b)  break            - Break to a new sub-REPL.') 
      (writeln '(h)  help             - Display this help message.') 
      (writeln '(A)  alternatives     - Show alternative solutions.') 
      (writeln '(m)  make             - Recompile/Update the current running code.') 
      (writeln '(C)  compile          - Compile a fresh executable (based on the running state).') 
      (writeln '(E)  error msg        - Show the latest error messages.') 
      (writeln '(r)  retry            - Retry the previous command.') 
      (writeln '(I)  info             - Show information about the current state.') 
      (set-det)))





  (= 
    (really-trace) 
    (once (or (option-value exec rtrace) (or (option-value eval rtrace) (or (is-debugging exec) (is-debugging eval))))))
; !(pragma! exec rtrace)

  (= 
    (may-rtrace $Goal) 
    (, 
      (really-trace) 
      (set-det) 
      (really-rtrace $Goal)))
  (= 
    (may-rtrace $Goal) 
    (or 
      (each-then $Goal True) 
      (, 
        (not tracing) 
        (trace) 
        (really-rtrace $Goal))))

  (= 
    (really-rtrace $Goal) 
    (, 
      (is-transpiling) 
      (set-det) 
      (rtrace (call $Goal))))
  (= 
    (really-rtrace $Goal) 
    (with-debug eval 
      (with-debug exec $Goal)))


  (= 
    (rtrace-on-existence-error $G) 
    (, 
      (set-det) 
      (catch-err $G $E 
        (, 
          (fbug (= $E $G)) 
          (not tracing) 
          (trace) 
          (rtrace $G)))))
;rtrace_on_existence_error(G):- catch(G,error(existence_error(procedure,W),Where),rtrace(G)).

;MeTTa_only(Goal):- !,Goal.

  (= 
    (prolog-only $Goal) 
    (if-trace prolog $Goal))


  (= 
    (write-compiled-exec $Exec $Goal) 
    (, 
      (compile-for-exec $Res $Exec $Goal) 
      (notrace (color-g-mesg #114411 (print-pl-source (= (answer2 $Res) $Goal))))));  ignore(Res = '$VAR'('ExecRes')),



  (= 
    (verbose-unify $Term) 
    (verbose-unify trace $Term))
  (= 
    (verbose-unify $What $Term) 
    (, 
      (term-variables $Term $Vars) 
      (maplist 
        (verbose-unify0 $What) $Vars) 
      (set-det)))

  (= 
    (verbose-unify0 $What $Var) 
    (put-attr $Var verbose-unify $What))

  (= 
    (with_self  
      (verbose-unify) 
      (attr-unify-hook $Attr $Value)) 
    (, 
      (format ~N~q~n 
        (:: (with_self  (verbose-unify) (attr-unify-hook $Attr $Value)))) 
      (vu $Attr $Value)))

  (= 
    (vu $Attr $Value) 
    (, 
      (is-ftVar $Value) 
      (set-det)))
  (= 
    (vu fail $Value) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (vu True $Value) 
    (set-det))
  (= 
    (vu trace $Value) 
    (trace))

  (nodebug (metta eval))
  (nodebug (metta exec))
  (nodebug (metta load))
  (nodebug (metta prolog))
; Measures the execution time of a MeTTa goal and displays the duration in seconds,
; milliseconds, or microseconds, depending on the execution time.
;
; Args:
;   - Goal: The MeTTa goal to be executed and timed.
;
; The predicate uses the `statistics/2` predicate to measure the CPU time before
; and after executing the provided goal. It calculates the elapsed time in seconds
; and converts it to milliseconds and microseconds. The output is formatted to
; provide clear timing information:
;
; - If the execution takes more than 2 seconds, it displays the time in seconds.
; - If the execution takes between 1 millisecond and 2 seconds, it displays the time
;   in milliseconds.
; - If the execution takes less than 1 millisecond, it displays the time in microseconds.
;
; Example usage:
;   ?- time_eval(my_goal(X)).
;
;   ?- time_eval(sleep(0.95)).
;
; Output examples:
;   ; Evaluation took 2.34 seconds.
;   ; Evaluation took 123.45 ms.
;   ; Evaluation took 0.012 ms. (12.33 microseconds)
;

  (= 
    (time-eval $Goal) 
    (time-eval Evaluation $Goal))
  (= 
    (time-eval $What $Goal) 
    (, 
      (timed-call $Goal $Seconds) 
      (give-time $What $Seconds)))


  (= 
    (give-time $What $Seconds) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (give-time $What $Seconds) 
    (, 
      (is $Milliseconds 
        (* $Seconds 1000)) 
      (if-then-else 
        (> $Seconds 2) 
        (format '~N; ~w took ~2f seconds.~n~n' 
          (:: $What $Seconds)) 
        (if-then-else 
          (>= $Milliseconds 1) 
          (format '~N; ~w took ~3f secs. (~2f milliseconds) ~n~n' 
            (:: $What $Seconds $Milliseconds)) 
          (, 
            (is $Micro 
              (* $Milliseconds 1000)) 
            (format '~N; ~w took ~6f secs. (~2f microseconds) ~n~n' 
              (:: $What $Seconds $Micro)))))))


  (= 
    (timed-call $Goal $Seconds) 
    (, 
      (statistics cputime $Start) 
      (call $Goal) 
      (statistics cputime $End) 
      (is $Seconds 
        (- $End $Start))))

;:- nb_setval(cmt_override,lse('; ',' !(" ',' ") ')).


  (abolish (/ fbug 1))

  (= 
    (fbug $_) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (fbug $Info) 
    (notrace (in-cmt (color-g-mesg #2f2f2f (write-src $Info)))))

  (= 
    (example0  $_) 
    (empty))

  (= 
    (example1  a) True) 
  (= 
    (example1  $_) 
    (empty))

  (= 
    (example2  a) True) 
  (= 
    (example2  b) True) 
  (= 
    (example2  $_) 
    (empty))

  (= 
    (example3  a) True) 
  (= 
    (example3  b) True) 
  (= 
    (example3  c) True) 
  (= 
    (example3  $_) 
    (empty))
;eval_H(100,'&self',['change-state!','&var',[+,1,['get-state','&var']]],OUT)
;dcall(X):- (call(X),deterministic(YN)),trace,((YN==true)->!;true).

  (= 
    (chkdet-call $XX) 
    (, 
      (set-det) 
      (call $XX)))

  (= 
    (chkdet-call0 $XX) 
    (, 
      (set-det) 
      (call $XX)))


  (= 
    (dcall0000000000 $XX) 
    (, 
      (= $USol 
        (sol dead)) 
      (copy-term $XX $X) 
      (call-nth $USol $X $Nth $Det $Prev) 
      (= $XX $Prev) 
      (if-then-else 
        (== $Det yes) 
        (, 
          (set-det) 
          (or 
            (= $XX $Prev) 
            (= $XX $X))) 
        (, 
          (if-then-else 
            (var $Nth) 
            (, 
              (set-det) 
              (\== $Prev dead)) True) 
          (if-then-else 
            (== $Nth 1) 
            (set-det) True)))));fbug(call_nth(USol,X,Nth,Det,Prev)),



  (= 
    (call-nth $USol $XX $Nth $Det $Prev) 
    (, 
      (repeat) 
      (or 
        (each-then 
          (, 
            (call-nth $XX $Nth) 
            (deterministic $Det) 
            (arg 1 $USol $Prev)) 
          (nb-setarg 1 $USol $XX)) 
        (, 
          (set-det) 
          (arg 1 $USol $Prev)))))


  (= 
    (catch-red $Term) 
    (catch-err $Term $E 
      (pp-m red 
        (in $Term $E))))
;catch_red(Term):- call(Term).


  (= 
    (s2p $I $O) 
    (, 
      (sexpr-s2p $I $O) 
      (set-det)))


  (= 
    (discover-head $Self $Load $Head) 
    (ignore (, (= (Cons  $Fn $PredDecl) $Head) (nop (, (arg-types $PredDecl Nil $EachArg) (metta-anew1 $Load (metta-head $Self $Fn $EachArg)))))))


  (= 
    (discover-body $Self $Load $Body) 
    (nop (, (= (Cons  $Fn $PredDecl) $Body) (arg-types $PredDecl Nil $EachArg) (metta-anew1 $Load (metta-body $Self $Fn $EachArg)))))


  (= 
    (decl-length $TypeDecL $Len) 
    (, 
      (is-list $TypeDecL) 
      (set-det) 
      (length $TypeDecL $Len)))
  (= 
    (decl_length  $TypeDecL 1) True)


  (= 
    (arg-types 
      (Cons  $Ar $L) $R $LR) 
    (, 
      (== $Ar ->) 
      (set-det) 
      (arg-types $L $R $LR)))
  (= 
    (arg-types 
      (:: (Cons  $Ar $L)) $R $LR) 
    (, 
      (== $Ar ->) 
      (set-det) 
      (arg-types $L $R $LR)))
  (= 
    (arg-types $L $R $LR) 
    (append $L $R $LR))

;:- ensure_loaded('../../examples/factorial').
;:- ensure_loaded('../../examples/fibonacci').

;print_preds_to_functs:-preds_to_functs_src(factorial_tail_basic)

  (= 
    (ggtrace $G) 
    (call $G))

  (= 
    (ggtrace0 $G) 
    (, 
      (ggtrace) 
      (leash (- all)) 
      (visible (- all)) 
      (visible (+ call)) 
      (visible (+ exception)) 
      (maybe-leash (+ exception)) 
      (setup-call-cleanup trace $G notrace))); debug,
;visible(+redo),


  (dynamic (/ began-loon 1))

  (= 
    (loon) 
    (loon typein))



  (= 
    (catch-red-ignore $G) 
    (or 
      (each-then 
        (catch-red $G) True) True))


  (export (/ loon 1))
  (public (/ loon 1))


;loon(Why):- began_loon(Why),!,fbugio(begun_loon(Why)).

  (= 
    (loon $Why) 
    (, 
      (is-compiling) 
      (set-det) 
      (fbug (compiling-loon $Why)) 
      (set-det)))
;loon( _Y):- current_MeTTa_flag(os_argv,ArgV),member('-s',ArgV),!.
; Why\==toplevel,Why\==default, Why\==program,!
  (= 
    (loon $Why) 
    (, 
      (is-compiled) 
      (\== $Why toplevel) 
      (set-det) 
      (fbugio (compiled-loon $Why)) 
      (set-det)))
  (= 
    (loon $Why) 
    (, 
      (began-loon $_) 
      (set-det) 
      (fbugio (skip-loon $Why))))
  (= 
    (loon $Why) 
    (, 
      (fbugio (began-loon $Why)) 
      (add-atom  &self 
        (began_loon  $Why)) 
      (do-loon)))


  (= 
    (do-loon) 
    (, 
      (ignore (, (not (prolog-load-context reloading True)) (maplist catch-red-ignore (:: install-readline-editline metta-final (nop load-history) (set-prolog-flag history 3) set-output-stream update-changed-files run-cmd-args (maybe-halt 7))))) 
      (set-det)));if_t(is_compiled,ensure_metta_learner),
; nts,




  (= 
    (need-interaction) 
    (, 
      (not (option-value had-interaction True)) 
      (not is-converting) 
      (not is-compiling) 
      (not is-pyswip) 
      (set-det) 
      (option-value prolog False) 
      (option-value repl False) 
      (not (metta-file $Self $Filename $Directory))))


  (= 
    (pre-halt1) 
    (, 
      (is-compiling) 
      (set-det) 
      (fail)))
  (= 
    (pre-halt1) 
    (, 
      (loonit-report) 
      (fail)))

  (= 
    (pre-halt2) 
    (, 
      (is-compiling) 
      (set-det) 
      (fail)))
  (= 
    (pre-halt2) 
    (, 
      (option-value prolog True) 
      (set-det) 
      (set-option-value prolog started) 
      (call-cleanup prolog pre-halt2)))
  (= 
    (pre-halt2) 
    (, 
      (option-value repl True) 
      (set-det) 
      (set-option-value repl started) 
      (call-cleanup repl pre-halt2)))
  (= 
    (pre-halt2) 
    (, 
      (need-interaction) 
      (set-option-value had-interaction True) 
      (call-cleanup repl pre-halt2)))

;loon:- time(loon_metta('./examples/compat/test_scripts/*.metta')),fail.
;loon:- repl, (option_value('halt',false)->true;halt(7)).
;maybe_halt(Seven):- option_value('MeTTa',true),!,call_cleanup(MeTTa,(set_option_value_interp('MeTTa',false),maybe_halt(Seven))).
;maybe_halt(Seven):- option_value('repl',true),!,call_cleanup(repl,(set_option_value_interp('repl',false),maybe_halt(Seven))).
;maybe_halt(Seven):- option_value('repl',true),!,halt(Seven).

  (= 
    (maybe-halt $_) 
    (, 
      (once pre-halt1) 
      (fail)))
  (= 
    (maybe-halt $Seven) 
    (, 
      (option-value repl False) 
      (set-det) 
      (halt $Seven)))
  (= 
    (maybe-halt $Seven) 
    (, 
      (option-value halt True) 
      (set-det) 
      (halt $Seven)))
  (= 
    (maybe-halt $_) 
    (, 
      (once pre-halt2) 
      (fail)))
  (= 
    (maybe-halt $Seven) 
    (, 
      (fbugio (maybe-halt $Seven)) 
      (fail)))
  (= 
    (maybe-halt $H) 
    (halt $H)) 



  (initialization 
    (nb-setval cmt-override 
      (lse ;   !("   ") )) restore)


;needs_repl:- \+ is_converting, \+ is_pyswip, \+ is_compiling, \+ has_file_arg.
;  libswipl: ['./','-q',--home=/usr/local/lib/swipl]

  (initialization show-os-argv)

  (initialization 
    (loon program) program)
  (initialization (loon default))


  (= 
    (ensure-mettalog-system) 
    (, 
      (abolish (/ began-loon 1)) 
      (dynamic (/ began-loon 1)) 
      (with_self  
        (system) 
        (use-module (library quasi-quotations))) 
      (with_self  
        (system) 
        (use-module (library hashtable))) 
      (with_self  
        (system) 
        (use-module (library gensym))) 
      (with_self  
        (system) 
        (use-module (library sort))) 
      (with_self  
        (system) 
        (use-module (library writef))) 
      (with_self  
        (system) 
        (use-module (library rbtrees))) 
      (with_self  
        (system) 
        (use-module (library dicts))) 
      (with_self  
        (system) 
        (use-module (library shell))) 
      (with_self  
        (system) 
        (use-module (library edinburgh))) 
      (with_self  
        (system) 
        (use-module (library statistics))) 
      (with_self  
        (system) 
        (use-module (library nb-set))) 
      (with_self  
        (system) 
        (use-module (library assoc))) 
      (with_self  
        (system) 
        (use-module (library pairs))) 
      (with_self  
        (user) 
        (use-module (library swi-ide))) 
      (with_self  
        (user) 
        (use-module (library prolog-profile))) 
      (ensure-loaded (library metta-python)) 
      (ensure-loaded (library flybase-convert)) 
      (ensure-loaded (library flybase-main)) 
      (autoload-all) 
      (make) 
      (autoload-all) 
      (set-det)));  system:use_module(library(lists)),
;metta_python,
;ensure_loaded('./metta_vspace/pyswip/flybase_convert'),
;ensure_loaded('./metta_vspace/pyswip/flybase_main'),
;pack_install(predicate_streams, [upgrade(true),global(true)]),
;pack_install(logicmoo_utils, [upgrade(true),global(true)]),
;pack_install(dictoo, [upgrade(true),global(true)]),



  (= 
    (file-save-name $E $_) 
    (, 
      (not (atom $E)) 
      (set-det) 
      (fail)))
  (= 
    (file-save-name $E $Name) 
    (, 
      (file-base-name $E $BN) 
      (\== $BN $E) 
      (set-det) 
      (file-save-name $BN $Name)))
  (= 
    (file-save-name $E $E) 
    (, 
      (atom-concat Sav. $_ $E) 
      (set-det)))
  (= 
    (file-save-name $E $E) 
    (, 
      (atom-concat Bin. $_ $E) 
      (set-det)))

  (= 
    (before-underscore $E $N) 
    (, 
      (atomic-list-concat 
        (Cons  $N $_) - $E) 
      (set-det)))

  (= 
    (save-name $Name) 
    (, 
      (current-prolog-flag os-argv $ArgV) 
      (member $E $ArgV) 
      (file-save-name $E $Name) 
      (set-det)))

  (= 
    (next-save-name $Name) 
    (, 
      (save-name $E) 
      (before-underscore $E $N) 
      (atom-concat $N - $Stem) 
      (gensym $Stem $Name) 
      (not (exists-file $Name)) 
      (\== $Name $E) 
      (set-det)))
  (= 
    (next-save-name $SavMeTTaLog) 
    (, 
      (option-value exeout $SavMeTTaLog) 
      (atomic $SavMeTTaLog) 
      (atom-length $SavMeTTaLog $Len) 
      (> $Len 1) 
      (set-det)))
  (= 
    (next_save_name  Sav.MeTTaLog) True)

  (= 
    (qcompile-mettalog) 
    (, 
      (ensure-mettalog-system) 
      (option-value exeout $Named) 
      (catch-err 
        (qsave-program $Named 
          (:: 
            (class development) 
            (autoload True) 
            (goal (loon goal)) 
            (toplevel (loon toplevel)) 
            (stand-alone True))) $E 
        (writeln $E)) 
      (halt 0)))

  (= 
    (qsave-program) 
    (, 
      (ensure-mettalog-system) 
      (next-save-name $Name) 
      (catch-err 
        (qsave-program $Name 
          (:: 
            (class development) 
            (autoload True) 
            (goal (loon goal)) 
            (toplevel (loon toplevel)) 
            (stand-alone False))) $E 
        (writeln $E)) 
      (set-det)))



  (ensure-loaded flybase-main)
  (ensure-loaded metta-server)
  (ensure-loaded metta-python)
  (initialization update-changed-files restore)
  (set-prolog-flag history 3)


  (= 
    (nts) 
    (set-det))
  (= 
    (nts) 
    (, 
      (redefine-system-predicate (with_self  (system) (/ notrace 1))) 
      (abolish (with_self  (system) (/ notrace 1))) 
      (meta-predicate (with_self  (system) (notrace 0))) 
      (asserta (= (with_self  (system) (notrace $G)) (, (set-det) (once $G))))))


  (= 
    (override-portray) 
    (, 
      (forall 
        (clause 
          (with_self  
            (user) 
            (portray $List)) 
          (with_self  $Where $Body) $Cl) 
        (, 
          (add-atom  &self 
            (:-  
              (:  user 
                (portray_prev  $List)) 
              (:  $Where $Body))) 
          (erase $Cl))) 
      (asserta (= (with_self  (user) (portray $List)) (metta-portray $List)))))

    
  (= 
    (message-hook $A $B $C) 
    (with_self  
      (user) 
      (, 
        (== $B error) 
        (fbug (with_self  (user) (message-hook $A $B $C))) 
        (fail))))


  (= 
    (override-message-hook) 
    (, 
      (forall 
        (clause 
          (with_self  
            (user) 
            (message-hook $A $B $C)) 
          (with_self  $Where $Body) $Cl) 
        (, 
          (add-atom  &self 
            (:-  
              (:  user 
                (message_hook  $A $B $C)) 
              (:  $Where $Body))) 
          (erase $Cl))) 
      (asserta (= (with_self  (user) (message-hook $A $B $C)) (metta-message-hook $A $B $C)))))
    

  (= 
    (fix-message-hook) 
    (, 
      (clause 
        (message-hook $A $B $C) 
        (with_self  
          (user) 
          (, 
            (== $B error) 
            (fbug (with_self  (user) (message-hook $A $B $C))) 
            (fail))) $Cl) 
      (erase $Cl)))

    


  (ignore (, (if-then-else is-testing (= $UNIT_TEST True) (= $UNIT_TEST False)) (set-is-unit-test $UNIT_TEST) (not (prolog-load-context reloading True)) (initialization (loon restore) restore) (metta-final))); nts,

	
  (set-prolog-flag metta-interp ready)

  (use-module (library clpr)) ; Import the CLP(R) library

; Define a predicate to relate the likelihoods of three events

  (= 
    (complex-relationship3-ex $Likelihood1 $Likelihood2 $Likelihood3) 
    (, 
      { (= $Likelihood1 
          (* 0.3 $Likelihood2)) } 
      { (= $Likelihood2 
          (* 0.5 $Likelihood3)) } 
      { (< $Likelihood3 1.0) } 
      { (> $Likelihood3 0.0) }))

; Example query to find the likelihoods that satisfy the constraints
;?- complex_relationship(L1, L2, L3).

