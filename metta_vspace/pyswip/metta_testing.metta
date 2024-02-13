  (ensure-loaded (library occurs))/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/
;:- encoding(iso_latin_1).

  (ensure-loaded metta-utils)

; Reset loonit counters

  (= 
    (loonit-reset) 
    (, 
      (flush-output) 
      (loonit-report) 
      (flush-output) 
      (flag loonit-failure $_ 0) 
      (flag loonit-success $_ 0)))


  (= 
    (has-loonit-results) 
    (, 
      (loonit-number $FS) 
      (> $FS 1)))


  (= 
    (loonit-number $FS) 
    (, 
      (flag loonit-test-number $FS $FS) 
      (> $FS 0) 
      (set-det)))
  (= 
    (loonit-number $FS) 
    (, 
      (flag loonit-success $Successes $Successes) 
      (flag loonit-failure $Failures $Failures) 
      (is $FS 
        (+ 
          (+ $Successes $Failures) 1))))



  (= 
    (string-replace $Original $Search $Replace $Replaced) 
    (, 
      (atomic-list-concat $Split $Search $Original) 
      (atomic-list-concat $Split $Replace $Replaced) 
      (set-det)))


  (= 
    (get-test-name $Number $TestName) 
    (, 
      (if-then-else 
        (, 
          (nb-current loading-file $FilePath) 
          (\== $FilePath Nil)) True 
        (= $FilePath SOME/UNIT-TEST)) 
      (make-test-name $FilePath $Number $TestName)))


  (= 
    (ensure-basename $FilePath $FilePath) 
    (, 
      (not (directory-file-path . $_ $FilePath)) 
      (set-det)))
  (= 
    (ensure-basename $FilePath0 $FilePath) 
    (, 
      (absolute-file-name $FilePath0 $FilePath) 
      (set-det)))
  (= 
    (ensure_basename  $FilePath $FilePath) True)


  (= 
    (make-test-name $FilePath0 $Number $TestName) 
    (, 
      (ensure-basename $FilePath0 $FilePath) 
      (file-base-name $FilePath $FileName) 
      (directory-file-path $ParentDir $FileName $FilePath) 
      (file-base-name $ParentDir $ParentDirBase) 
      (file-name-extension $Base $_ $FileName) 
      (string-upper $ParentDirBase $UpperParentDirBase) 
      (string-upper $Base $UpperBase) 
      (string-replace $UpperBase "_" "-" $NoUnderscore) 
      (string-replace $UpperParentDirBase "_" "-" $NoUnderscoreParent) 
      (wots $NS 
        (format ~`0t~d~2| 
          (:: $Number))) 
      (format 
        (string $TestName) "~w.~w.~w" 
        (:: $NoUnderscoreParent $NoUnderscore $NS)))); Extract the file name and its parent directory from the file path
; Remove file extension
; Convert to uppercase
; Replace "_" with "-"
; Format the test name




  (= 
    (color-g-mesg $_ $_) 
    (, 
      (is-compatio) 
      (set-det)))
  (= 
    (color-g-mesg $_ $_) 
    (, 
      (silent-loading) 
      (set-det)))
  (= 
    (color-g-mesg $C $G) 
    (notrace (, (nop check-silent-loading) (color-g-mesg-ok $C $G))))

  (= 
    (color-g-mesg-ok $_ $G) 
    (, 
      (is-compatio) 
      (set-det) 
      (call $G)))
  (= 
    (color-g-mesg-ok $C $G) 
    (, 
      (quietly (, (wots $S (must-det-ll (with_self  (user) $G))) (if-then-else (== $S "") True (our-ansi-format $C ~w~n (:: $S))))) 
      (set-det)))


  (= 
    (our-ansi-format $C $Fmt $Args) 
    (, 
      (not (atom $C)) 
      (ansi-format $C $Fmt $Args))); set_stream(current_output,encoding(utf8)),

  (= 
    (our-ansi-format $C $Fmt $Args) 
    (our-ansi-format 
      (:: (fg $C)) $Fmt $Args))


  (= 
    (print-current-test) 
    (, 
      (loonit-number $Number) 
      (get-test-name $Number $TestName) 
      (format ';<h3 id="~w">;; ~w</h3>~n' 
        (:: $TestName $TestName))))

; Increment loonit counters based on goal evaluation

  (= 
    (loonit-asserts $S $Pre $G) 
    (, 
      (flag loonit-test-number $X 
        (+ $X 1)) 
      (copy-term $Pre $Pro) 
      (print-current-test) 
      (once $Pre) 
      (if-then-else 
        (, 
          (nb-current exec-src $Exec) 
          (\== $Exec Nil)) True 
        (= $S $Exec)) 
      (once (loonit-asserts1 $Exec $Pro $G)))); wots(S,((((nb_current(exec_src,WS),WS\==[])->writeln(WS);write_src(exec(TestSrc)))))),



  (= 
    (give-pass-credit $TestSrc $Pre $G) 
    (, 
      (inside-assert $TestSrc $BaseEval) 
      (always-exec $BaseEval) 
      (set-det)))
  (= 
    (give-pass-credit $TestSrc $Pre $G) 
    (, 
      (write-pass-fail $TestSrc PASS $G) 
      (flag loonit-success $X 
        (+ $X 1)) 
      (set-det) 
      (color-g-mesg cyan 
        (write-src (loonit-success $G))) 
      (set-det)))


  (= 
    (write-pass-fail 
      (:: $P $C $_) $PASS_FAIL $G) 
    (must-det-ll (, (loonit-number $Number) (get-test-name $Number $TestName) (arg 1 $G $G1) (arg 2 $G $G2) (write-pass-fail $TestName $P $C $PASS_FAIL $G1 $G2))))

  (= 
    (write-pass-fail $TestName $P $C $PASS_FAIL $G1 $G2) 
    (, 
      (ignore (, (if-then-else (, (nb-current loading-file $FilePath) (\== $FilePath Nil)) True (= $FilePath SOME/UNIT-TEST.metta)) (atomic-list-concat (:: $_ $R) examples/ $FilePath) (file-name-extension $Base $_ $R))) 
      (nop (format '<h3 id="~w">;; ~w</h3>' (:: $TestName $TestName))) 
      (if-t 
        (if-then-else 
          (tee-file $TEE_FILE) True 
          (= TEE.ansi $TEE_FILE)) 
        (, 
          (= $UNITS /tmp/SHARED.UNITS) 
          (open $UNITS append $Stream 
            (:: (encoding utf8))) 
          (format $Stream '| ~w | [~w](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/~w.metta.html#~w) | ~@ | ~@ | ~@ |~n' 
            (:: $PASS_FAIL $TestName $Base $TestName 
              (trim-gstring 
                (with-indents False 
                  (write-src (:: $P $C))) 200) 
              (trim-gstring 
                (with-indents False 
                  (write-src $G1)) 100) 
              (with-indents False 
                (write-src $G2)))) 
          (set-det) 
          (close $Stream)))));atom_concat(TEE_FILE,'.UNITS',UNITS),



  (= 
    (trim-gstring $Goal $MaxLen) 
    (, 
      (wots $String $Goal) 
      (atom-length $String $Len) 
      (if-then-else 
        (=< $Len $MaxLen) 
        (= $Trimmed $String) 
        (, 
          (is $SubLen $MaxLen) 
          (sub-atom $String 0 $SubLen $_ $SubStr) 
          (string-concat $SubStr "..." $Trimmed))) 
      (write $Trimmed)))


  (= 
    (loonit-asserts1 $TestSrc $Pre $G) 
    (, 
      (nop $Pre) 
      (call $G) 
      (set-det) 
      (give-pass-credit $TestSrc $Pre $G) 
      (set-det)))

  (= 
    (loonit-asserts1 $TestSrc $Pre $G) 
    (, 
      (sub-var BadType $TestSrc) 
      (not check-type) 
      (set-det) 
      (write '
!check-type (not considering this a failure)
')    (color-g-mesg #D8BFD8 
        (write-src (loonit-failureR $G))) 
      (set-det) 
      (ignore (, (option-value on-fail trace) (setup-call-cleanup (debug (metta eval)) (call (, $Pre $G)) (nodebug (metta eval)))))))


  (= 
    (loonit-asserts1 $TestSrc $Pre $G) 
    (, 
      (write-pass-fail $TestSrc FAIL $G) 
      (if-then-else 
        (, 
          (sub-var BadType $TestSrc) 
          (not check-type)) 
        (write '
!check-type (not considering this a failure)
')      (flag loonit-failure $X 
          (+ $X 1))) 
      (set-det) 
      (color-g-mesg red 
        (write-src (loonit-failureR $G))) 
      (set-det) 
      (ignore (, (option-value on-fail trace) (setup-call-cleanup (debug (metta eval)) (call (, $Pre $G)) (nodebug (metta eval)))))));itrace, G.
; repl

    ;(thread_self(main)->trace;sleep(0.3))

; Generate loonit report with colorized output

  (dynamic (/ gave-loonit-report 0))

  (= 
    (loonit-report) 
    (, 
      (gave-loonit-report) 
      (set-det)))
  (= 
    (loonit-report) 
    (, 
      (flag loonit-success $Successes $Successes) 
      (flag loonit-failure $Failures $Failures) 
      (loonit-report $Successes $Failures)));    assert(gave_loonit_report),



  (at-halt loonit-report)



  (= 
    (loonit-report 0 0) 
    (set-det)) ; ansi_format([fg(yellow)], 'Nothing to report~n', []).
  (= 
    (loonit-report $Successes $Failures) 
    (, 
      (ansi-format 
        (:: bold) 'LoonIt Report~n' Nil) 
      (format ------------~n) 
      (ansi-format 
        (:: (fg green)) 'Successes: ~w~n' 
        (:: $Successes)) 
      (if-then-else 
        (, 
          (integer $Failures) 
          (> $Failures 0)) 
        (ansi-format 
          (:: (fg red)) 'Failures: ~w~n' 
          (:: $Failures)) 
        (ansi-format 
          (:: (fg green)) 'Failures: ~w~n' 
          (:: $Failures)))))

; Resets loonit counters, consults the given file, and prints the status report.

  (= 
    (loon-metta $File) 
    (, 
      (flag loonit-success $WasSuccesses 0) 
      (flag loonit-failure $WasFailures 0) 
      (load-metta $File) 
      (loonit-report) 
      (flag loonit-success $_ $WasSuccesses) 
      (flag loonit-failure $_ $WasFailures) 
      (set-det)))



  (dynamic (/ file-answers 3))
  (dynamic (/ file-exec-num 2))

; set_exec_num/2
; Update or assert the execution number for the given file.


  (= 
    (set-exec-num $SFileName $Val) 
    (, 
      (absolute-file-name $SFileName $FileName) 
      (if-then-else 
        (remove-atom  &self 
          (file_exec_num  $FileName $_)) True True) 
      (asserta (file-exec-num $FileName $Val)))); If an entry exists, retract it
; Otherwise, do nothing
  ; Assert the new value

; get_exec_num/2
; Retrieve the execution number for the given file. If none exists, it returns 0.

  (= 
    (get-exec-num $Val) 
    (, 
      (current-exec-file-abs $FileName) 
      (file-exec-num $FileName $Val) 
      (set-det)))
  (= 
    (get-exec-num $FileName $Val) 
    (if-then-else 
      (file-exec-num $FileName $CurrentVal) 
      (= $Val $CurrentVal) 
      (= $Val 0)))

 
  (= 
    (current-exec-file-abs $FileName) 
    (, 
      (current-exec-file $SFileName) 
      (absolute-file-name $SFileName $FileName) 
      (set-det)))



  (= 
    (get-expected-result $Ans) 
    (, 
      (ignore (, (current-exec-file-abs $FileName) (file-exec-num $FileName $Nth) (file-answers $FileName $Nth $Ans))) 
      (set-det)))




  (= 
    (got-exec-result $Val) 
    (ignore (, (current-exec-file-abs $FileName) (file-exec-num $FileName $Nth) (file-answers $FileName $Nth $Ans) (got-exec-result $Val $Ans))))


  (= 
    (got-exec-result $Val $Ans) 
    (must-det-ll (, (current-exec-file-abs $FileName) (file-exec-num $FileName $Nth) (is $Nth100 (+ $Nth 100)) (get-test-name $Nth100 $TestName) (nb-current exec-src $Exec) (if-then-else (equal-enough-for-test $Val $Ans) (write-pass-fail-result $TestName exec $Exec PASS $Ans $Val) (write-pass-fail-result $TestName exec $Exec FAIL $Ans $Val)))))


  (= 
    (write-pass-fail-result $TestName exec $Exec $PASS_FAIL $Ans $Val) 
    (, 
      (nl) 
      (writeq (write-pass-fail-result $TestName exec $Exec $PASS_FAIL $Ans $Val)) 
      (nl) 
      (write-pass-fail $TestName exec $Exec $PASS_FAIL $Ans $Val)))



  (= 
    (current-exec-file $FileName) 
    (nb-current loading-file $FileName))

; inc_exec_num/1
; Increment the execution number for the given file. If no entry exists, initialize it to 1.

  (= 
    (inc-exec-num) 
    (, 
      (current-exec-file-abs $FileName) 
      (set-det) 
      (inc-exec-num $FileName)))
  (= 
    (inc-exec-num $FileName) 
    (, 
      (if-then-else 
        (remove-atom  &self 
          (file_exec_num  $FileName $CurrentVal)) 
        (is $NewVal 
          (+ $CurrentVal 1)) 
        (= $NewVal 1)) 
      (asserta (file-exec-num $FileName $NewVal))))



  (= 
    (load-answer-file $File) 
    (, 
      (or 
        (not (atom $File)) 
        (or 
          (not (is-absolute-file-name $File)) 
          (not (exists-file $File)))) 
      (absolute-file-name $File $AbsFile) 
      (\=@= $File $AbsFile) 
      (load-answer-file-now $AbsFile) 
      (set-det)))
  (= 
    (load-answer-file $File) 
    (, 
      (load-answer-file-now $File) 
      (set-det)))

  (= 
    (load-answer-file-now $File) 
    (ignore (, (ensure-extension $File answers $AnsFile) (remove-specific-extension $AnsFile answers $StoredAs) (set-exec-num $StoredAs 1) (fbug (load-answer-file $AnsFile $StoredAs)) (load-answer-file $AnsFile $StoredAs))))


  (= 
    (load-answer-file $AnsFile $StoredAs) 
    (, 
      (if-then-else 
        (file-answers $StoredAs $_ $_) True 
        (if-then-else 
          (not (exists-file $AnsFile)) True 
          (setup-call-cleanup 
            (open $AnsFile read $Stream 
              (:: (encoding utf8))) 
            (load-answer-stream 1 $StoredAs $Stream) 
            (close $Stream)))) 
      (set-exec-num $StoredAs 1) 
      (set-det)))


  (debug (metta answers))

  (= 
    (load-answer-stream $Nth $StoredAs $Stream) 
    (, 
      (at-end-of-stream $Stream) 
      (set-det) 
      (if-trace 
        (metta answers) 
        (prolog-only (listing (file-answers $StoredAs $_ $_))))))
  (= 
    (load-answer-stream $Nth $StoredAs $Stream) 
    (, 
      (read-line-to-string $Stream $String) 
      (load-answer-stream $Nth $StoredAs $String $Stream)))
  (= 
    (load-answer-stream $Nth $StoredAs $String $Stream) 
    (, 
      (fbug (= $Nth $String)) 
      (parse-answer-string $String $Metta) 
      (set-det) 
      (add-atom  &self 
        (file_answers  $StoredAs $Nth $Metta)) 
      (skip (must-det-ll (not (sub-var , $Metta)))) 
      (is $Nth2 
        (+ $Nth 1)) 
      (load-answer-stream $Nth2 $StoredAs $Stream)))/*
load_answer_stream(Nth, StoredAs, String, Stream) :- fail,
    atom_chars(String,Chars),
    count_brackets(Chars, 0, 0, Balance),
    (   Balance =< 0
    ->  StoredAs = String
    ;   read_line_to_string(Stream, NextString),
        string_concat(String, "\n", StringWithNewLine),
        string_concat(StringWithNewLine, NextString, CombinedString),
        load_answer_stream(Nth, StoredAs, CombinedString, Stream)
    ).
*/
; string_concat("[",_,String),!,
;if_t(sub_var(',',Metta),rtrace(parse_answer_string(String,_Metta2))),


  (= 
    (load-answer-stream $Nth $StoredAs $_ $Stream) 
    (load-answer-stream $Nth $StoredAs $Stream))

  (= 
    (parse-answer-string "[]" Nil) 
    (set-det))/*
count_brackets([], Open, Close, Balance) :- !,
    Balance is Open - Close.
count_brackets([Char|Rest], Open, Close, Balance) :-
    ((((   Char == '['
    ->  NewOpen is Open + 1
       ;   (Char == ']'
    ->  NewClose is Close + 1
      ;   (NewOpen = Open,
          NewClose = Close)))))),
      count_brackets(Rest, NewOpen, NewClose, Balance).
*/

;parse_answer_string(String,Metta):- string_concat("(",_,String),!,parse_sexpr_metta(String,Metta),!.
  (= 
    (parse-answer-string $String $Metta) 
    (, 
      (string-concat "[(Error (assert" $_ $String) 
      (set-det) 
      (fail)))
  (= 
    (parse-answer-string $String $Metta) 
    (, 
      (string-concat "Expected: [" $Mid $String) 
      (string-concat $Expected_Inner "]" $Mid) 
      (set-det) 
      (fail)))
  (= 
    (parse-answer-string $String $Metta) 
    (, 
      (string-concat "Got: [" $Mid $String) 
      (string-concat $Got_Inner "]" $Mid) 
      (set-det) 
      (parse-answer-inner $Got_Inner $Metta)))
  (= 
    (parse-answer-string $String $Metta) 
    (, 
      (string-concat "[" $Mid $String) 
      (string-concat $Inner0 "]" $Mid) 
      (set-det) 
      (parse-answer-inner $Inner0 $Metta)))



  (= 
    (parse-answer-inner $Inner0 $Metta) 
    (must-det-ll (, (replace-in-string (:: (= ,   , )) $Inner0 $Inner) (parse-answer-str $Inner $Metta) (skip (not (sub-var , (rc $Metta)))))))


  (= 
    (parse-answer-str $Inner 
      (Cons  $C $Metta)) 
    (, 
      (atomics-to-string 
        (:: "(" $Inner ")") $Str) 
      (parse-sexpr-metta $Str $CMettaC) 
      (= $CMettaC 
        (Cons  $C $MettaC)) 
      (remove-m-commas $MettaC $Metta) 
      (not (sub-var , (rc $Metta)))))
  (= 
    (parse-answer-str $Inner0 $Metta) 
    (, 
      (atomic-list-concat $InnerL  ,  $Inner0) 
      (maplist atom-string $InnerL $Inner) 
      (maplist parse-sexpr-metta $Inner $Metta) 
      (skip (must-det-ll (not (sub-var , (rc2 $Metta))))) 
      (set-det)))
  (= 
    (parse-answer-str $Inner0 $Metta) 
    (, 
      (replace-in-string 
        (:: (=  ,  ' ')) $Inner0 $Inner) 
      (atomics-to-string 
        (:: "(" $Inner ")") $Str) 
      (set-det) 
      (parse-sexpr-metta $Str $Metta) 
      (set-det) 
      (skip (must-det-ll (not (sub-var , (rc3 $Metta))))) 
      (skip (not (sub-var , (rc $Metta))))))

;parse_answer_string(String,Metta):- String=Metta,!,fail.


  (= 
    (remove-m-commas $Metta $Metta) 
    (, 
      (not (sub-var , $Metta)) 
      (set-det)))
  (= 
    (remove-m-commas 
      (Cons  $C 
        (Cons  $H $T)) 
      (Cons  $H $TT)) 
    (, 
      (== $C and) 
      (set-det) 
      (remove-m-commas $T $TT)))
  (= 
    (remove-m-commas 
      (Cons  $C 
        (Cons  $H $T)) 
      (Cons  $H $TT)) 
    (, 
      (== $C ,) 
      (set-det) 
      (remove-m-commas $T $TT)))
  (= 
    (remove-m-commas 
      (Cons  $H $T) 
      (Cons  $H $TT)) 
    (, 
      (set-det) 
      (remove-m-commas $T $TT)))


; Example usage:
; ?- change_extension('path/to/myfile.txt', 'pdf', NewFileName).
; NewFileName = 'path/to/myfile.pdf'.

  (= 
    (change-extension $OriginalFileName $NewExtension $NewBaseName) 
    (, 
      (file-name-extension $BaseWithoutExt $_ $OriginalFileName) 
      (file-name-extension $BaseWithoutExt $NewExtension $NewBaseName) 
      (set-det)));file_base_name(OriginalFileName, BaseName),          ; Extract base name
; Split extension
 ; Create new base name with new extension
    ;directory_file_path(Directory, NewBaseName, NewFileName). ; Join with directory path
; Example usage:
; ?- ensure_extension('path/to/myfile.txt', 'txt', NewFileName).
; NewFileName = 'path/to/myfile.txt'.

  (= 
    (ensure-extension $OriginalFileName $Extension $NewFileName) 
    (, 
      (file-name-extension $_ $CurrentExt $OriginalFileName) 
      (if-then-else 
        (= $CurrentExt $Extension) 
        (= $NewFileName $OriginalFileName) 
        (, 
          (atom-concat $OriginalFileName . $TempFileName) 
          (atom-concat $TempFileName $Extension $NewFileName)))))
; Example usage:
; ?- remove_specific_extension('path/to/myfile.txt', 'txt', NewFileName).
; NewFileName = 'path/to/myfile'.

; ?- remove_specific_extension('path/to/myfile.txt', 'pdf', NewFileName).
; NewFileName = 'path/to/myfile.txt'.

  (= 
    (remove-specific-extension $OriginalFileName $Extension $FileNameWithoutExtension) 
    (, 
      (file-name-extension $FileNameWithoutExtension $Ext $OriginalFileName) 
      (if-then-else 
        (= $Ext $Extension) True 
        (= $FileNameWithoutExtension $OriginalFileName))))



  (= 
    (quick-test) 
    (forall 
      (quick-test $Test) 
      (forall 
        (open-string $Test $Stream) 
        (load-metta-stream &self $Stream))));set_MeTTa_flag(encoding,iso_latin_1),



  (if (debugging term-expansion))/*
 tests for term expander


*/
; :- debug(term_expansion).

  (enable-arc-expansion)
  (style-check (- singleton))

  (= 
    (dte) 
    (= 
      (set (. $X local)) val))
  (= 
    (dte) 
    (= 
      (gset (. $X global)) gval))
  (= 
    (dte) 
    (must-det-ll (= (set (. $X a)) b)))
  (= 
    (dte) 
    (must-det-ll (locally (nb-setval e (. $X locally)) (dte (Cons  foo (set (. $X tail)))))))
  (= 
    (dte) 
    (member 
      (set (. $V element)) 
      (set (. $V list))))
  (= 
    (dte (set (. $E v))) 
    (= 
      (set (. $E that)) v))

  (style-check (+ singleton))
  (disable-arc-expansion)
  (listing dte)
  (endif)



; 1. Recursive Approach

  (= 
    (factorial_recursive  0 1) True)
  (= 
    (factorial-recursive $N $Result) 
    (, 
      (> $N 0) 
      (is $N1 
        (- $N 1)) 
      (factorial-recursive $N1 $Result1) 
      (is $Result 
        (* $N $Result1))))

; 2. Tail Recursive Approach

  (= 
    (factorial-tail-recursive $N $Result) 
    (factorial-tail-helper $N 1 $Result))


  (= 
    (factorial_tail_helper  0 $Acc $Acc) True)
  (= 
    (factorial-tail-helper $N $Acc $Result) 
    (, 
      (> $N 0) 
      (is $NewAcc 
        (* $Acc $N)) 
      (is $N1 
        (- $N 1)) 
      (factorial-tail-helper $N1 $NewAcc $Result)))

; 3. Accumulator Approach

  (= 
    (factorial-accumulator $N $Result) 
    (factorial-acc $N 1 $Result))


  (= 
    (factorial_acc  0 $Result $Result) True)
  (= 
    (factorial-acc $N $Acc $Result) 
    (, 
      (> $N 0) 
      (is $NewAcc 
        (* $Acc $N)) 
      (is $N1 
        (- $N 1)) 
      (factorial-acc $N1 $NewAcc $Result)))

; You can test each one by querying, for example:
; ?- factorial_recursive(5, X






; Example-usage

  (= 
    (example-usages) 
    (, 
      (fetch-or-create-space newSpace $Space) 
      (add-atom $Space a) 
      (add-atom $Space b) 
      (add-atom $Space c) 
      (match $Space a $Template) 
      (write 'Matched template: ') 
      (writeln $Template) 
      (write 'Initial space: ') 
      (writeln $Space) 
      (add-atom $Space a) 
      (write 'Space after adding "a": ') 
      (writeln $Space) 
      (add-atom $Space b) 
      (write 'Space after adding "b": ') 
      (writeln $Space) 
      (replace-atom $Space a c) 
      (write 'Space after replacing "a" with "c": ') 
      (writeln $Space) 
      (get-atoms $Space $Atoms) 
      (write 'Atoms in space: ') 
      (writeln $Atoms) 
      (atom-count $Space $Count) 
      (write 'Number of atoms in space: ') 
      (writeln $Count))); Assuming fetch_or_create_space/1 is defined to initialize a space


; Test case for clearing a space

  (= 
    (test-clear-space) 
    (, 
      (writeln 'Test: Clearing a space') 
      (init-space &kb1) 
      (add-atom &kb1 a) 
      (add-atom &kb1 b) 
      (writeln 'Expected Count Before Clearing: 2') 
      (atom-count &kb1 $CountBefore) 
      (writeln 'Actual Count:') 
      (writeln $CountBefore) 
      (writeln 'Expected Atoms Before Clearing: [b, a]') 
      (get-atoms &kb1 $AtomsBefore) 
      (writeln 'Actual Atoms:') 
      (writeln $AtomsBefore) 
      (clear-atoms &kb1) 
      (writeln 'Expected Count After Clearing: 0') 
      (atom-count &kb1 $CountAfter) 
      (writeln 'Actual Count:') 
      (writeln $CountAfter) 
      (writeln 'Expected Atoms After Clearing: []') 
      (get-atoms &kb1 $AtomsAfter) 
      (writeln 'Actual Atoms:') 
      (writeln $AtomsAfter)))

; Test case for various operations on a space

  (= 
    (test-operations) 
    (, 
      (writeln 'Test: Various Operations on a Space') 
      (init-space &kb2) 
      (add-atom &kb2 a) 
      (add-atom &kb2 b) 
      (writeln 'Expected Count After Adding: 2') 
      (atom-count &kb2 $Count1) 
      (writeln 'Actual Count:') 
      (writeln $Count1) 
      (writeln 'Expected Atoms After Adding: [b, a]') 
      (get-atoms &kb2 $Atoms1) 
      (writeln 'Actual Atoms:') 
      (writeln $Atoms1) 
      (remove-atom &kb2 a) 
      (writeln 'Expected Atoms After Removing a: [b]') 
      (get-atoms &kb2 $Atoms2) 
      (writeln 'Actual Atoms:') 
      (writeln $Atoms2) 
      (replace-atom &kb2 b c) 
      (writeln 'Expected Atoms After Replacing b with c: [c]') 
      (get-atoms &kb2 $Atoms3) 
      (writeln 'Actual Atoms:') 
      (writeln $Atoms3)))

; Run the test cases

  (= 
    (run-tests) 
    (, 
      (writeln 'Running test-clear-space:') 
      (test-clear-space) 
      (writeln ---) 
      (writeln 'Running test-operations:') 
      (test-operations)))


; Test case for various operations on a space

  (= 
    (test-my-space) 
    (, 
      (fetch-or-create-space &KB $InstanceOfKB) 
      (clear-atoms &KB) 
      (add-atom $InstanceOfKB a) 
      (add-atom $InstanceOfKB b) 
      (atom-count $InstanceOfKB $Count1) 
      (writeln (with_self  ('Should print 2: ') $Count1)) 
      (get-atoms $InstanceOfKB $Atoms1) 
      (writeln (with_self  ('Should print [b, a]: ') $Atoms1)) 
      (remove-atom $InstanceOfKB a) 
      (get-atoms $InstanceOfKB $Atoms2) 
      (writeln (with_self  ('Should print [b]: ') $Atoms2)) 
      (replace-atom $InstanceOfKB b c) 
      (get-atoms $InstanceOfKB $Atoms3) 
      (writeln (with_self  ('Should print [c]: ') $Atoms3)) 
      (space-original-name $InstanceOfKB $OriginalName) 
      (writeln (with_self  ('Should print &KB') $OriginalName)) 
      (fetch-or-create-space &KB) 
      (add-atom &KB x) 
      (add-atom &KB y) 
      (atom-count &KB $Count2) 
      (writeln (with_self  ('Should print 3: ') $Count2)) 
      (get-atoms &KB $Atoms4) 
      (writeln (with_self  ('Should print [c, y, x]: ') $Atoms4)) 
      (remove-atom &KB x) 
      (get-atoms &KB $Atoms5) 
      (writeln (with_self  ('Should print [c,y]: ') $Atoms5)) 
      (replace-atom &KB y z) 
      (get-atoms $InstanceOfKB $Atoms6) 
      (writeln (with_self  ('Should print [c,z]: ') $Atoms6))))


; Test the code

  (= 
    (test-clr-my-kb22) 
    (, 
      (fetch-or-create-space &kb22) 
      (add-atom &kb22 a) 
      (add-atom &kb22 b) 
      (atom-count &kb22 $Count1) 
      (writeln $Count1) 
      (get-atoms &kb22 $Atoms1) 
      (writeln $Atoms1) 
      (clear-atoms &kb22) 
      (atom-count &kb22 $Count2) 
      (writeln $Count2) 
      (get-atoms &kb22 $Atoms2) 
      (writeln $Atoms2)))

; Test the code

  (= 
    (test-my-kb2) 
    (, 
      (fetch-or-create-space &kb1 $InstanceOfKB) 
      (not (not (add-atom &kb1 a))) 
      (not (not (add-atom &kb1 b))) 
      (not (not (, (atom-count &kb1 $Count) (writeln $Count)))) 
      (not (not (, (get-atoms &kb1 $Atoms) (writeln $Atoms)))) 
      (not (not (remove-atom $InstanceOfKB a))) 
      (not (not (, (get-atoms &kb1 $NewAtoms) (writeln $NewAtoms)))) 
      (not (not (replace-atom &kb1 b c))) 
      (not (not (, (get-atoms &kb1 $FinalAtoms) (writeln $FinalAtoms)))) 
      (not (not (, (space-original-name $InstanceOfKB $OriginalName) (writeln $OriginalName)))) 
      (not (not (fetch-or-create-space &kb2 $_))) 
      (not (not (add-atom &kb2 a))) 
      (not (not (add-atom &kb2 b))) 
      (not (not (, (atom-count &kb2 $Count) (writeln $Count)))) 
      (not (not (, (get-atoms &kb2 $Atoms) (writeln $Atoms)))) 
      (not (not (remove-atom &kb2 a))) 
      (not (not (, (get-atoms &kb2 $NewAtoms) (writeln $NewAtoms)))) 
      (not (not (replace-atom &kb2 b c))) 
      (not (not (, (get-atoms &kb2 $FinalAtoms) (writeln $FinalAtoms)))))); Creating a new space with a different name





 ; comment this out once to get these files in your readline history

  (= 
    (mf  ./1-VSpaceTest.metta) True)
  (= 
    (mf  ./2-VSpaceTest.metta) True)
  (= 
    (mf  ./3-Learn-Rules.metta) True)
  (= 
    (mf  ./4-VSpaceTest.metta) True)
  (= 
    (mf  ./5-Learn-Flybase.metta) True)
  (= 
    (mf  ./6-Learn-Flybase-Full.metta) True)
  (= 
    (mf  ./8-VSpaceTest.metta) True)
  (= 
    (mf  ./autoexec.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/Alliance_of_Genome_Resources.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/biosapiens.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/chebi_fb_2023_04.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/DBVAR.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/doid.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/flybase_controlled_vocabulary.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/flybase_stock_vocabulary.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/fly_anatomy.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/fly_development.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/gene_group_FB2023_04.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/go-basic.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/image.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/psi-mi.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/slice.chebi.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/so-simple.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/so.metta) True)
  (= 
    (mf  ./data/OBO-Metta/export/SOFA.metta) True)
  (= 
    (mf  ./examples/compat/common/BelieveMe.metta) True)
  (= 
    (mf  ./examples/compat/common/EqualityType.metta) True)
  (= 
    (mf  ./examples/compat/common/EqualityTypeTest.metta) True)
  (= 
    (mf  ./examples/compat/common/formula/DeductionFormula.metta) True)
  (= 
    (mf  ./examples/compat/common/formula/DeductionFormulaTest.metta) True)
  (= 
    (mf  ./examples/compat/common/formula/ImplicationDirectIntroductionFormula.metta) True)
  (= 
    (mf  ./examples/compat/common/formula/ModusPonensFormula.metta) True)
  (= 
    (mf  ./examples/compat/common/In.metta) True)
  (= 
    (mf  ./examples/compat/common/InTest.metta) True)
  (= 
    (mf  ./examples/compat/common/List.metta) True)
  (= 
    (mf  ./examples/compat/common/ListTest.metta) True)
  (= 
    (mf  ./examples/compat/common/Maybe.metta) True)
  (= 
    (mf  ./examples/compat/common/MaybeTest.metta) True)
  (= 
    (mf  ./examples/compat/common/Num.metta) True)
  (= 
    (mf  ./examples/compat/common/NumTest.metta) True)
  (= 
    (mf  ./examples/compat/common/OrderedSet.metta) True)
  (= 
    (mf  ./examples/compat/common/OrderedSetTest.metta) True)
  (= 
    (mf  ./examples/compat/common/Record.metta) True)
  (= 
    (mf  ./examples/compat/common/truthvalue/EvidentialTruthValue.metta) True)
  (= 
    (mf  ./examples/compat/common/truthvalue/EvidentialTruthValueTest.metta) True)
  (= 
    (mf  ./examples/compat/common/truthvalue/MeasEq.metta) True)
  (= 
    (mf  ./examples/compat/common/truthvalue/TemporalTruthValue.metta) True)
  (= 
    (mf  ./examples/compat/common/truthvalue/TruthValue.metta) True)
  (= 
    (mf  ./examples/compat/common/truthvalue/TruthValueTest.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/DeductionDTL.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/DeductionDTLTest.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/ImplicationDirectIntroductionDTL.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/ImplicationDirectIntroductionDTLTest.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/ModusPonensDTL.metta) True)
  (= 
    (mf  ./examples/compat/dependent-types/ModusPonensDTLTest.metta) True)
  (= 
    (mf  ./examples/compat/entail/DeductionEntail.metta) True)
  (= 
    (mf  ./examples/compat/entail/DeductionEntailTest.metta) True)
  (= 
    (mf  ./examples/compat/entail/ImplicationDirectIntroductionEntail.metta) True)
  (= 
    (mf  ./examples/compat/entail/ImplicationDirectIntroductionEntailTest.metta) True)
  (= 
    (mf  ./examples/compat/equal/DeductionEqual.metta) True)
  (= 
    (mf  ./examples/compat/equal/DeductionEqualTest.metta) True)
  (= 
    (mf  ./examples/compat/equal/ImplicationDirectIntroductionEqual.metta) True)
  (= 
    (mf  ./examples/compat/equal/ImplicationDirectIntroductionEqualTest.metta) True)
  (= 
    (mf  ./examples/compat/match/DeductionImplicationDirectIntroductionMatchTest.metta) True)
  (= 
    (mf  ./examples/compat/match/DeductionMatch.metta) True)
  (= 
    (mf  ./examples/compat/match/DeductionMatchTest.metta) True)
  (= 
    (mf  ./examples/compat/match/ImplicationDirectIntroductionMatch.metta) True)
  (= 
    (mf  ./examples/compat/match/ImplicationDirectIntroductionMatchTest.metta) True)
  (= 
    (mf  ./examples/compat/prob-dep-types/inf_order_probs.metta) True)
  (= 
    (mf  ./examples/compat/prob-dep-types/prob_dep_types.metta) True)
  (= 
    (mf  ./examples/compat/recursion-schemes/src/base.metta) True)
  (= 
    (mf  ./examples/compat/recursion-schemes/src/examples/benchmark.metta) True)
  (= 
    (mf  ./examples/compat/recursion-schemes/src/examples/expression.metta) True)
  (= 
    (mf  ./examples/compat/recursion-schemes/src/schemes.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/non-determinism.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/self-contained-synthesize.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-case-test.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-case.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-let-test.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-let.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-superpose.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-type-checking.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-unify-test.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/synthesize-via-unify.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/unify-via-case.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/experiments/unify-via-let.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/Synthesize.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/SynthesizeTest.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/Unify.metta) True)
  (= 
    (mf  ./examples/compat/synthesis/UnifyTest.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/a1_symbols.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/a2_opencoggy.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/a3_twoside.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/b0_chaining_prelim.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/b1_equal_chain.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/b2_backchain.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/b3_direct.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/b4_nondeterm.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/b5_types_prelim.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/c1_grounded_basic.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/c2_spaces.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/c2_spaces_kb.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/c3_pln_stv.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/d1_gadt.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/d2_higherfunc.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/d3_deptypes.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/d4_type_prop.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/d5_auto_types.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/e1_kb_write.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/e2_states.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/e3_match_states.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/f1_imports.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/f1_moduleA.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/f1_moduleB.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/f1_moduleC.metta) True)
  (= 
    (mf  ./examples/compat/test_scripts/_e2_states_dia.metta) True)
  (= 
    (mf  ./examples/fibo.metta) True)
  (= 
    (mf  ./examples/fwgc.metta) True)
  (= 
    (mf  ./examples/httpclient.metta) True)
  (= 
    (mf  ./examples/NARS.metta) True)
  (= 
    (mf  ./examples/NARS_listing.metta) True)
  (= 
    (mf  ./examples/RUN_minnars.metta) True)
  (= 
    (mf  ./examples/RUN_tests0.metta) True)
  (= 
    (mf  ./examples/RUN_tests1.metta) True)
  (= 
    (mf  ./examples/RUN_tests2.metta) True)
  (= 
    (mf  ./examples/RUN_tests3.metta) True)
  (= 
    (mf  ./examples/send-more.metta) True)
  (= 
    (mf  ./examples/talk80.metta) True)
  (= 
    (mf  ./examples/VRUN_tests0.metta) True)
  (= 
    (mf  ./examples/VRUN_tests1.metta) True)
  (= 
    (mf  ./examples/VRUN_tests2.metta) True)
  (= 
    (mf  ./examples/VRUN_tests3.metta) True)
  (= 
    (mf  ./metta_vspace/nm_test.metta) True)
  (= 
    (mf  ./metta_vspace/r.metta) True)
  (= 
    (mf  ./metta_vspace/test_nspace.metta) True)

  (forall 
    (mf $H) 
    (add-history1 (load-metta $H)))
;:- load_metta










  (= 
    (parsing $String $Expr) 
    (, 
      (string $String) 
      (set-det) 
      (string-codes $String $Codes) 
      (phrase 
        (expressions $Expr) $Codes)))
  (= 
    (parsing $String $Expr) 
    (phrase 
      (expressions $Expr) $String))


  (= 
    (-->  
      (expressions  
        (Cons  $E $Es)) 
      (,  ws 
        (,  
          (expression  $E) 
          (,  ws 
            (,  ! 
              (expressions  $Es)))))) True); single solution: longest input match

  (= 
    (-->  
      (expressions  ()) ()) True)

; ws --> ";",until_eol,
  (= 
    (-->  ws 
      (,  
        ($W) 
        (,  
          { (code_type  $W space) } ws))) True)
  (= 
    (-->  ws ()) True)

; A number N is represented as n(N), a symbol S as s(S).

  (= 
    (-->  
      (expression  
        (s  $A)) 
      (,  
        (symbol  $Cs) 
        { (atom_codes  $A $Cs) })) True)
  (= 
    (-->  
      (expression  
        (n  $N)) 
      (,  
        (number  $Cs) 
        { (number_codes  $N $Cs) })) True)
  (= 
    (-->  
      (expression  $List) 
      (,  
        ($L) 
        (,  
          { (is_bracket_lr  $L $R) } 
          (,  
            (expressions  $List) 
            ($R))))) True)
  (= 
    (-->  
      (expression  
        ( (s  quote) $Q)) 
      (,  "'" 
        (expression  $Q))) True)

  (= 
    (-->  
      (number  
        (Cons  $D $Ds)) 
      (,  
        (digit  $D) 
        (number  $Ds))) True)
  (= 
    (-->  
      (number  
        ($D)) 
      (digit  $D)) True)

  (= 
    (-->  
      (digit  $D) 
      (,  
        ($D) 
        { (code_type  $D digit) })) True)

  (= 
    (-->  
      (symbol  
        (Cons  $A $As)) 
      (,  
        ($A) 
        (,  
          { (is_ok_symbolchar  $A) } 
          (symbolr  $As)))) True)

  (= 
    (-->  
      (symbolr  
        (Cons  $A $As)) 
      (,  
        ($A) 
        (,  
          { (;  
              (is_ok_symbolchar  $A) 
              (code_type  $A alnum)) } 
          (symbolr  $As)))) True)
  (= 
    (-->  
      (symbolr  ()) ()) True)


  (= 
    (is-bracket-lr $L $R) 
    (, 
      (member $LR 
        (:: "()" "{}" "[]" "\"\"")) 
      (nth0 0 $LR $L) 
      (nth0 1 $LR $R)))

  (= 
    (is-ok-symbolchar $A) 
    (, 
      (not (code-type $A space)) 
      (not (code-type $A white)) 
      (not (is-bracket-lr $A $_)) 
      (not (is-bracket-lr $_ $A))))


  (= 
    (codelist-to-forms-i $AsciiCodesList $FormsOut) 
    (, 
      (parsing $AsciiCodesList $Forms0) 
      (compile-all $Forms0 $FormsOut) 
      (set-det)))/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Interpretation
   --------------

   Declaratively, execution of a Lisp form is a relation between the
   (function and variable) binding environment before its execution
   and the environment after its execution. A Lisp program is a
   sequence of Lisp forms, and its result is the sequence of their
   results. The environment is represented as a pair of association
   lists Fs-Vs, associating function names with argument names and
   bodies, and variables with values. DCGs are used to implicitly
   thread the environment state through.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */



  (= 
    (run $Program $Values) 
    (, 
      (parsing $Program $Forms0) 
      (empty-assoc $E) 
      (compile-all $Forms0 $Forms) 
      (writeq (seeingFormas $Forms)) 
      (nl) 
      (phrase 
        (eval-all $Forms $Values0) 
        (:: (- $E $E)) $_) 
      (maplist unfunc $Values0 $Values)))


  (= 
    (unfunc  
      (s  $S) $S) True)
  (= 
    (unfunc  t t) True)
  (= 
    (unfunc  
      (n  $N) $N) True)
  (= 
    (unfunc  () ()) True)
  (= 
    (unfunc 
      (Cons  $Q0 $Qs0) 
      (Cons  $Q $Qs)) 
    (, 
      (unfunc $Q0 $Q) 
      (unfunc $Qs0 $Qs)))


  (= 
    (fold  () $_ $V 
      (n  $V)) True)
  (= 
    (fold 
      (Cons  
        (n $F) $Fs) $Op $V0 $V) 
    (, 
      (=.. $E 
        (:: $Op $V0 $F)) 
      (is $V1 $E) 
      (fold $Fs $Op $V1 $V)))


  (= 
    (compile-all $Fs0 $Fs) 
    (maplist compile $Fs0 $Fs))


  (= 
    (compile $F0 $F) 
    (if-then-else 
      (= $F0 
        (n $_)) 
      (= $F $F0) 
      (if-then-else 
        (= $F0 
          (s t)) 
        (= $F t) 
        (if-then-else 
          (= $F0 
            (s nil)) 
          (= $F Nil) 
          (if-then-else 
            (= $F0 
              (s $_)) 
            (= $F $F0) 
            (if-then-else 
              (= $F0 Nil) 
              (= $F Nil) 
              (if-then-else 
                (= $F0 
                  (:: 
                    (s quote) $Arg)) 
                (= $F 
                  (:: quote $Arg)) 
                (if-then-else 
                  (= $F0 
                    (:: 
                      (s setq) 
                      (s $Var) $Val0)) 
                  (, 
                    (compile $Val0 $Val) 
                    (= $F 
                      (:: setq $Var $Val))) 
                  (if-then-else 
                    (, 
                      (= $F0 
                        (Cons  
                          (s $Op) $Args0)) 
                      (memberchk $Op 
                        (:: + - * equal if > < = progn eval list car cons cdr while not))) 
                    (, 
                      (compile-all $Args0 $Args) 
                      (= $F 
                        (Cons  $Op $Args))) 
                    (if-then-else 
                      (= $F0 
                        (Cons  
                          (s defun) 
                          (Cons  
                            (s $Name) 
                            (Cons  $Args0 $Body0)))) 
                      (, 
                        (compile-all $Body0 $Body) 
                        (maplist 
                          (arg 1) $Args0 $Args) 
                        (= $F 
                          (Cons  defun 
                            (Cons  $Name 
                              (Cons  $Args $Body))))) 
                      (if-then 
                        (= $F0 
                          (Cons  
                            (s $Op) $Args0)) 
                        (, 
                          (compile-all $Args0 $Args) 
                          (= $F 
                            (Cons  
                              (user $Op) $Args))))))))))))))/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    compile/2 marks (with 'user/1') calls of user-defined functions.
    This eliminates an otherwise defaulty representation of function
    calls and thus allows for first argument indexing in eval//3.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */



  (= 
    (-->  
      (eval_all  () ()) ()) True)
  (= 
    (-->  
      (eval_all  
        (Cons  $A $As) 
        (Cons  $B $Bs)) 
      (,  
        (eval  $A $B) 
        (eval_all  $As $Bs))) True)

  (= 
    (-->  
      (eval  
        (n  $N) 
        (n  $N)) ()) True)
  (= 
    (-->  
      (eval  t t) ()) True)
  (= 
    (-->  
      (eval  () ()) ()) True)
  (= 
    (-->  
      (,  
        (eval  
          (s  $A) $V) 
        ( (-  $Fs $Vs))) 
      (,  
        ( (-  $Fs $Vs)) 
        { (get_assoc  $A $Vs $V) })) True)
  (= 
    (-->  
      (eval  
        (Cons  $L $Ls) $Value) 
      (eval  $L $Ls $Value)) True)

  (= 
    (-->  
      (eval  quote 
        ($Q) $Q) ()) True)
  (= 
    (-->  
      (eval  + $As0 $V) 
      (,  
        (eval_all  $As0 $As) 
        { (fold  $As + 0 $V) })) True)
  (= 
    (-->  
      (eval  - $As0 $V) 
      (,  
        (eval_all  $As0 
          (Cons  
            (n  $V0) $Vs0)) 
        { (fold  $Vs0 - $V0 $V) })) True)
  (= 
    (-->  
      (eval  * $As0 $V) 
      (,  
        (eval_all  $As0 $Vs) 
        { (fold  $Vs * 1 $V) })) True)
  (= 
    (-->  
      (eval  car 
        ($A) $C) 
      (,  
        (eval  $A $V) 
        { (;  
            (->  
              (==  $V ()) 
              (= $C ())) 
            (= $V 
              (Cons  $C $_))) })) True)
  (= 
    (-->  
      (eval  cdr 
        ($A) $C) 
      (,  
        (eval  $A $V) 
        { (;  
            (->  
              (==  $V ()) 
              (= $C ())) 
            (= $V 
              (Cons  $_ $C))) })) True)
  (= 
    (-->  
      (eval  list $Ls0 $Ls) 
      (eval_all  $Ls0 $Ls)) True)
  (= 
    (-->  
      (eval  not 
        ($A) $V) 
      (,  
        (eval  $A $V0) 
        (goal_truth  
          (= $V0 ()) $V))) True)
  (= 
    (-->  
      (eval  > 
        ($A $B) $V) 
      (,  
        (eval  $A 
          (n  $V1)) 
        (,  
          (eval  $B 
            (n  $V2)) 
          (goal_truth  
            (>  $V1 $V2) $V)))) True)
  (= 
    (-->  
      (eval  < 
        ($A $B) $V) 
      (eval  > 
        ($B $A) $V)) True)
  (= 
    (-->  
      (eval  = 
        ($A $B) $V) 
      (,  
        (eval  $A 
          (n  $V1)) 
        (,  
          (eval  $B 
            (n  $V2)) 
          (goal_truth  
            (=:=  $V1 $V2) $V)))) True)
  (= 
    (-->  
      (eval  progn $Ps $V) 
      (,  
        (eval_all  $Ps $Vs) 
        { (last  $Vs $V) })) True)
  (= 
    (-->  
      (eval  eval 
        ($A) $V) 
      (,  
        (eval  $A $F0) 
        (,  
          { (compile  $F0 $F1) } 
          (eval  $F1 $V)))) True)
  (= 
    (-->  
      (eval  equal 
        ($A $B) $V) 
      (,  
        (eval  $A $V1) 
        (,  
          (eval  $B $V2) 
          (goal_truth  
            (= $V1 $V2) $V)))) True)
  (= 
    (-->  
      (eval  cons 
        ($A $B) 
        (Cons  $V0 $V1)) 
      (,  
        (eval  $A $V0) 
        (eval  $B $V1))) True)
  (= 
    (-->  
      (eval  while 
        (Cons  $Cond $Bs) ()) 
      (;  
        (->  
          (eval  $Cond ()) ()) 
        (,  
          (eval_all  $Bs $_) 
          (eval  while 
            (Cons  $Cond $Bs) $_)))) True)
  (= 
    (-->  
      (,  
        (eval  defun 
          (Cons  $F 
            (Cons  $As $Body)) 
          (s  $F)) 
        ( (-  $Fs $Vs0))) 
      (,  
        ( (-  $Fs0 $Vs0)) 
        { (put_assoc  $F $Fs0 
            (-  $As $Body) $Fs) })) True)
  (= 
    (-->  
      (,  
        (eval  
          (user  $F) $As0 $V) 
        ( (-  $Fs $Vs))) 
      (,  
        (eval_all  $As0 $As1) 
        (,  
          ( (-  $Fs $Vs)) 
          { (,  
              (empty_assoc  $E) 
              (,  
                (get_assoc  $F $Fs 
                  (-  $As $Body)) 
                (,  
                  (bind_arguments  $As $As1 $E $Bindings) 
                  (,  
                    (phrase  
                      (eval_all  $Body $Results) 
                      ( (-  $Fs $Bindings)) $_) 
                    (last  $Results $V))))) }))) True)
  (= 
    (-->  
      (,  
        (eval  bind! 
          ($Var $V0) $V) 
        ( (-  $Fs0 $Vs))) 
      (,  
        (eval  $V0 $V) 
        (,  
          ( (-  $Fs0 $Vs0)) 
          { (put_assoc  $Var $Vs0 $V $Vs) }))) True)
  (= 
    (-->  
      (,  
        (eval  setq 
          ($Var $V0) $V) 
        ( (-  $Fs0 $Vs))) 
      (,  
        (eval  $V0 $V) 
        (,  
          ( (-  $Fs0 $Vs0)) 
          { (put_assoc  $Var $Vs0 $V $Vs) }))) True)
  (= 
    (-->  
      (eval  if 
        (Cons  $Cond 
          (Cons  $Then $Else)) $Value) 
      (;  
        (->  
          (eval  $Cond ()) 
          (,  
            (eval_all  $Else $Values) 
            { (last  $Values $Value) })) 
        (eval  $Then $Value))) True)


  (meta-predicate (goal-truth 0 * // //))

  (= 
    (-->  
      (goal_truth  $Goal $T) 
      { (;  
          (->  $Goal 
            (= $T t)) 
          (= $T ())) }) True)


  (= 
    (bind_arguments  () () $Bs $Bs) True)
  (= 
    (bind-arguments 
      (Cons  $A $As) 
      (Cons  $V $Vs) $Bs0 $Bs) 
    (, 
      (put-assoc $A $Bs0 $V $Bs1) 
      (bind-arguments $As $Vs $Bs1 $Bs)))


  (= 
    (run $S) 
    (, 
      (format ~n~s~n 
        (:: $S)) 
      (run $S $V) 
      (writeq $V)))

;if_script_file_time(X):-if_startup_script(time(X)).

  (= 
    (if-script-file-time $_) 
    (set-det))
;if_script_file_time(X):- nop(time(X)).

; Append:
    
  (if-script-file-time (run "\n        (defun append (x y)\n          (if x\n              (cons (car x) (append (cdr x) y))\n            y))\n\n        (append '(a b) '(3 4 5))"))

    ;@ V = [append, [a, b, 3, 4, 5]].


; Fibonacci, naive version:
    
  (if-script-file-time (run "\n        (defun fib (n)\n          (if (= 0 n)\n              0\n            (if (= 1 n)\n                1\n              (+ (fib (- n 1)) (fib (- n 2))))))\n        (fib 24)"))

    ;@ ; 14,255,802 inferences, 3.71 CPU in 3.87 seconds (96; CPU, 3842534 Lips)
    ;@ V = [fib, 46368].


; Fibonacci, accumulating version:
    
  (if-script-file-time (run "\n        (defun fib (n)\n          (if (= 0 n) 0 (fib1 0 1 1 n)))\n\n        (defun fib1 (f1 f2 i to)\n          (if (= i to)\n              f2\n            (fib1 f2 (+ f1 f2) (+ i 1) to)))\n\n        (fib 250)"))

    ;@ ; 39,882 inferences, 0.010 CPU in 0.013 seconds (80; CPU, 3988200 Lips)
    ;@ V = [fib, fib1, 7896325826131730509282738943634332893686268675876375].


; Fibonacci, iterative version:
    
  (if-script-file-time (run "\n        (defun fib (n)\n          (setq f (cons 0 1))\n          (setq i 0)\n          (while (< i n)\n            (setq f (cons (cdr f) (+ (car f) (cdr f))))\n            (setq i (+ i 1)))\n          (car f))\n\n        (fib 350)"))

    ;@ ; 30,794 inferences, 0.002 CPU in 0.002 seconds (100; CPU, 12831368 Lips)
    ;@ V = [fib, 6254449428820551641549772190170184190608177514674331726439961915653414425].



; Fibonacci, accumulating version:
    
  (if-script-file-time (run "\n        (defun fib (n)\n          (if (= 0 n) 0 (fib1 0 1 1 n)))\n\n        (defun fib1 (f1 f2 i to)\n          (if (= i to)\n              f2\n            (fib1 f2 (+ f1 f2) (+ i 1) to)))\n\n        (fib 350)"))

    ;@ ; 44,595 inferences, 0.003 CPU in 0.003 seconds (100; CPU, 14526532 Lips)
    ;@ V = [fib, fib1, 6254449428820551641549772190170184190608177514674331726439961915653414425].


; Higher-order programming and eval:
    
  (if-script-file-time (run "\n        (defun map (f xs)\n          (if xs\n              (cons (eval (list f (car xs))) (map f (cdr xs)))\n            ()))\n\n        (defun plus1 (x) (+ 1 x))\n\n        (map 'plus1 '(1 2 3))\n        "))

    ;@ V = [map, plus1, [2, 3, 4]].

;:- ensure_loaded(metta_reader).



