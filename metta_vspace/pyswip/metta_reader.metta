
  (if flush-output)/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Parsing
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
;:- encoding(iso_latin_1).
  (endif)
  (if (setenv RUST-BACKTRACE full)) 
  (endif)
;:- if(\+ current_module(sxpr_reader)).
  (if (, False (not (current-prolog-flag wamcl-modules False))))
  (module s3xpr 
    (:: 
      (/ parse-sexpr 2) 
      (/ codelist-to-forms 2) 
      (/ svar-fixvarname 2) 
      (/ parse-sexpr-untyped 2) 
      (/ with-kifvars 1) 
      (/ current-input-to-forms 2) 
      (/ input-to-forms 2) 
      (/ input-to-forms 3) 
      (/ input-to-forms-debug 1) 
      (/ input-to-forms-debug 2) 
      (/ sexpr-sterm-to-pterm-list 3) 
      (// sexpr 1) 
      (/ fixvars 4) 
      (/ txt-to-codes 2) 
      (/ quietly-sreader 1) 
      (// file-sexpr-with-comments 1) 
      (/ with-lisp-translation 2) 
      (/ to-untyped 2) 
      (/ ok-var-name 1) 
      (/ with-all-rest-info 1) 
      (/ svar-fixvarname 2) 
      (/ sexpr-sterm-to-pterm 2) 
      (/ lisp-read 2) 
      (/ phrase-from-stream-nd 2) 
      (/ write-trans 4) 
      (/ parse-sexpr 2)))
  (endif)

  (ensure-loaded swi-support)
  (ensure-loaded metta-utils)
  (ensure-loaded metta-testing)
  (set-prolog-flag encoding iso-latin-1)

  (= is_wam_cl 
    (empty))


  (use-module (library backcomp))
  (use-module (library rbtrees))


  (use-module (library (/ logicmoo dcg-must)))
  (use-module (library (/ logicmoo dcg-meta)))


;:- meta_predicate always_b(//,?,?).
;:- meta_predicate bx(0).
  (meta-predicate (call-proc 1 ?))
  (meta-predicate (dcg-and2 // // ? ?))
  (meta-predicate (dcg-each-call-cleanup 0 // 0 ? ?))
  (meta-predicate (dcg-not // ? ?))
  (meta-predicate (dcg-phrase // ? ?))
  (meta-predicate (dcg-xor // // ? ?))
;:- meta_predicate expr_with_text(*,2,*,*,*).

  (meta-predicate (remove-optional-char // ? ?))

  (meta-predicate (sexpr-vector0 * // ? ?))
  (meta-predicate (with-all-rest-info 1))
  (meta-predicate (with-lisp-translation-stream * 1))
  (meta-predicate (write-trans + * 2 ?))

;:- assert((s3xpr:'$exported_op'(_,_,_):- fail)).
;:- assert((xlisting:'$exported_op'(_,_,_):- fail)).
  (add-atom  &self 
    (:-  
      (:  user 
        ($exported_op  $_ $_ $_)) fail))
  (abolish (with_self  (system) (/ $exported-op 3)))
  (add-atom  &self 
    (:-  
      (:  system 
        ($exported_op  $_ $_ $_)) fail))


  (= 
    (def-is-characterp $CH) 
    (, 
      (current-predicate (/ is-characterp 1)) 
      (set-det) 
      (call call is-characterp $CH)))

  (= 
    (def_is_characterp_def  
      (#\  $_)) True)


  (= 
    (def-to-prolog-string $I $O) 
    (, 
      (current-predicate (/ to-prolog-string 2)) 
      (set-det) 
      (call call to-prolog-string $I $O)))
  (= 
    (def-to-prolog-string $I $O) 
    (any-to-string $I $O))



  (= 
    (def-compile-all $I $O) 
    (, 
      (current-predicate (/ compile-all 2)) 
      (set-det) 
      (call call compile-all $I $O)))
  (= 
    (def-compile-all $I $O) 
    (, 
      (fbug (undefined-compile-all $I)) 
      (= $I $O)))



  (= 
    (zalwayzz $G) 
    (or 
      (each-then 
        (call $G) True) 
      (throw (fail-zalwayzz $G))))
  (= 
    (zalwayzz $G $I $O) 
    (or 
      (each-then 
        (phrase $G $I $O) True) 
      (ignore (, (ignore (, (append $I Nil $Txt) (name $Str $Txt))) (throw (fail-zalwayzz $Str $G))))))


; DCG rules for S-expressions metta_with metta_whitespace and comments

  (= 
    (-->  
      (s_expr_metta  $List) 
      (,  metta_wspace 
        (,  ! 
          (s_expr_metta  $List)))) True)
  (= 
    (-->  
      (s_expr_metta  $List) 
      (,  
        (40) 
        (,  ! 
          (items_metta  $List 
            (41))))) True)
  (= 
    (-->  
      (s_expr_metta  
        [$List ]) 
      (,  
        (91) 
        (,  ! 
          (items_metta  $List 
            (93))))) True)
  (= 
    (-->  
      (s_expr_metta  
        {$List }) 
      (,  
        (123) 
        (,  ! 
          (items_metta  $List 
            (125))))) True)


  (= 
    (-->  
      (items_metta  () $Until) 
      (,  $Until !)) True)
  (= 
    (-->  
      (items_metta  
        (Cons  $Item $Rest) $Until) 
      (,  
        (s_item_metta  $Item 
          (dcg_peek  $Until)) 
        (,  ! 
          (items_metta  $Rest $Until)))) True)

;s_line_metta(end_of_file) --> file_eof,!.
  (= 
    (-->  
      (s_line_metta  $Expr) 
      (,  metta_wspace 
        (,  ! 
          (s_line_metta  $Expr)))) True)
  (= 
    (-->  
      (s_line_metta  
        !$Expr) 
      (,  
        (33) 
        (,  ! 
          (s_item_metta  $Expr e_o_s)))) True)
  (= 
    (-->  
      (s_line_metta  $Expr) 
      (s_item_metta  $Expr e_o_s)) True)

;s_item_metta(end_of_file, _) --> file_eof,!.
  (= 
    (-->  
      (s_item_metta  $Expr $Until) 
      (,  metta_wspace 
        (,  ! 
          (s_item_metta  $Expr $Until)))) True)
;s_item_metta('Expr', Until) --> Until,!.
  (= 
    (-->  
      (s_item_metta  $List $Until) 
      (,  
        (s_expr_metta  $List) !)) True)
  (= 
    (-->  
      (s_item_metta  $String $Until) 
      (,  
        (string_metta  $String) !)) True)
  (= 
    (-->  
      (s_item_metta  $Symbol $Until) 
      (symbol_metta  $Symbol $Until)) True)


  (encoding iso-latin-1)
;string_metta(S) --> `"`, !, string_until_metta(S, `"`), {atomics_to_string_metta(A,S)}.
;string_metta(Text)                 --> `"`, !, zalmetta_wayzz_metta(string_until_metta(Text,`"`)),!.
;string_metta(Text)                 --> `�`, !, zalmetta_wayzz_metta(string_until_metta(Text,(`�`;`�`))),!.

  (= 
    (-->  
      (string_metta  $Text) 
      (,  
        (34) 
        (,  
          (string_until_metta  $L 
            (34)) 
          (,  
            { (atomics_to_string  $L $Text) } !)))) True)
  (= 
    (-->  
      (string_metta  $Text) 
      (,  
        (;  
          (65533) 
          (;  
            (65533) 
            (34))) 
        (,  ! 
          (,  
            (string_until_metta  $L 
              (;  
                (65533) 
                (;  
                  (65533) 
                  (34)))) 
            { (atomics_to_string  $L $Text) })))) True)

  (encoding utf8)
;string_metta(Text)                 --> `#|`, !, zalmetta_wayzz_metta(string_until_metta(Text,`|#`)),!.

; string_until_metta([], _) --> e_o_s, !.
;string_until_metta([], _) --> file_eof,!.

  (= 
    (-->  
      (string_until_metta  () $Until) 
      (,  $Until !)) True)
  (= 
    (-->  
      (string_until_metta  
        (Cons  $C $Cs) $Until) 
      (,  
        (escape_sequence_metta  $C) 
        (,  ! 
          (string_until_metta  $Cs $Until)))) True)
  (= 
    (-->  
      (string_until_metta  
        (Cons  $C $Cs) $Until) 
      (,  
        ($R) 
        (,  
          { (name  $C 
              ($R)) } 
          (string_until_metta  $Cs $Until)))) True)

  (= 
    (-->  
      (escape_sequence_metta  $Char) 
      (,  
        (92) 
        (,  
          ($Esc) 
          { (escape_char_metta  
              ($Esc) $Char) }))) True)

  (= 
    (escape_char_metta  
      (34) "\"") True)
  (= 
    (escape_char_metta  
      (92) "\\") True)
  (= 
    (escape_char_metta  
      (110) "\n") True)
  (= 
    (escape_char_metta  
      (114) "\r") True)
  (= 
    (escape_char_metta  
      (116) "\t") True)
  (= 
    (escape-char-metta $C $S) 
    (sformat $S ~s 
      (:: (:: $C))))


  (= 
    (-->  
      (symbol_metta  $S $Until) 
      (,  metta_wspace 
        (,  ! 
          (symbol_metta  $S $Until)))) True)
  (= 
    (-->  
      (symbol_metta  $S $Until) 
      (,  
        (string_until_metta  $SChars 
          (;  
            (dcg_peek  metta_white) $Until)) 
        { (atomic_list_concat  $SChars $S) })) True)

;comment --> `;`,!,comment_chars_metta(S).
  (= 
    (-->  
      (comment_chars_metta  $S) 
      (,  
        (string_until_metta  $SChars 
          (10)) 
        { (atomic_list_concat  $SChars $S) })) True)

;e_o_s --> file_eof,!.
  (= 
    (-->  e_o_s 
      (\+  
        (Cons  $_ $_))) True)

;metta_ws --> e_o_s,!.
  (= 
    (-->  metta_ws 
      (,  metta_wspace 
        (,  ! metta_ws))) True)
  (= 
    (-->  metta_ws ()) True)
  (= 
    (-->  metta_wspace 
      (,  
        (59) 
        (,  ! 
          (,  
            (comment_chars_metta  $S) 
            { (assert  
                (comment_metta  $S)) })))) True)
  (= 
    (-->  metta_wspace metta_white) True)
  (= 
    (-->  metta_white 
      (,  
        ($W) 
        (,  
          { (char_type  $W white) } !))) True)



;:- meta_predicate(always(0)).
;always(G):- must(G).


  (use-module (library (/ logicmoo filestreams)))
;:- use_module(library(bugger)).

  (if (exists-file ./header))
; :- include('./header').
  (endif)
;:- use_module(eightball).

  (thread-local (with_self  (t-l) (/ sreader-options 2)))

  (= 
    (kif-ok) 
    (, 
      (with_self  
        (t-l) 
        (sreader-options logicmoo-read-kif $TF)) 
      (set-det) 
      (== $TF True)))


  (= 
    (with-kif-ok $G) 
    (locally 
      (with_self  
        (t-l) 
        (sreader-options logicmoo-read-kif True)) $G))


  (= 
    (with-kif-not-ok $G) 
    (locally 
      (with_self  
        (t-l) 
        (sreader-options logicmoo-read-kif False)) $G))



  (meta-predicate (, (with-lisp-translation + 1) (input-to-forms-debug + :)))
  (meta-predicate (sexpr-vector * // ? ?))


  (dynamic (with_self  (user) (/ file-search-path 2)))
  (multifile (with_self  (user) (/ file-search-path 2)))

  (thread-local (with_self  (t-l) (/ s-reader-info 1)))

  (meta-predicate (quietly-sreader 0))
;quietly_sreader(G):- quietly(G).

  (= 
    (quietly-sreader $G) 
    (, 
      (set-det) 
      (call $G)))

;; with_lisp_translation( +FileOrStream, :Pred1) is det.
;
; With File or Stream read all S-expressions submitting each to Pred1
;

  (= 
    (with-lisp-translation $In $Pred1) 
    (, 
      (is-stream $In) 
      (set-det) 
      (with-lisp-translation-stream $In $Pred1)))
  (= 
    (with-lisp-translation $Other $Pred1) 
    (, 
      (setup-call-cleanup 
        (l-open-input $Other $In) 
        (with-lisp-translation-stream $In $Pred1) 
        (ignore (notrace-catch-fail (close $In)))) 
      (set-det)))


  (= 
    (with-lisp-translation-stream $In $Pred1) 
    (, 
      (repeat) 
      (once (lisp-read $In $O)) 
      (if-then-else 
        (== $O end-of-file) 
        (, 
          (with-all-rest-info $Pred1) 
          (set-det)) 
        (, 
          (once (zalwayzz (call-proc $Pred1 $O))) 
          (fail)))))


  (= 
    (call-proc $Pred1 $O) 
    (, 
      (call $Pred1 $O) 
      (set-det) 
      (with-all-rest-info $Pred1) 
      (set-det)))


  (= 
    (with-all-rest-info $Pred1) 
    (, 
      (forall 
        (clause 
          (with_self  
            (t-l) 
            (s-reader-info $O2)) $_ $Ref) 
        (, 
          (zalwayzz (once (call $Pred1 $O2))) 
          (erase $Ref))) 
      (set-det)))


  (= 
    (parse-sexpr-untyped $I $O) 
    (, 
      (quietly-sreader (parse-sexpr $I $M)) 
      (quietly-sreader (to-untyped $M $O))))


  (= 
    (read-pending-whitespace $In) 
    (, 
      (repeat) 
      (peek-char $In $Code) 
      (if-then-else 
        (, 
          (not (char-type $Code space)) 
          (not (char-type $Code white))) 
        (set-det) 
        (, 
          (get-char $In $_) 
          (fail)))))



  (= 
    (make-tmpfile-name $Name $Temp) 
    (, 
      (atomic-list-concat $List1 / $Name) 
      (atomic-list-concat $List1 - $Temp1) 
      (atomic-list-concat $List2 . $Temp1) 
      (atomic-list-concat $List2 - $Temp2) 
      (atomic-list-concat $List3 \ $Temp2) 
      (atomic-list-concat $List3 - $Temp3) 
      (atom-concat-or-rtrace $Temp3 .tmp $Temp) 
      (set-det)))





  (meta-predicate (with-lisp-translation-cached : 2 1))
  (meta-predicate (maybe-cache-lisp-translation + + 2))


  (= 
    (with-lisp-translation-cached 
      (with_self  $M $LFile) $WithPart2 $WithPart1) 
    (, 
      (absolute-file-name $LFile $File) 
      (make-tmpfile-name $LFile $Temp) 
      (maybe-cache-lisp-translation $File $Temp $WithPart2) 
      (set-det) 
      (finish-lisp-translation-cached $M $File $Temp $WithPart1)))


  (= 
    (finish-lisp-translation-cached $M $File $Temp $WithPart1) 
    (, 
      (multifile (with_self  $M (/ lisp-trans 2))) 
      (dynamic (with_self  $M (/ lisp-trans 2))) 
      (file-base-name $File $BaseName) 
      (with_self  $M 
        (load-files 
          (:: $Temp) 
          (:: (qcompile auto)))) 
      (forall 
        (with_self  $M 
          (lisp-trans $Part2 
            (with_self  $BaseName $Line))) 
        (once (, (b-setval $lisp-translation-line $Line) (zalwayzz (with_self  $M (call $WithPart1 $Part2))))))))


  (= 
    (maybe-cache-lisp-translation $File $Temp $_) 
    (, 
      (not (file-needs-rebuilt $Temp $File)) 
      (set-det)))
  (= 
    (maybe-cache-lisp-translation $File $Temp $WithPart2) 
    (, 
      (file-base-name $File $BaseName) 
      (setup-call-cleanup 
        (open $Temp write $Outs 
          (:: (encoding utf8))) 
        (must-det (, (format $Outs ~N~q.~n (:: !(multifile (/ lisp-trans 2)))) (format $Outs ~N~q.~n (:: !(dynamic (/ lisp-trans 2)))) (format $Outs ~N~q.~n (:: !(style-check (- singleton)))) (format $Outs ~N~q.~n (:: (lisp-trans (translated $File $Temp $BaseName) (with_self  $BaseName -1)))) (with-lisp-translation $File (write-trans $Outs $BaseName $WithPart2)) (format $Outs ~N~q.~n (:: end-of-file)))) 
        (, 
          (ignore (notrace-catch-fail (flush-output $Outs) $_ True)) 
          (ignore (notrace-catch-fail (close $Outs) $_ True)))) 
      (set-det)))



  (= 
    (write-trans $Outs $File $WithPart2 $Lisp) 
    (, 
      (zalwayzz (, (call $WithPart2 $Lisp $Part) (nb-current $lisp-translation-line $Line) (format $Outs ~N~q.~n (:: (lisp-trans $Part (with_self  $File $Line)))))) 
      (set-det)))


  (= 
    (phrase-from-stream-partial $Grammar $In) 
    (phrase-from-stream 
      (, $Grammar 
        (set-det) 
        (lazy-forgotten $In)) $In))/* alternate method*/



  (= 
    (lazy-forgotten $In $UnUsed $UnUsed) 
    (, 
      (if-then-else 
        (is-list $UnUsed) True 
        (append $UnUsed Nil $UnUsed)) 
      (length $UnUsed $PlzUnread) 
      (seek $In 
        (- $PlzUnread) current $_)))


; :- use_module(library(yall)).
; :- rtrace.
; tstl(I):- with_lisp_translation(I,([O]>>(writeq(O),nl))).

  (= 
    (tstl $I) 
    (with-kifvars (with-lisp-translation $I writeqnl)))


  (= 
    (with-kifvars $Goal) 
    (locally 
      (with_self  
        (t-l) 
        (sreader-options logicmoo-read-kif True)) $Goal))



;:- thread_local(t_l:fake_buffer_codes/2).


;; parse_sexpr( :TermS, -Expr) is det.
;
; Parse S-expression.
;


  (= 
    (parse-sexpr $S $Expr) 
    (quietly-sreader (parse-meta-term file-sexpr-with-comments $S $Expr)))

;; parse_sexpr_ascii( +Codes, -Expr) is det.
;
; Parse S-expression Codes.
;

  (= 
    (parse-sexpr-ascii $S $Expr) 
    (, 
      (quietly-sreader (parse-meta-ascii file-sexpr-with-comments $S $Expr)) 
      (set-det)))



  (= 
    (parse-sexpr-ascii-as-list $Text $Expr) 
    (, 
      (txt-to-codes $Text $DCodes) 
      (clean-fromt-ws $DCodes $Codes) 
      (set-det) 
      (append 
        (:: 
          (:: 40) $Codes 
          (:: 41)) $NCodes) 
      (set-det) 
      (phrase 
        (sexpr-rest $Expr) $NCodes Nil)))


;; parse_sexpr_string( +Codes, -Expr) is det.
;
; Parse S-expression That maybe sees string from Codes.
;

  (= 
    (parse-sexpr-string $S $Expr) 
    (, 
      (locally-setval $maybe-string t 
        (parse-sexpr 
          (string $S) $Expr)) 
      (set-det)))

;; parse_sexpr_stream( +Stream, -Expr) is det.
;
; Parse S-expression from a Stream
;

  (= 
    (parse-sexpr-stream $S $Expr) 
    (, 
      (quietly-sreader (parse-meta-stream file-sexpr-with-comments $S $Expr)) 
      (set-det)))


  (export (// file-sexpr 1))
  (export (// sexpr 1))

; for offline use of this lisp reader

  (= 
    (intern-and-eval $UTC $V) 
    (, 
      (current-predicate (/ lisp-compiled-eval 2)) 
      (set-det) 
      (call call 
        (, 
          (reader-intern-symbols $UTC $M) 
          (set-det) 
          (lisp-compiled-eval $M $V)))))
  (= 
    (intern_and_eval  $UTC 
      ($intern_and_eval  $UTC)) True)

; Use DCG for parser.


;file_sexpr_with_comments(O) --> [], {clause(t_l:s_reader_info(O),_,Ref),erase(Ref)},!.

  (= 
    (-->  
      (file_sexpr_with_comments  end_of_file) 
      (,  file_eof !)) True)
  (= 
    (-->  
      (file_sexpr_with_comments  +) 
      (,  
        (43) 
        (,  swhite !))) True)

  (= 
    (-->  
      (file_sexpr_with_comments  $O) 
      (,  one_blank 
        (,  ! 
          (,  
            (file_sexpr_with_comments  $O) !)))) True)  ; WANT?
  (= 
    (-->  
      (file_sexpr_with_comments  end_of_file) 
      (,  
        (58 69 79 70) !)) True)
  (= 
    (-->  
      (file_sexpr_with_comments  $C) 
      (,  
        (dcg_peek  
          (35 124)) 
        (,  ! 
          (,  
            (zalwayzz  
              (comment_expr  $C)) 
            (,  swhite !))))) True)
  (= 
    (-->  
      (file_sexpr_with_comments  $C) 
      (,  
        (dcg_peek  
          (59)) 
        (,  ! 
          (,  
            (zalwayzz  
              (comment_expr  $C)) 
            (,  swhite !))))) True)
  (= 
    (-->  
      (file_sexpr_with_comments  $Out) 
      (,  
        {kif_ok } 
        (,  prolog_expr_next 
          (,  
            (prolog_readable_term  $Out) !)))) True)

  (= 
    (file-sexpr-with-comments $Out $S $E) 
    (, 
      (not (with_self  (t-l) (sreader-options with-text True))) 
      (set-det) 
      (phrase 
        (file-sexpr $Out) $S $E) 
      (set-det)))
  (= 
    (file-sexpr-with-comments $Out $S $E) 
    (, 
      (expr-with-text $Out 
        (file-sexpr $O) $O $S $E) 
      (set-det)))


  (= 
    (-->  prolog_expr_next 
      (dcg_peek  
        (58 45))) True)
  (= 
    (-->  prolog_expr_next 
      (,  
        (dcg_peek  
          (read_string_until  $S 
            (;  eol 
              (46)))) 
        { (atom_contains  $S :-) })) True)
  (= 
    (-->  prolog_expr_next 
      (dcg_peek  
        (46 123))) True)

  (= 
    (-->  
      (prolog_readable_term  $Expr) 
      (,  
        (46) 
        (,  
          (prolog_readable_term  $Read) 
          { (,  
              (arg  1 $Read $Expr) !) }))) True)

  (= 
    (prolog-readable-term $Expr $S $E) 
    (notrace (catch (, (read-term-from-codes $S $Expr (:: (subterm-positions $FromTo) (cycles True) (module baseKB) (double-quotes string) (comments $CMT) (variable-names $Vars))) (implode-threse-vars $Vars) (arg 2 $FromTo $To) (length $TermCodes $To) (append $TermCodes $Remaining $S) (= (:: 46) (:: $Dot)) (= $Remaining (Cons  $Dot $E)) (set-det) (must (record-plterm-comments $CMT))) $_ fail)))/*;Remaining=E*/


  (= 
    (record-plterm-comments $L) 
    (, 
      (is-list $L) 
      (set-det) 
      (maplist record-plterm-comments $L)))
  (= 
    (record-plterm-comments (- $_ $CMT)) 
    (add-atom  &self 
      (:  t_l 
        (s_reader_info  $CMT))))


; in Cyc there was a fitness heuristic that every time an logical axiom had a generated a unique consequent it was considered to have utility as it would expand the breadth of a search .. the problem often was those consequents would feed a another axiom's antecedant where that

  (asserta (= (with_self  (system) ($and $X $Y)) (, $X $Y)))

;expr_with_text(Out,DCG,O,S,E):-
;   call(DCG,S,E) -> append(S,Some,E) -> get_sexpr_with_comments(O,Some,Out,S,E),!.


  (= 
    (get-sexpr-with-comments $O $_ $O $_ $_) 
    (, 
      (compound $O) 
      (functor $O $COMMENT $_) 
      (set-det)))
  (= 
    (get-sexpr-with-comments $O $Txt 
      (with-text $O $Str) $S $E) 
    (, 
      (append $Txt $_ $S) 
      (set-det) 
      (text-to-string $Txt $Str)))
;file_sexpr_with_comments(O,with_text(O,Txt),S,E):- copy_until_tail(S,Copy),text_to_string_safe(Copy,Txt),!.



  (= 
    (-->  
      (file_sexpr  end_of_file) 
      (,  file_eof !)) True)
; WANT?
  (= 
    (-->  
      (file_sexpr  $O) 
      (,  sblank 
        (,  ! 
          (,  
            (file_sexpr  $O) !)))) True)
; file_sexpr(planStepLPG(Name,Expr,Value)) --> swhite,sym_or_num(Name),`:`,swhite, sexpr(Expr),swhite, `[`,sym_or_num(Value),`]`,swhite.  ;   0.0003:   (PICK-UP ANDY IBM-R30 CS-LOUNGE) [0.1000]
; file_sexpr(Term,Left,Right):- eoln(EOL),append(LLeft,[46,EOL|Right],Left),read_term_from_codes(LLeft,Term,[double_quotes(string),syntax_errors(fail)]),!.
; file_sexpr(Term,Left,Right):- append(LLeft,[46|Right],Left), ( \+ member(46,Right)),read_term_from_codes(LLeft,Term,[double_quotes(string),syntax_errors(fail)]),!.
  (= 
    (-->  
      (file_sexpr  $Expr) 
      (,  
        (sexpr  $Expr) !)) True)
; file_sexpr(Expr,H,T):- lisp_dump_break,rtrace(phrase(file_sexpr(Expr), H,T)).

  (= 
    (read-dispatch $E 
      (Cons  $DispatCH $In) $Out) 
    (read-dispatch-char 
      (:: $DispatCH) $E $In $Out))/*
file_sexpr(Expr) --> {fail},
   sexpr_lazy_list_character_count(Location,Stream),
  {break,
   seek(Stream,Location,bof,_),
   read_clause(Stream,Expr,[cycles(true),double_quotes(string),variable_names(Vars)]),
   implode_threse_vars(Vars)},!.

file_sexpr(Expr) --> sexpr(Expr),!.

file_sexpr(end_of_file) --> [].
*/
; file_sexpr('$ERROR'(S_EOF)) --> read_until_eof_e(Unitl_EOF),!,{sformat(S_EOF,'~s',[Unitl_EOF])}.
; read_until_eof_e(Unitl_EOF,S,E):- append(S,E,Unitl_EOF),break,is_list(Unitl_EOF),!.
;read_dispatch(E,[Disp,Char|In],Out):- read_dispatch_char([Disp,Char],E,In,Out).



  (= 
    (read-dispatch-char $DispatCH $Form $In $Out) 
    (, 
      (with_self  
        (sread-dyn) 
        (plugin-read-dispatch-char $DispatCH $Form $In $Out)) 
      (set-det)))
; read_dispatch_char(`@`,Form,In,Out):- phrase(sexpr(Form), In, Out),!.


  (= 
    (read-dispatch-error $Form $In $Out) 
    (, 
      (trace) 
      (dumpST) 
      (trace-or-throw (read-dispatch-error $Form $In $Out))))





  (multifile (with_self  (sread-dyn) (/ plugin-read-dispatch-char 4)))
  (dynamic (with_self  (sread-dyn) (/ plugin-read-dispatch-char 4)))

  (use-module (library (/ dcg basics)))

; #x Hex

  (= 
    (with_self  
      (sread-dyn) 
      (plugin-read-dispatch-char 
        (:: $DispatCH) $Form $In $Out)) 
    (, 
      (member $DispatCH 
        (:: 88 120)) 
      (phrase 
        (, 45 
          (with_self  
            (dcg-basics) 
            (xinteger $FormP))) $In $Out) 
      (set-det) 
      (is $Form 
        (- $FormP))))

  (= 
    (with_self  
      (sread-dyn) 
      (plugin-read-dispatch-char 
        (:: $DispatCH) $Form $In $Out)) 
    (, 
      (member $DispatCH 
        (:: 88 120)) 
      (set-det) 
      (zalwayzz (phrase (with_self  (dcg-basics) (xinteger $Form)) $In $Out)) 
      (set-det)))

; #B Binary
  (= 
    (with_self  
      (sread-dyn) 
      (plugin-read-dispatch-char 
        (:: $DispatCH) $Form $In $Out)) 
    (, 
      (member $DispatCH 
        (:: 66 98)) 
      (set-det) 
      (phrase 
        (signed-radix-2 2 $Form) $In $Out) 
      (set-det)))

; #O Octal
  (= 
    (with_self  
      (sread-dyn) 
      (plugin-read-dispatch-char 
        (:: $DispatCH) $Form $In $Out)) 
    (, 
      (member $DispatCH 
        (:: 79 111)) 
      (set-det) 
      (phrase 
        (signed-radix-2 8 $Form) $In $Out) 
      (set-det)))


  (= 
    (-->  
      (signed_radix_2  $W $V) 
      (,  
        (signed_radix_2_noext  $W $Number) 
        (extend_radix  $W $Number $V))) True)

  (= 
    (-->  
      (signed_radix_2_noext  $W $Number) 
      (,  
        (45) 
        (,  ! 
          (,  
            (unsigned_radix_2  $W $NumberP) 
            (,  
              { (is  $Number 
                  (-  $NumberP)) } !))))) True)
  (= 
    (-->  
      (signed_radix_2_noext  $W $Number) 
      (,  
        (43) 
        (,  ! 
          (unsigned_radix_2  $W $Number)))) True)
  (= 
    (-->  
      (signed_radix_2_noext  $W $Number) 
      (unsigned_radix_2  $W $Number)) True)

  (= 
    (-->  
      (unsigned_radix_2  $W $Number) 
      (,  
        (radix_digits  $W $Xs) 
        (,  ! 
          (,  
            { (mkvar_w  $Xs $W $Number) } !)))) True)


  (= 
    (-->  
      (radix  $Radix) 
      (,  
        (35) 
        (,  
          (integer  $Radix) 
          (ci  
            (114))))) True)
  (= 
    (-->  
      (radix  16) 
      (,  
        (35) 
        (ci  
          (88)))) True)
  (= 
    (-->  
      (radix  8) 
      (,  
        (35) 
        (ci  
          (79)))) True)
  (= 
    (-->  
      (radix  2) 
      (,  
        (35) 
        (ci  
          (66)))) True)

  (= 
    (-->  
      (signed_radix_number  $V) 
      (,  
        (radix  $Radix) 
        (,  ! 
          (signed_radix_2  $Radix $V)))) True)
  (= 
    (-->  
      (unsigned_radix_number  $V) 
      (,  
        (radix  $Radix) 
        (,  ! 
          (unsigned_radix_2  $Radix $V)))) True)

  (= 
    (-->  
      (extend_radix  $Radix $Number0 
        ($RATIO  $Number0 $Number1)) 
      (,  
        (47) 
        (unsigned_radix_2  $Radix $Number1))) True)
;extend_radix(Radix,Number0,'/'(NumberB,Number1)) --> `.`,radix_number(Radix,Number1),{NumberB is (Number0*Number1)+1},!.
;extend_radix(Radix,Number0,'/'(NumberB,NumberR)) --> `.`,radix_number(Radix,Number1),{NumberR is Number1 * Radix, NumberB is (Number0*Number1)+1},!.
  (= 
    (-->  
      (extend_radix  $Radix $Number $Number) ()) True)

  (= 
    (-->  
      (radix_digits  $OF 
        (Cons  $X $Xs)) 
      (,  
        (xdigit  $X) 
        (,  
          { (<  $X $OF) } 
          (,  ! 
            (radix_digits  $OF $Xs))))) True)
  (= 
    (-->  
      (radix_digits  $OF 
        (Cons  $X $Xs)) 
      (,  
        (alpha_to_lower  $C) 
        (,  
          { (,  
              (is  $X 
                (-  $C 87)) 
              (<  $X $OF)) } 
          (,  ! 
            (radix_digits  $OF $Xs))))) True)
  (= 
    (-->  
      (radix_digits  $_ ()) ()) True)




  (= 
    (mkvar-w 
      (Cons  $W0 $Weights) $Base $Val) 
    (mkvar-w $Weights $Base $W0 $Val))

  (= 
    (mkvar_w  () $_ $W $W) True)
  (= 
    (mkvar-w 
      (Cons  $H $T) $Base $W0 $W) 
    (, 
      (is $W1 
        (+ 
          (* $W0 $Base) $H)) 
      (mkvar-w $T $Base $W1 $W)))



  (= 
    (-->  
      (ci  ()) 
      (,  ! ())) True)
  (= 
    (-->  
      (ci  
        (Cons  $U $Xs)) 
      (,  
        { (to_lower  $U $X) } 
        (,  ! 
          (,  
            (alpha_to_lower  $X) 
            (ci  $Xs))))) True)


  (= 
    (-->  
      (remove_optional_char  $S) 
      (,  $S !)) True)
  (= 
    (-->  
      (remove_optional_char  $_) ()) True)


  (= 
    (implode-threse-vars (Cons  (= $N $N) $Vars)) 
    (, 
      (set-det) 
      (implode-threse-vars $Vars)))
  (= 
    (implode_threse_vars  ()) True)


  (= 
    (-->  
      (ugly_sexpr_cont  
        ($OBJ  
          (Cons  $S $V))) 
      (,  
        (rsymbol_maybe  () $S) 
        (,  
          (sexpr_vector  $V 
            (62)) 
          (,  swhite !)))) True)
  (= 
    (-->  
      (ugly_sexpr_cont  
        ($OBJ  $V)) 
      (,  
        (sexpr_vector  $V 
          (62)) 
        (,  swhite !))) True)
  (= 
    (-->  
      (ugly_sexpr_cont  
        ($OBJ  $V)) 
      (,  
        (sexpr_vector  $V 
          (62)) 
        (,  swhite !))) True)
  (= 
    (-->  
      (ugly_sexpr_cont  
        ($OBJ  $V)) 
      (,  
        (read_string_until_pairs  $VS 
          (62)) 
        (,  swhite 
          (,  
            { (parse_sexpr_ascii_as_list  $VS $V) } !)))) True)
  (= 
    (-->  
      (ugly_sexpr_cont  
        [$S ]) 
      (,  
        (read_string_until  $S 
          (62)) 
        (,  swhite !))) True)

;;  sexpr(L)// is det.
;

;sexpr(L)                   --> sblank,!,sexpr(L),!.
;sexpr(_) --> `)`,!,{trace,break,throw_reader_error(": an object cannot start with #\\)")}.

  (= 
    (sexpr $X $H $T) 
    (, 
      (zalwayzz 
        (sexpr0 $X) $H $M) 
      (zalwayzz swhite $M $T) 
      (nop (if-debugging sreader (fbug (sexpr $X)))) 
      (set-det)))
;sexpr(X,H,T):- zalwayzz(sexpr0(X,H,T)),!,swhite.

  (= is_common_lisp 
    (empty))


  (= 
    (-->  
      (sexpr0  $L) 
      (,  sblank 
        (,  ! 
          (,  
            (sexpr  $L) !)))) True)
  (= 
    (-->  
      (sexpr0  $L) 
      (,  
        (40) 
        (,  ! 
          (,  swhite 
            (,  
              (zalwayzz  
                (sexpr_list  $L)) 
              (,  ! swhite)))))) True)
  (= 
    (-->  
      (sexpr0  $Expr) 
      (,  
        (46 123) 
        (,  
          (read_string_until  $S 
            (125 46)) 
          (,  swhite 
            { (prolog_readable_term  $Expr $S $_) })))) True)


  (= 
    (-->  
      (sexpr0  
        ( (#  quote) $E)) 
      (,  
        (39) 
        (,  ! 
          (sexpr  $E)))) True)
  (= 
    (-->  
      (sexpr0  
        ( (#  hbackquote) $E)) 
      (,  
        {is_scm } 
        (,  
          (35 96) 
          (,  ! 
            (sexpr  $E))))) True)
  (= 
    (-->  
      (sexpr0  
        ( (#  backquote) $E)) 
      (,  
        (96) 
        (,  ! 
          (sexpr  $E)))) True)
  (= 
    (-->  
      (sexpr0  
        (#BQ-COMMA-ELIPSE $E)) 
      (,  
        (44 64) 
        (,  ! 
          (sexpr  $E)))) True)
  (= 
    (-->  
      (sexpr0  
        (#COMMA $E)) 
      (,  
        {is_common_lisp } 
        (,  
          (44) 
          (,  ! 
            (sexpr  $E))))) True)
  (= 
    (-->  
      (sexpr0  
        (#HCOMMA $E)) 
      (,  
        {is_scm } 
        (,  
          (35 44) 
          (,  ! 
            (sexpr  $E))))) True)
  (= 
    (-->  
      (sexpr0  
        [$V ]) 
      (,  
        (91) 
        (,  
          (sexpr_vector  $V 
            (93)) 
          (,  ! swhite)))) True)

; MeTTA/NARS ; sexpr0('#'(A))              --> `|`, !, read_string_until(S,`|`), swhite,{quietly_sreader(((atom_string(A,S))))}.

; maybe this is KIF
  (= 
    (-->  
      (sexpr0  
        (?  $E)) 
      (,  
        {kif_ok } 
        (,  
          (63) 
          (,  
            (dcg_peek  
              (,  
                ($C) 
                { (sym_char  $C) })) 
            (,  ! 
              (,  
                (rsymbol  () $E) swhite)))))) True)
; @TODO if KIF sexpr('#'(E))              --> `&;`, !, rsymbol(`#$`,E), swhite.

  (= 
    (-->  
      (sexpr0  
        S) 
      (,  
        (s_string  $S) !)) True)

  (= 
    (-->  
      (sexpr0  #) 
      (,  
        (35) 
        (,  swhite !))) True)/******** BEGIN HASH ************/

  (= 
    (-->  
      (sexpr0  
        (#\  35)) 
      (,  
        (35 92 35) 
        (,  ! swhite))) True)
  (= 
    (-->  
      (sexpr0  $E) 
      (,  
        (35) 
        (,  
          (read_dispatch  $E) !))) True)


;sexpr('#\\'(C))                 --> `#\\`,ci(`u`),!,remove_optional_char(`+`),dcg_basics:xinteger(C),!.
;sexpr('#\\'(C))                 --> `#\\`,dcg_basics:digit(S0), swhite,!,{atom_codes(C,[S0])}.
  (= 
    (-->  
      (sexpr0  
        (#\  32)) 
      (,  
        (35 92 32) !)) True)
  (= 
    (-->  
      (sexpr0  
        (#\  $C)) 
      (,  
        (35 92) 
        (,  ! 
          (,  
            (zalwayzz  
              (rsymbol  () $C)) swhite)))) True)

;sexpr(['#-',K,Out]) --> `#-`,!,sexpr(C),swhite,expr_with_text(Out,sexpr(O),O),!,{as_keyword(C,K)}.
;sexpr(['#+',K,Out]) --> `#+`,!,sexpr(C),swhite,expr_with_text(Out,sexpr(O),O),!,{as_keyword(C,K)}.

  (= 
    (-->  
      (sexpr0  
        (#- $K $O)) 
      (,  
        (35 45) 
        (,  ! 
          (,  
            (sexpr  $C) 
            (,  swhite 
              (,  
                (sexpr  $O) 
                (,  ! 
                  (,  
                    { (as_keyword  $C $K) } !)))))))) True)
  (= 
    (-->  
      (sexpr0  
        (#+ $K $O)) 
      (,  
        (35 43) 
        (,  ! 
          (,  
            (sexpr  $C) 
            (,  swhite 
              (,  
                (sexpr  $O) 
                (,  ! 
                  (,  
                    { (as_keyword  $C $K) } !)))))))) True)


  (if is-wam-cl)
 
  (= 
    (-->  
      (sexpr0  $P) 
      (,  
        (35) 
        (,  
          (ci  
            (112)) 
          (,  ! 
            (,  
              (zalwayzz  
                (,  
                  (sexpr  $C) 
                  { (f_pathname  $C $P) })) !))))) True)

  (endif)

  (= 
    (-->  
      (sexpr0  
        ($S  $C)) 
      (,  
        (,  
          (35) 
          (,  
            (ci  
              (115)) 
            (40))) 
        (,  ! 
          (,  
            (zalwayzz  
              (sexpr_list  $C)) 
            (,  swhite !))))) True)
;sexpr('$COMPLEX'(R,I)) --> `#`,ci(`c`),`(`,!,  lnumber(R),lnumber(I),`)`.
  (= 
    (-->  
      (sexpr0  
        ($COMPLEX  $R $I)) 
      (,  
        (,  
          (35) 
          (,  
            (ci  
              (99)) 
            (40))) 
        (,  ! 
          (,  
            (zalwayzz  
              (sexpr_list  
                ($R $I))) 
            (,  swhite !))))) True)
  (= 
    (-->  
      (sexpr0  
        [$C ]) 
      (,  
        (35 42) 
        (,  
          (radix_digits  2 $C) 
          (,  swhite !)))) True)

  (= 
    (-->  
      (sexpr0  
        (function  $E)) 
      (,  
        (35 39) 
        (,  
          (sexpr  $E) !))) True) ;, swhite.
  (= 
    (-->  
      (sexpr0  
        [$V ]) 
      (,  
        (35 40) 
        (,  ! 
          (,  
            (zalwayzz  
              (sexpr_vector  $V 
                (41))) 
            (,  ! 
              (,  swhite !)))))) True)

  (= 
    (-->  
      (sexpr0  $Number) 
      (,  
        (35) 
        (,  
          (integer  $Radix) 
          (,  
            (ci  
              (114)) 
            (,  ! 
              (,  
                (zalwayzz  
                  (,  
                    (signed_radix_2  $Radix $Number0) 
                    (extend_radix  $Radix $Number0 $Number))) !)))))) True)
  (= 
    (-->  
      (sexpr0  
        ($ARRAY  $Dims $V)) 
      (,  
        (35) 
        (,  
          (integer  $Dims) 
          (,  
            (ci  
              (97)) 
            (,  ! 
              (sexpr  $V)))))) True)
  (= 
    (-->  
      (sexpr0  $V) 
      (,  
        (35 46) 
        (,  ! 
          (,  
            (sexpr  $C) 
            (,  
              { (,  
                  (to_untyped  $C $UTC) 
                  (,  ! 
                    (intern_and_eval  $UTC $V))) } !))))) True)
  (= 
    (-->  
      (sexpr0  
        (#  $E)) 
      (,  
        (35 58) 
        (,  ! 
          (,  
            (zalwayzz  
              (rsymbol  
                (35 58) $E)) swhite)))) True)

  (= 
    (-->  
      (sexpr0  $OBJ) 
      (,  
        (35 60) 
        (,  ! 
          (,  
            (zalwayzz  
              (ugly_sexpr_cont  $OBJ)) !)))) True)

; @TODO if CYC sexpr('#'(E))              --> `#$`, !, rsymbol(`#$`,E), swhite.
; @TODO if scheme sexpr('#'(t))                 --> `#t`, !, swhite.
; @TODO if schemesexpr('#'(f))                 --> `#f`, !, swhite.

; sexpr(E)                      --> `#`,read_dispatch_error(E).

  (= 
    (-->  
      (sexpr0  $E) 
      (,  
        (sym_or_num  $E) 
        (,  swhite !))) True)/*********END HASH ***********/

  (= 
    (-->  
      (sexpr0  $Sym) 
      (,  
        (35) 
        (,  
          (integer  $N123) 
          (,  swhite 
            (,  ! 
              { (atom_concat  # $N123 $Sym) }))))) True)
  (= 
    (-->  
      (sexpr0  $C) 
      (,  
        (s_line_metta  $C) 
        (,  swhite !))) True) ;s_line_metta(C), !.
  (= 
    (-->  
      (sexpr0  $C) 
      (,  
        (s_item_metta  $C e_o_s) swhite)) True) ;s_line_metta(C), !.
  (= 
    (-->  
      (sexpr0  $E) 
      (,  ! 
        (,  
          (zalwayzz  
            (sym_or_num  $E)) 
          (,  swhite !)))) True)


  (= is_scm 
    (empty))

; c:/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/guile/module/ice-9/and-let-star.scm


  (= 
    (priority_symbol  
      (124 45)) True)

  (= 
    (-->  
      (sym_or_num  
        ($COMPLEX  $L)) 
      (,  
        (35 67 40) 
        (,  ! 
          (,  swhite 
            (,  
              (sexpr_list  $L) swhite))))) True)/*
priority_symbol((`#=`)).
priority_symbol((`#+`)).
priority_symbol((`#-`)).
priority_symbol((`#false`)).
priority_symbol((`#true`)).
priority_symbol((`#nil`)).
priority_symbol((`#null`)).
priority_symbol((`#f`)).
priority_symbol((`#;`)):- is_scm.
priority_symbol((`#t`)).
priority_symbol((`+1+`)).
priority_symbol((`+1-`)).
priority_symbol((`-#+`)).
priority_symbol((`-1+`)).
priority_symbol((`-1-`)).
priority_symbol((`1+`)).
priority_symbol((`1-`)).
*/

;sym_or_num((E)) --> unsigned_number(S),{number_string(E,S)}.
;sym_or_num((E)) --> unsigned_number(S),{number_string(E,S)}.

;sym_or_num((E)) --> lnumber(E),swhite,!.
  (= 
    (-->  
      (sym_or_num  $E) 
      (,  
        (rsymbol_maybe  () $E) !)) True)
;sym_or_num('#'(E)) --> [C],{atom_codes(E,[C])}.

  (= 
    (-->  
      (sym_or_num  $E) 
      (,  
        (dcg_xor  
          (rsymbol  () $E) 
          (lnumber  $E)) !)) True)
;sym_or_num(E) --> dcg_xor(rsymbol(``,E),lnumber(E)),!.
; sym_or_num('#'(E)) --> [C],{atom_codes(E,[C])}.



  (= 
    (dcg-xor $DCG1 $DCG2 $S $E) 
    (, 
      (copy-term $DCG1 $DCG1C) 
      (phrase $DCG1C $S $E) 
      (set-det) 
      (if-then-else 
        (phrase $DCG2 $S Nil) True 
        (zalwayzz (= $DCG1C $DCG1))) 
      (set-det)))
  (= 
    (dcg-xor $_ $DCG2 $S $E) 
    (, 
      (phrase $DCG2 $S $E) 
      (set-det)))
;sblank --> [C], {var(C)},!.

; sblank --> comment_expr(S,I,CP),!,{assert(t_l:s_reader_info('$COMMENT'(S,I,CP)))},!,swhite.

  (= 
    (-->  sblank 
      (,  
        (comment_expr  $CMT) 
        (,  ! 
          (,  
            { (assert  
                (:  t_l 
                  (s_reader_info  $CMT))) } 
            (,  ! swhite))))) True)
  (= 
    (-->  sblank 
      (,  
        ($C) 
        (,  
          { (,  
              (nonvar  $C) 
              (,  
                (charvar  $C) 
                (,  ! 
                  (bx  
                    (=<  $C 32))))) } 
          (,  ! swhite)))) True)

  (= 
    (-->  sblank_line 
      (,  eoln !)) True)
  (= 
    (-->  sblank_line 
      (,  
        ($C) 
        (,  
          { (bx  
              (=<  $C 32)) } 
          (,  ! sblank_line)))) True)

  (= 
    (-->  
      (s_string  $Text) 
      (sexpr_string  $Text)) True)
  (= 
    (-->  
      (s_string  $Text) 
      (,  
        {kif_ok } 
        (,  
          (39) 
          (,  ! 
            (,  
              (zalwayzz  
                (read_string_until  $Text 
                  (39))) !))))) True)



  (= 
    (-->  swhite 
      (,  sblank !)) True)
  (= 
    (-->  swhite ()) True)



  (= 
    (sexpr-lazy-list-character-count $Location $Stream $Here $Here) 
    (sexpr-lazy-list-character-count $Here $Location $Stream))

  (= 
    (sexpr-lazy-list-character-count $Here $CharNo $Stream) 
    (, 
      ($skip-list $Skipped $Here $Tail) 
      (if-then-else 
        (attvar $Tail) 
        (, 
          (frozen $Tail 
            (with_self  
              (pure-input) 
              (read-to-input-stream $Stream $PrevPos $Pos $List))) 
          (stream-position-data char-count $Pos $EndRecordCharNo) 
          (is $CharNo 
            (- $EndRecordCharNo $Skipped))) 
        (if-then-else 
          (== $Tail Nil) 
          (= $CharNo 
            (- end-of-file $Skipped)) 
          (type-error lazy-list $Here)))))




  (= 
    (-->  
      (comment_expr  
        ($COMMENT  $Expr $I $CP)) 
      (,  
        (comment_expr_3  $Expr $I $CP) !)) True)

  (= 
    (-->  
      (comment_expr_3  $T $N $CharPOS) 
      (,  
        { (\+  kif_ok) } 
        (,  
          (35 124) 
          (,  ! 
            (,  
              (my_lazy_list_location  
                (file  $_ $_ $N $CharPOS)) 
              (,  ! 
                (,  
                  (zalwayzz  
                    (read_string_until_no_esc  $S 
                      (124 35))) 
                  (,  ! 
                    (,  
                      { (text_to_string_safe  $S $T) } !))))))))) True)
  (= 
    (-->  
      (comment_expr_3  $T $N $CharPOS) 
      (,  
        (59) 
        (,  ! 
          (,  
            (my_lazy_list_location  
              (file  $_ $_ $N $CharPOS)) 
            (,  ! 
              (,  
                (zalwayzz  
                  (read_string_until_no_esc  $S eoln)) 
                (,  ! 
                  (,  
                    { (text_to_string_safe  $S $T) } !)))))))) True)
  (= 
    (-->  
      (comment_expr_3  $T $N $CharPOS) 
      (,  
        {kif_ok } 
        (,  
          (35 33) 
          (,  ! 
            (,  
              (my_lazy_list_location  
                (file  $_ $_ $N $CharPOS)) 
              (,  ! 
                (,  
                  (zalwayzz  
                    (read_string_until_no_esc  $S eoln)) 
                  (,  ! 
                    (,  
                      { (text_to_string_safe  $S $T) } !))))))))) True)
; For Scheme
  (= 
    (-->  
      (comment_expr_3  $T $N $CharPOS) 
      (,  
        (35 33) 
        (,  ! 
          (,  
            (my_lazy_list_location  
              (file  $_ $_ $N $CharPOS)) 
            (,  ! 
              (,  
                (zalwayzz  
                  (read_string_until_no_esc  $S 
                    (33 35))) 
                (,  ! 
                  (,  
                    { (text_to_string_safe  $S $T) } !)))))))) True)


  (= 
    (-->  
      (sexprs  
        (Cons  $H $T)) 
      (,  
        (sexpr  $H) 
        (,  ! 
          (sexprs  $T)))) True)
  (= 
    (-->  
      (sexprs  ()) ()) True)



  (export (// sexpr-list 1))



  (= 
    (-->  peek_symbol_breaker_or_number 
      (,  
        (dcg_peek  
          ($C)) 
        { (,  
            (\+  
              (sym_char  $C)) 
            (\+  
              (char_type  $C digit))) })) True)
  (= 
    (-->  peek_symbol_breaker 
      (,  
        (dcg_peek  
          ($C)) 
        { (\+  
            (sym_char  $C)) })) True)
  (= 
    (-->  peek_symbol_breaker one_blank) True)

  (= 
    (-->  
      (sexpr_list  $X) 
      (,  one_blank 
        (,  ! 
          (sexpr_list  $X)))) True)
  (= 
    (-->  
      (sexpr_list  ()) 
      (,  
        (41) !)) True)
;sexpr_list(_) --> `.`, [C], {\+ sym_char(C)}, {fail}.
  (= 
    (-->  
      (sexpr_list  
        (Cons  $Car $Cdr)) 
      (,  
        (sexpr  $Car) 
        (,  ! 
          (,  
            (sexpr_rest  $Cdr) !)))) True)

  (= 
    (-->  
      (sexpr_rest  ()) 
      (,  
        (41) !)) True)
; allow dotcons/improper lists.. but also allow dot in the middle of the list (non-CL)
  (= 
    (-->  
      (sexpr_rest  $E) 
      (,  
        (46) 
        (,  
          ($C) 
          (,  
            { (\+  
                (sym_char  $C)) } 
            (,  
              (sexpr  $E $C) 
              (,  
                (41) !)))))) True)
  (= 
    (-->  
      (sexpr_rest  $E) 
      (,  
        {kif_ok } 
        (,  
          (64) 
          (,  
            (rsymbol  
              (63) $E) 
            (41))))) True)
  (= 
    (-->  
      (sexpr_rest  
        (Cons  $Car $Cdr)) 
      (,  
        (sexpr  $Car) 
        (,  ! 
          (,  
            (sexpr_rest  $Cdr) !)))) True)

  (= 
    (-->  
      (sexpr_vector  $O $End) 
      (,  
        (zalwayzz  
          (sexpr_vector0  $IO $End)) 
        (,  ! 
          { (zalwayzz  
              (= $O $IO)) }))) True)

  (= 
    (-->  
      (sexpr_vector0  $X) 
      (,  one_blank 
        (,  ! 
          (sexpr_vector0  $X)))) True)
  (= 
    (-->  
      (sexpr_vector0  () $End) 
      (,  $End !)) True)
  (= 
    (-->  
      (sexpr_vector0  
        (Cons  $First $Rest) $End) 
      (,  
        (sexpr  $First) 
        (,  ! 
          (sexpr_vector0  $Rest $End)))) True)

;s_string_cont(Until,"")             --> Until,!, swhite.

  (encoding iso-latin-1)

  (= 
    (-->  
      (sexpr_string  $Text) 
      (,  
        (34) 
        (,  ! 
          (,  
            (zalwayzz  
              (read_string_until  $Text 
                (34))) !)))) True)
  (= 
    (-->  
      (sexpr_string  $Text) 
      (,  
        (65533) 
        (,  ! 
          (,  
            (zalwayzz  
              (read_string_until  $Text 
                (;  
                  (65533) 
                  (65533)))) !)))) True)
  (= 
    (-->  
      (sexpr_string  $Text) 
      (,  
        (;  
          (65533) 
          (65533)) 
        (,  ! 
          (,  
            (zalwayzz  
              (read_string_until  $Text 
                (;  
                  (65533) 
                  (65533)))) !)))) True)
  (= 
    (-->  
      (sexpr_string  $Text) 
      (,  
        (35 124) 
        (,  ! 
          (,  
            (zalwayzz  
              (read_string_until  $Text 
                (124 35))) !)))) True)

  (encoding utf8)
;sexpr_string([C|S],End) --> `\\`,!, zalwayzz(escaped_char(C)),!, sexpr_string(S,End).
;sexpr_string([],End) --> End, !.
; sexpr_string([32|S]) --> [C],{eoln(C)}, sexpr_string(S).
;sexpr_string([C|S],End) --> [C],!,sexpr_string(S,End).


  (= 
    (-->  
      (rsymbol_chars  
        (Cons  $C1 
          (Cons  $C2 $Rest))) 
      (,  
        ($C1 $C2) 
        (,  
          { (priority_symbol  
              (Cons  $C1 
                (Cons  $C2 $Rest))) } 
          (,  $Rest !)))) True)
  (= 
    (-->  
      (rsymbol_chars  
        (Cons  $C $S)) 
      (,  
        ($C) 
        (,  
          { (sym_char  $C) } 
          (,  ! 
            (,  
              (sym_continue  $S) !))))) True)
;rsymbol_cont(Prepend,E) --> sym_continue(S), {append(Prepend,S,AChars),string_to_atom(AChars,E)},!.

  (= 
    (-->  
      (rsymbol  $Chars $E) 
      (,  
        (rsymbol_chars  $List) 
        (,  
          { (,  
              (append  $Chars $List $AChars) 
              (string_to_atom  $AChars $E)) } !))) True)

  (= 
    (-->  
      (rsymbol_maybe  $Prepend $ES) 
      (,  
        (rsymbol  $Prepend $E) 
        (,  
          { (maybe_string  $E $ES) } !))) True)


  (= 
    (maybe-string $E $ES) 
    (, 
      (nb-current $maybe-string t) 
      (set-det) 
      (text-to-string-safe $E $ES) 
      (set-det)))
  (= 
    (maybe_string  $E $E) True)


  (= 
    (-->  
      (sym_continue  
        (Cons  $H $T)) 
      (,  
        ($H) 
        (,  
          { (sym_char  $H) } 
          (,  ! 
            (sym_continue  $T))))) True)
  (= 
    (-->  
      (sym_continue  
        (39)) 
      (,  
        (39) 
        (,  peek_symbol_breaker !))) True)
  (= 
    (-->  
      (sym_continue  ()) 
      (,  peek_symbol_breaker !)) True)
  (= 
    (-->  
      (sym_continue  ()) ()) True)

  (= 
    (-->  
      (string_vector  
        (Cons  $First $Rest)) 
      (,  
        (sexpr  $First) 
        (,  ! 
          (,  
            (string_vector  $Rest) !)))) True)
  (= 
    (-->  
      (string_vector  ()) 
      (,  () !)) True)

; . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

  (= 
    (-->  
      (lnumber  $_) 
      (,  
        ($C) 
        (,  
          { (code_type  $C alpha) } 
          (,  ! 
            {fail })))) True)
  (= 
    (-->  
      (lnumber  $N) 
      (,  
        (lnumber0  $N) !)) True) ; (peek_symbol_breaker;[]).

  (= 
    (-->  
      (oneof_ci  $OneOf 
        ($C)) 
      (,  
        { (member  $C $OneOf) } 
        (ci  
          ($C)))) True)

  (= 
    (dcg-and2 $DCG1 $DCG2 $S $E) 
    (, 
      (dcg-phrase $DCG1 $S $E) 
      (set-det) 
      (dcg-phrase $DCG2 $S $E) 
      (set-det)))

  (= 
    (dcg-each-call-cleanup $Setup $DCG $Cleanup $S $E) 
    (each-call-cleanup $Setup 
      (dcg-phrase $DCG $S $E) $Cleanup))

  (= 
    (dcg-phrase 
      (not $DCG1) $S $E) 
    (, 
      (set-det) 
      (not (phrase $DCG1 $S $E))))
  (= 
    (dcg-phrase $DCG1 $S $E) 
    (, 
      (phrase $DCG1 $S $E) 
      (set-det)))


  (= 
    (dcg-not $DCG1 $S $E) 
    (not (dcg-phrase $DCG1 $S $E)))


  (= 
    (-->  
      (enumber  $N) 
      (,  
        (lnumber  $L) 
        (,  ! 
          (,  
            { (to_untyped  $L $N) } !)))) True)


  (= 
    (float_e_type  
      (69) claz_single_float) True)/*
Format  Minimum Precision  Minimum Exponent Size
Short   13 bits            5 bits
Single  24 bits            8 bits
Double  50 bits            8 bits
Long    50 bits            8 bits
*/

  (= 
    (float_e_type  
      (102) claz_single_float) True)
  (= 
    (float_e_type  
      (100) claz_double_float) True)
  (= 
    (float_e_type  
      (76) claz_long_float) True)
  (= 
    (float_e_type  
      (115) claz_short_float) True)


  (= 
    (-->  
      (lnumber_exp  
        ($EXP  $N $T $E)) 
      (,  
        (snumber_no_exp  $N) 
        (,  ! 
          (,  
            (oneof_ci  
              (69 115 102 100 76) $TC) 
            (,  
              (:  dcg_basics 
                (integer  $E)) 
              (,  
                { (:  exp 
                    (float_e_type  $TC $T)) } !)))))) True)
  (= 
    (-->  
      (lnumber_exp  
        ($EXP  $N $T $E)) 
      (,  
        (:  dcg_basics 
          (integer  $N)) 
        (,  ! 
          (,  
            (oneof_ci  
              (69 115 102 100 76) $TC) 
            (,  
              (:  dcg_basics 
                (integer  $E)) 
              (,  ! 
                (,  
                  { (float_e_type  $TC $T) } !))))))) True)


  (= 
    (-->  
      (lnumber0  $N) 
      (,  
        (lnumber_exp  $N) !)) True)
  (= 
    (-->  
      (lnumber0  
        ($RATIO  $N $D)) 
      (,  
        (sint  $N) 
        (,  
          (47) 
          (,  
            (uint  $D) !)))) True)
  (= 
    (-->  
      (lnumber0  $N) 
      (,  
        (snumber_no_exp  $N) !)) True)
;lnumber0(N) --> dcg_basics:number(N),!.


  (= 
    (-->  
      (snumber_no_exp  $N) 
      (,  
        (45) 
        (,  ! 
          (,  
            (unumber_no_exp  $S) 
            (,  
              { (is  $N 
                  (-  $S)) } !))))) True)
  (= 
    (-->  
      (snumber_no_exp  $N) 
      (,  
        (43) 
        (,  ! 
          (,  
            (unumber_no_exp  $N) !)))) True)
  (= 
    (-->  
      (snumber_no_exp  $N) 
      (,  
        (unumber_no_exp  $N) !)) True)
;snumber_no_exp(N)-->  sint(N),!.


  (= 
    (-->  
      (sint  $N) 
      (,  
        (signed_radix_number  $N) !)) True)
  (= 
    (-->  
      (sint  $N) 
      (,  
        (45) 
        (,  ! 
          (,  
            (uint  $S) 
            (,  
              { (is  $N 
                  (-  $S)) } !))))) True)
  (= 
    (-->  
      (sint  $N) 
      (,  
        (43) 
        (,  ! 
          (,  
            (uint  $N) !)))) True)
  (= 
    (-->  
      (sint  $N) 
      (,  
        (uint  $N) !)) True)

  (= 
    (-->  
      (natural_int  $_) 
      (,  
        (dcg_not  
          (:  dcg_basics 
            (digit  $_))) 
        (,  ! 
          {fail }))) True)
  (= 
    (-->  
      (natural_int  $N) 
      (,  
        (:  dcg_basics 
          (integer  $N)) !)) True)

  (= 
    (-->  digits_dot_digits 
      (,  
        (natural_int  $_) 
        (,  ! 
          (,  
            (46) 
            (,  ! 
              (,  
                (natural_int  $_) !)))))) True)

  (= 
    (-->  
      (unumber_no_exp  $N) 
      (,  
        (dcg_and2  digits_dot_digits 
          (:  dcg_basics 
            (float  $N))) !)) True)
  (= 
    (-->  
      (unumber_no_exp  $N) 
      (,  
        (46) 
        (,  ! 
          (,  
            (:  dcg_basics 
              (digit  $S0)) 
            (,  ! 
              (,  
                (:  dcg_basics 
                  (digits  $S)) 
                (,  
                  { (notrace_catch_fail  
                      (number_codes  $N 
                        (Cons  48 
                          (Cons  46 
                            (Cons  $S0 $S))))) } !))))))) True)
  (= 
    (-->  
      (unumber_no_exp  $N) 
      (,  
        (natural_int  $E) 
        (,  
          (46) 
          (,  
            (natural_int  $S) 
            (,  
              { (,  
                  (notrace_catch_fail  
                    (number_codes  $ND 
                      (Cons  48 
                        (Cons  46 $S)))) 
                  (is  $N 
                    (+  $ND $E))) } !))))) True)
  (= 
    (-->  
      (unumber_no_exp  $N) 
      (,  
        (natural_int  $N) 
        (,  ! 
          (,  
            (remove_optional_char  
              (46)) !)))) True)

  (= 
    (-->  
      (uint  $N) 
      (,  
        (unsigned_radix_number  $N) !)) True)
  (= 
    (-->  
      (uint  $N) 
      (,  
        (natural_int  $N) 
        (,  ! 
          (,  
            (remove_optional_char  
              (46)) !)))) True)


; . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .


;=

;; sexpr( ?E, ?C, ?X, ?Z) is det.
;
; S-Expression.
;

  (= 
    (sexpr $E $C $X $Z) 
    (, 
      (swhite 
        (Cons  $C $X) $Y) 
      (sexpr $E $Y $Z) 
      (set-det)))

; dquote semicolon parens  hash qquote  comma backquote

;=

;; sym_char( ?C) is det.
;
; Sym Char.  (not ";()#',`
; )
;


  (= 
    (sym-char $C) 
    (, 
      (bx (=< $C 32)) 
      (set-det) 
      (fail)))
;sym_char(44). ; allow comma in middle of symbol
  (= 
    (sym-char $C) 
    (, 
      (memberchk $C 
        (:: 34 40 41 96)) 
      (set-det) 
      (fail)))  ; maybe 44 ? comma maybe not # or ; ? '
;sym_char(C):- nb_current('$maybe_string',t),memberchk(C,`,.:;!;`),!,fail.
  (= 
    (sym-char $_) 
    (set-det))


  (= 
    (sym-char-start $C) 
    (, 
      (\== $C 44) 
      (\== $C 59) 
      (sym-char $C)))




  (thread-initialization (nb-setval $maybe-string Nil))

  (thread-local (with_self  (t-l) (/ s2p 1)))
  (thread-local (with_self  (t-l) (/ each-file-term 1)))


  (= 
    (string-to-syms) 
    (, 
      (set-det) False))
  (= 
    (string-to-syms) 
    (option-value string-are-atoms True))


;=

;; to_unbackquote( ?I, ?O) is det.
;
; Converted To Unbackquote.
;

  (= 
    (to-unbackquote $I $O) 
    (, 
      (to-untyped $I $O) 
      (set-det)))


  (export (/ to-untyped 2))


;atom_or_string(X):- (atom(X);string(X)),!.

  (= 
    (as-keyword $C $K) 
    (, 
      (atom $C) 
      (set-det) 
      (if-then-else 
        (atom-concat-or-rtrace : $_ $C) 
        (= $K $C) 
        (atom-concat-or-rtrace : $C $K)) 
      (set-det)))
  (= 
    (as-keyword $C $C) 
    (, 
      (not (compound $C)) 
      (set-det)))
  (= 
    (as-keyword 
      (Cons  $A $B) 
      (Cons  $AK $BK)) 
    (, 
      (set-det) 
      (as-keyword $A $AK) 
      (as-keyword $B $BK) 
      (set-det)))
  (= 
    (as_keyword  $C $C) True)


;; to_untyped( :TermVar, :TermName) is det.
;
; Converted To Untyped.
;

  (= 
    (to-untyped $S $S) 
    (, 
      (var $S) 
      (set-det)))
  (= 
    (to-untyped $S $S) 
    (, 
      (is-dict $S) 
      (set-det)))
  (= 
    (to-untyped Nil Nil) 
    (set-det))
  (= 
    (to-untyped 
      (#- $C $I) 
      (#- $K $O)) 
    (, 
      (as-keyword $C $K) 
      (set-det) 
      (to-untyped $I $O) 
      (set-det)))
  (= 
    (to-untyped 
      (#+ $C $I) 
      (#+ $K $O)) 
    (, 
      (as-keyword $C $K) 
      (set-det) 
      (to-untyped $I $O) 
      (set-det)))
  (= 
    (to-untyped 
      (? $S) $_) 
    (, 
      (== $S ??) 
      (set-det)))
; to_untyped('?'(S),'$VAR'('_')):- S=='??',!.
; to_untyped(VAR,NameU):-atom(VAR),atom_concat_or_rtrace('#$',NameU,VAR),!.
  (= 
    (to-untyped $VAR $NameU) 
    (, 
      (atom $VAR) 
      (if-then-else 
        (atom-concat-or-rtrace $N . $VAR) True 
        (= $N $VAR)) 
      (notrace-catch-fail (atom-number $N $NameU)) 
      (set-det)))
;to_untyped(S,s(L)):- string(S),atom_contains(S,' '),atomic_list_concat(['(',S,')'],O),parse_sexpr_string(O,L),!.
  (= 
    (to-untyped $S $S) 
    (, 
      (string $S) 
      (set-det)))
  (= 
    (to-untyped $S $S) 
    (, 
      (number $S) 
      (set-det)))
;to_untyped(S,O):- atom(S),notrace_catch_fail(atom_number(S,O)),!.
  (= 
    (to-untyped $Var $Name) 
    (, 
      (svar $Var $Name) 
      (set-det)))
  (= 
    (to-untyped 
      (? $Var) $Name) 
    (, 
      (svar-fixvarname $Var $Name) 
      (set-det)))
  (= 
    (to-untyped $Atom $Atom) 
    (, 
      (not (compound $Atom)) 
      (set-det)))
  (= 
    (to-untyped 
      (@ $Var) $Name) 
    (, 
      (svar-fixvarname $Var $Name) 
      (set-det)))
  (= 
    (to-untyped 
      (# $S) $O) 
    (, 
      (set-det) 
      (if-then-else 
        (nonvar $S) 
        (to-untyped $S $O) 
        (= $O 
          (# $S)))))
  (= 
    (to-untyped 
      ($CHAR $S) $C) 
    (, 
      (set-det) 
      (to-untyped 
        (#\ $S) $C) 
      (set-det)))
  (= 
    (to-untyped 
      (#\ $S) $C) 
    (, 
      (to-char $S $C) 
      (set-det)))
  (= 
    (to-untyped 
      (#\ $S) 
      (#\ $S)) 
    (set-det))
  (= 
    (to-untyped 
      ($OBJ (:: $FUN $F)) $O) 
    (, 
      (atom $FUN) 
      (set-det) 
      (to-untyped 
        [$F ] $O)))
  (= 
    (to-untyped 
      ($OBJ (Cons  $FUN $F)) $O) 
    (, 
      (atom $FUN) 
      (set-det) 
      (to-untyped 
        [$F ] $O)))
  (= 
    (to-untyped 
      ($OBJ $S) 
      ($OBJ $O)) 
    (, 
      (to-untyped $S $O) 
      (set-det)))
  (= 
    (to-untyped 
      [$S ] 
      [$O ]) 
    (, 
      (text-to-string-safe $Ungly $Str) 
      (string-to-atom $Str $Type) 
      (to-untyped $S $O) 
      (set-det)))
  (= 
    (to-untyped 
      [$S ] 
      [$O ]) 
    (, 
      (to-untyped $S $O) 
      (set-det)))
  (= 
    (to-untyped 
      [$S ] $O) 
    (, 
      (to-untyped $S $SO) 
      (set-det) 
      (=.. $O 
        (:: $Ungly $SO))))
  (= 
    (to-untyped 
      ($COMPLEX $N0 $D0) $N) 
    (, 
      (to-untyped $D0 $D) 
      (notrace-catch-fail (=:= 0 $D)) 
      (to-untyped $N0 $N)))
  (= 
    (to-untyped 
      ($RATIO $N0 $D0) $V) 
    (, 
      (to-untyped $N0 $N) 
      (to-untyped $D0 $D) 
      (notrace-catch-fail (, (is 0 (mod $N $D)) (is $V (div $N $D))))))
  (= 
    (to-untyped 
      ($NUMBER $S) $O) 
    (, 
      (nonvar $S) 
      (to-number $S $O) 
      (to-untyped $S $O) 
      (set-det)))
  (= 
    (to-untyped 
      ($NUMBER $S) 
      ($NUMBER claz-short-float $S)) 
    (, 
      (float $S) 
      (set-det)))
  (= 
    (to_untyped  
      ($NUMBER  $S) 
      ($NUMBER  claz_bignum $S)) True)
  (= 
    (to-untyped 
      ($EXP $I E $E) $N) 
    (, 
      (notrace-catch-fail (is $N (+ 0.0 (* $I (^ 10 $E))))) 
      (set-det)))
  (= 
    (to-untyped 
      ($EXP $I claz-single-float $E) $N) 
    (, 
      (notrace-catch-fail (is $N (+ 0.0 (* $I (^ 10 $E))))) 
      (set-det)))
  (= 
    (to-untyped 
      ($EXP $I $T $E) 
      ($NUMBER $T $N)) 
    (, 
      (notrace-catch-fail (is $N (* $I (^ 10 $E)))) 
      (set-det)))
  (= 
    (to-untyped 
      ($EXP $I $T $E) 
      ($EXP $I $T $E)) 
    (set-det))

  (= 
    (to-untyped 
      (with-text $I $Txt) $O) 
    (, 
      (to-untyped $I $O) 
      (set-det)))
  (= 
    (to-untyped 
      (with-text $I $Txt) 
      (with-text $O $Txt)) 
    (, 
      (to-untyped $I $O) 
      (set-det)))

; to_untyped([[]],[]):-!.
  (= 
    (to-untyped 
      ($STR $Expr) $Forms) 
    (, 
      (or 
        (text-to-string-safe $Expr $Forms) 
        (to-untyped $Expr $Forms)) 
      (set-det)))
  (= 
    (to-untyped 
      Expr 
      Forms) 
    (, 
      (or 
        (text-to-string-safe $Expr $Forms) 
        (to-untyped $Expr $Forms)) 
      (set-det)))
  (= 
    (to-untyped 
      (:: 
        (# $Backquote) $Rest) $Out) 
    (, 
      (is-common-lisp) 
      (== $Backquote backquote) 
      (set-det) 
      (to-untyped 
        (:: 
          (# #BQ) $Rest) $Out)))
  (= 
    (to-untyped 
      (Cons  
        (# $S) $Rest) $OOut) 
    (, 
      (nonvar $S) 
      (is-list $Rest) 
      (must-maplist to-untyped 
        (Cons  $S $Rest) 
        (Cons  $F $Mid)) 
      (if-then-else 
        (, 
          (atom $F) 
          (with_self  
            (t-l) 
            (s2p $F))) 
        (=.. $Out 
          (Cons  $F $Mid)) 
        (= $Out 
          (Cons  $F $Mid))) 
      (to-untyped $Out $OOut)))
  (= 
    (to-untyped $ExprI $ExprO) 
    (, 
      (=.. $ExprI 
        (Cons  $F $Expr)) 
      (atom-concat-or-rtrace $ $_ $F) 
      (set-det) 
      (must-maplist to-untyped $Expr $TT) 
      (=.. $ExprO 
        (Cons  $F $TT))))

; to_untyped([H|T],Forms):-is_list([H|T]),zalwayzz(text_to_string_safe([H|T],Forms);maplist(to_untyped,[H|T],Forms)).
  (= 
    (to-untyped 
      (Cons  $H $T) 
      (Cons  $HH $TT)) 
    (, 
      (set-det) 
      (zalwayzz (, (to-untyped $H $HH) (set-det) (to-untyped $T $TT)))))
  (= 
    (to-untyped $ExprI $ExprO) 
    (, 
      (zalwayzz (=.. $ExprI $Expr)) 
      (must-maplist to-untyped $Expr 
        (Cons  $HH $TT)) 
      (if-then-else 
        (atom $HH) 
        (=.. $ExprO 
          (Cons  $HH $TT)) 
        (= $ExprO 
          (Cons  $HH $TT))) 
      (set-det)))
; to_untyped(Expr,Forms):-def_compile_all(Expr,Forms),!.


  (= 
    (to-number $S $S) 
    (, 
      (number $S) 
      (set-det)))
  (= 
    (to-number $S $N) 
    (, 
      (text-to-string-safe $S $Str) 
      (number-string $N $Str) 
      (set-det)))



  (= 
    (to-char $S 
      (#\ $S)) 
    (, 
      (var $S) 
      (set-det)))
  (= 
    (to-char 
      (# $S) $C) 
    (, 
      (set-det) 
      (to-char $S $C)))
  (= 
    (to-char 
      (#\ $S) $C) 
    (, 
      (set-det) 
      (to-char $S $C)))
  (= 
    (to-char $S $C) 
    (, 
      (atom $S) 
      (atom-concat ^ $SS $S) 
      (upcase-atom $SS $SU) 
      (atom-codes $SU 
        (:: $N64)) 
      (is $N 
        (- $N64 64)) 
      (>= $N 0) 
      (set-det) 
      (to-char $N $C)))
  (= 
    (to-char $S $C) 
    (, 
      (atom $S) 
      (atom-codes $S 
        (:: $N)) 
      (set-det) 
      (to-char $N $C)))
  (= 
    (to-char $N $C) 
    (, 
      (text-to-string-safe $N $Str) 
      (name-to-charcode $Str $Code) 
      (to-char $Code $C) 
      (set-det)))
;to_char(N,'#\\'(S)):- to_number(N,NC),!,char_code_to_char(NC,S),!.
  (= 
    (to-char $N 
      (#\ $S)) 
    (, 
      (integer $N) 
      (set-det) 
      (char-code-to-char $N $S) 
      (set-det)))
  (= 
    (to_char  $N 
      (#\  $N)) True)


  (= 
    (char-code-int $Char $Code) 
    (, 
      (notrace-catch-fail (char-code $Char $Code)) 
      (set-det)))
  (= 
    (char-code-int $Char $Code) 
    (, 
      (notrace-catch-fail (atom-codes $Char (:: $Code))) 
      (set-det)))
  (= 
    (char-code-int $Char $Code) 
    (, 
      (atom $Char) 
      (name-to-charcode $Char $Code) 
      (set-det)))
  (= 
    (char-code-int $Char $Code) 
    (, 
      (var $Char) 
      (set-det) 
      (fbug (char-code-int $Char $Code)) 
      (only-debug break)))
  (= 
    (char-code-int $Char $Code) 
    (, 
      (fbug (char-code-int $Char $Code)) 
      (only-debug break)))


  (= 
    (char-code-to-char $N $S) 
    (, 
      (atom $N) 
      (atom-codes $N 
        (:: $_)) 
      (set-det) 
      (= $S $N)))
  (= 
    (char-code-to-char $N $S) 
    (, 
      (atom $N) 
      (set-det) 
      (= $S $N)))
;char_code_to_char(N,S):- code_type(N,graph),atom_codes(S,[N]),atom(S),!.
;char_code_to_char(N,O):- \+ integer(N),char_type(N,_),!,N=O.
;char_code_to_char(32,' '):-!.
;char_code_to_char(N,N):- \+ code_type(N,graph),!.
;char_code_to_char(N,N):- code_type(N,white),!.
  (= 
    (char-code-to-char $N $S) 
    (, 
      (notrace-catch-fail (atom-codes $S (:: $N))) 
      (set-det)))




  (= 
    (name-to-charcode $Str $Code) 
    (, 
      (find-from-name $Str $Code) 
      (set-det)))
  (= 
    (name-to-charcode $Str $Code) 
    (, 
      (text-upper $Str $StrU) 
      (find-from-name2 $StrU $Code)))
  (= 
    (name-to-charcode $Str $Code) 
    (, 
      (string-codes $Str 
        (Cons  $S 
          (Cons  $H1 
            (Cons  $H2 
              (Cons  $H3 
                (Cons  $H4 $HEX)))))) 
      (memberchk $S 
        (:: 85 117)) 
      (char-type $H4 
        (xdigit $_)) 
      (notrace-catch-fail (read-from-codes (Cons  48 (Cons  120 (Cons  $H1 (Cons  $H2 (Cons  $H3 (Cons  $H4 $HEX)))))) $Code))))
  (= 
    (name-to-charcode $Str $Code) 
    (, 
      (string-codes $Str 
        (Cons  $S 
          (Cons  $H1 $BASE10))) 
      (memberchk $S 
        (:: 110 100)) 
      (char-type $H1 digit) 
      (notrace-catch-fail (read-from-codes (Cons  $H1 $BASE10) $Code))))


  (= 
    (find-from-name $Str $Code) 
    (, 
      (string-codes $Str $Chars) 
      (lisp-code-name-extra $Code $Chars)))
  (= 
    (find-from-name $Str $Code) 
    (lisp-code-name $Code $Str))
  (= 
    (find-from-name $Str $Code) 
    (, 
      (string-chars $Str $Chars) 
      (lisp-code-name $Code $Chars)))


  (= 
    (make-lisp-character $I $O) 
    (quietly (to-char $I $O)))


  (= 
    (f-code-char $CH $CC) 
    (, 
      (zalwayzz (to-char $CH $CC)) 
      (set-det)))

  (= 
    (f-name-char $Name $CC) 
    (zalwayzz (, (def-to-prolog-string $Name $CH) (name-to-charcode $CH $Code) (to-char $Code $CC))))

  (= 
    (f-char-name $CH $CC) 
    (, 
      (zalwayzz (def-is-characterp $CH)) 
      (zalwayzz (code-to-name $CH $CC))))

  (= 
    (f-char-int $CH $CC) 
    (, 
      (zalwayzz (def-is-characterp $CH)) 
      (zalwayzz (= (#\ $C) $CH)) 
      (if-then-else 
        (integer $C) 
        (= $CC $C) 
        (char-code-int $C $CC))))

  (= 
    (f-char-code $CH $CC) 
    (f-char-int $CH $CC))


  (= 
    (to-prolog-char 
      (#\ $X) $O) 
    (, 
      (set-det) 
      (to-prolog-char $X $O)))
  (= 
    (to-prolog-char $Code $Char) 
    (, 
      (number $Code) 
      (set-det) 
      (zalwayzz (char-code-int $Char $Code)) 
      (set-det)))
;to_MeTTa_char(S,S):- atom(S),char_type(S,_),!.
  (= 
    (to-prolog-char $Atom $Char) 
    (, 
      (name $Atom 
        (Cons  $C $Odes)) 
      (set-det) 
      (if-then-else 
        (== $Odes Nil) 
        (char-code-int $Char $C) 
        (zalwayzz (, (text-to-string $Atom $String) (name-to-charcode $String $Code) (char-code-int $Char $Code))))))


  (= 
    (code-to-name $Char $Str) 
    (, 
      (number $Char) 
      (= $Char $Code) 
      (set-det) 
      (zalwayzz (, (code-to-name0 $Code $Name) (set-det) (text-to-string $Name $Str)))))
  (= 
    (code-to-name $Char $Str) 
    (zalwayzz (, (to-prolog-char $Char $PC) (char-code-int $PC $Code) (code-to-name0 $Code $Name) (set-det) (text-to-string $Name $Str))))


  (= 
    (code-to-name0 $Code $Name) 
    (lisp-code-name-extra $Code $Name))
  (= 
    (code-to-name0 $Code $Name) 
    (lisp-code-name $Code $Name))
  (= 
    (code-to-name0 $Code $Name) 
    (, 
      (< $Code 32) 
      (is $Ascii 
        (+ $Code 64)) 
      (atom-codes $Name 
        (:: 94 $Ascii))))
  (= 
    (code-to-name0 $Code $Name) 
    (, 
      (code-type $Code graph) 
      (set-det) 
      (atom-codes $Name 
        (:: $Code))))



  (= 
    (find-from-name2 $Str $Code) 
    (find-from-name $Str $Code))
  (= 
    (find-from-name2 $Str $Code) 
    (, 
      (lisp-code-name $Code $Chars) 
      (text-upper $Chars $Str)))
  (= 
    (find-from-name2 $Str $Code) 
    (, 
      (lisp-code-name-extra $Code $Chars) 
      (text-upper $Chars $Str)))


  (= 
    (text-upper $T $U) 
    (, 
      (text-to-string-safe $T $S) 
      (string-upper $S $U)))


  (= 
    (lisp_code_name_extra  0 
      (78 117 108 108)) True)
  (= 
    (lisp_code_name_extra  1 
      (83 111 104)) True)
  (= 
    (lisp_code_name_extra  2 
      (94 66)) True)
  (= 
    (lisp_code_name_extra  7 
      (66 101 108 108)) True)
  (= 
    (lisp_code_name_extra  7 
      (98 101 108 108)) True)
  (= 
    (lisp_code_name_extra  8 
      (66 67 75 83 80 67)) True)
  (= 
    (lisp_code_name_extra  10 
      (78 101 119 108 105 110 101)) True)
  (= 
    (lisp_code_name_extra  10 
      (76 70)) True)
  (= 
    (lisp_code_name_extra  10 
      (76 105 110 101 102 101 101 100)) True)
  (= 
    (lisp_code_name_extra  11 
      (86 116)) True)
  (= 
    (lisp_code_name_extra  27 
      (69 115 99 97 112 101)) True)
  (= 
    (lisp_code_name_extra  27 
      (69 115 99)) True)
  (= 
    (lisp_code_name_extra  32 
      (83 112 97 99 101)) True)
  (= 
    (lisp_code_name_extra  28 
      (102 115)) True)
  (= 
    (lisp_code_name_extra  13 
      (82 101 116)) True)


; @TODO undo this temp speedup

  (set-prolog-flag all-lisp-char-names False)
  (use-module chars.data)

  (= 
    (remove_incompletes  () ()) True)/*

(with-open-file (strm "lisp_code_names.pl" :direction :output :if-exists :supersede :if-does-not-exist :create)
 (format  strm ":- module(lisp_code_names,[lisp_code_name/2]).~;:- set_MeTTa_flag(double_quotes,chars).~;~;")
 (loop for i from 0 to 655360 do (let ((cname (char-name (code-char i))) (uname4 (format ()  "U~4,'0X" i)) (uname8 (format ()  "U~8,'0X" i)))
  (unless (equal cname uname4) (unless (equal cname uname8)  (format  strm "lisp_code_name(~A,~S).~;" i  cname ))))))
*/
;; remove_incompletes( :TermN, :TermCBefore) is det.
;
; Remove Incompletes.
;

  (= 
    (remove-incompletes 
      (Cons  
        (= $N $_) $Before) $CBefore) 
    (, 
      (var $N) 
      (set-det) 
      (remove-incompletes $Before $CBefore)))
  (= 
    (remove-incompletes 
      (Cons  $NV $Before) 
      (Cons  $NV $CBefore)) 
    (remove-incompletes $Before $CBefore))


  (export (/ extract-lvars 3))

;=

;; extract_lvars( ?A, ?B, ?After) is det.
;
; Extract Lvars.
;

  (= 
    (extract-lvars $A $B $After) 
    (, 
      (if-then-else 
        (get-varname-list $Before) True 
        (= $Before Nil)) 
      (remove-incompletes $Before $CBefore) 
      (set-det) 
      (copy-lvars $A $CBefore $B $After) 
      (set-det)))

; copy_lvars( VAR,Vars,VAR,Vars):- var(VAR),!.

;=

;; copy_lvars( :TermVAR, ?Vars, :TermNV, ?NVars) is det.
;
; Copy Lvars.
;

  (= 
    (copy-lvars $Term $Vars $Out $VarsO) 
    (, 
      (== $Term Nil) 
      (set-det) 
      (zalwayzz (, (= $Out $Term) (= $VarsO $Vars)))))
  (= 
    (copy-lvars $VAR $Vars $Out $VarsO) 
    (, 
      (var $VAR) 
      (set-det) 
      (zalwayzz (, (= $Out $VAR) (= $VarsO $Vars)))))
  (= 
    (copy-lvars 
      (Cons  $H $T) $Vars 
      (Cons  $NH $NT) $VarsO) 
    (, 
      (set-det) 
      (copy-lvars $H $Vars $NH $SVars) 
      (set-det) 
      (copy-lvars $T $SVars $NT $VarsO)))
  (= 
    (copy-lvars 
      (? $Inner) $Vars $Out $VarsO) 
    (, 
      (set-det) 
      (copy-lvars $Inner $Vars $NInner $VarsO) 
      (zalwayzz (if-then-else (atom $NInner) (atom-concat-or-rtrace ? $NInner $Out) (= $Out (? $NInner)))) 
      (set-det)))
  (= 
    (copy-lvars $VAR $Vars $Out $VarsO) 
    (if-then 
      (svar $VAR $Name) 
      (, 
        (zalwayzz (atom $Name)) 
        (set-det) 
        (zalwayzz (register-var (= $Name $Out) $Vars $VarsO)))))
  (= 
    (copy-lvars $VAR $Vars $Out $VarsO) 
    (, 
      (not (compound $VAR)) 
      (set-det) 
      (zalwayzz (, (= $Out $VAR) (= $VarsO $Vars)))))
  (= 
    (copy-lvars $Term $Vars $NTerm $VarsO) 
    (, 
      (=.. $Term 
        (Cons  $F $Args)) 
      (if-then-else 
        (svar $F $_) 
        (copy-lvars 
          (Cons  $F $Args) $Vars $NTerm $VarsO) 
        (, 
          (copy-lvars $Args $Vars $NArgs $VarsO) 
          (=.. $NTerm 
            (Cons  $F $NArgs)))) 
      (set-det))); decompose term
; construct copy term




;=

;; svar( ?Var, ?NameU) is det.
;
; If this is a KIF var, convert to a name for MeTTa
;

  (= 
    (svar $SVAR $UP) 
    (, 
      (nonvar $UP) 
      (set-det) 
      (trace-or-throw (nonvar-svar $SVAR $UP))))
  (= 
    (svar $Var $Name) 
    (, 
      (var $Var) 
      (set-det) 
      (zalwayzz (svar-fixvarname $Var $Name))))
  (= 
    (svar $Var $Name) 
    (, 
      (number $Var) 
      (> $Var -1) 
      (set-det) 
      (zalwayzz (format (atom $Name) ~w (:: $Var))) 
      (set-det)))
  (= 
    (svar $Name $VarName) 
    (, 
      (set-det) 
      (zalwayzz (svar-fixvarname $Name $VarName))))
  (= 
    (svar 
      (? $Name) $NameU) 
    (, 
      (svar-fixvarname $Name $NameU) 
      (set-det)))
  (= 
    (svar $_ $_) 
    (, 
      (not kif-ok) 
      (set-det) 
      (fail)))
  (= 
    (svar $VAR $Name) 
    (, 
      (atom $VAR) 
      (atom-concat-or-rtrace ? $A $VAR) 
      (non-empty-atom $A) 
      (svar-fixvarname $VAR $Name) 
      (set-det)))
  (= 
    (svar Nil $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (svar 
      (# $Name) $NameU) 
    (, 
      (set-det) 
      (svar $Name $NameU) 
      (set-det)))
  (= 
    (svar 
      (@ $Name) $NameU) 
    (, 
      (svar-fixvarname $Name $NameU) 
      (set-det)))
; svar(VAR,Name):-atom(VAR),atom_concat_or_rtrace('_',_,VAR),svar_fixvarname(VAR,Name),!.
  (= 
    (svar $VAR $Name) 
    (, 
      (atom $VAR) 
      (atom-concat-or-rtrace @ $A $VAR) 
      (non-empty-atom $A) 
      (svar-fixvarname $VAR $Name) 
      (set-det)))



  (export (/ svar-fixvarname 2))

;=

;; svar_fixvarname( ?SVARIN, ?UP) is det.
;
; Svar Fixvarname.
;


  (= 
    (svar-fixvarname $SVAR $UP) 
    (, 
      (nonvar $UP) 
      (set-det) 
      (trace-or-throw (nonvar-svar-fixvarname $SVAR $UP))))
  (= 
    (svar-fixvarname $SVAR $UP) 
    (, 
      (svar-fixname $SVAR $UP) 
      (set-det)))
  (= 
    (svar-fixvarname $SVAR $UP) 
    (, 
      (fail) 
      (trace-or-throw (svar-fixname $SVAR $UP))))


  (= 
    (svar-fixname $Var $NameO) 
    (, 
      (var $Var) 
      (set-det) 
      (variable-name-or-ref $Var $Name) 
      (sanity (nonvar $Name)) 
      (set-det) 
      (svar-fixvarname $Name $NameO)))
  (= 
    (svar-fixname $Name $UP) 
    (, 
      (set-det) 
      (svar-fixvarname $Name $UP)))
  (= 
    (svar-fixname 
      (@ $Name) $UP) 
    (, 
      (set-det) 
      (svar-fixvarname $Name $UP)))
  (= 
    (svar-fixname 
      (? $Name) $UP) 
    (, 
      (set-det) 
      (svar-fixvarname $Name $UP)))
  (= 
    (svar-fixname 
      (block $Name) $UP) 
    (, 
      (set-det) 
      (svar-fixvarname $Name $UP)))
  (= 
    (svar-fixname $SVAR $SVARO) 
    (, 
      (ok-var-name $SVAR) 
      (set-det) 
      (= $SVARO $SVAR)))
  (= 
    (svar-fixname ?? -) 
    (set-det))
  (= 
    (svar-fixname $QA $AU) 
    (, 
      (atom-concat-or-rtrace ?? $A $QA) 
      (non-empty-atom $A) 
      (set-det) 
      (svar-fixvarname $A $AO) 
      (atom-concat-or-rtrace - $AO $AU)))
  (= 
    (svar-fixname $QA $AO) 
    (, 
      (atom-concat-or-rtrace ? $A $QA) 
      (non-empty-atom $A) 
      (set-det) 
      (svar-fixvarname $A $AO)))
  (= 
    (svar-fixname $QA $AO) 
    (, 
      (atom-concat-or-rtrace @ $A $QA) 
      (non-empty-atom $A) 
      (set-det) 
      (svar-fixvarname $A $AO)))
  (= 
    (svar-fixname $NameU $NameU) 
    (, 
      (atom-concat-or-rtrace - $Name $NameU) 
      (non-empty-atom $Name) 
      (atom-number $Name $_) 
      (set-det)))
  (= 
    (svar-fixname $NameU $NameUO) 
    (, 
      (atom-concat-or-rtrace - $Name $NameU) 
      (non-empty-atom $Name) 
      (not (atom-number $Name $_)) 
      (set-det) 
      (svar-fixvarname $Name $NameO) 
      (atom-concat-or-rtrace - $NameO $NameUO)))
  (= 
    (svar-fixname $I $O) 
    (, 
      (notrace (, (notrace (catch (fix-varcase $I $M0) $_ fail)) (atom-subst $M0 @ -AT- $M1) (atom-subst $M1 ? -Q- $M2) (atom-subst $M2 : -C- $M3) (atom-subst $M3 - - $O) (ok-var-name $O))) 
      (set-det)))

;=

;; fix_varcase( ?I, ?O) is det.
;
; Fix Varcase.
;

  (= 
    (fix-varcase $Word $Word) 
    (, 
      (atom-concat-or-rtrace - $_ $Word) 
      (set-det)))
  (= 
    (fix-varcase $Word $WordC) 
    (, 
      (set-det) 
      (atom-codes $Word 
        (Cons  $F $R)) 
      (to-upper $F $U) 
      (atom-codes $WordC 
        (Cons  $U $R))))
; the cut above stops the rest
  (= 
    (fix-varcase $Word $Word) 
    (, 
      (upcase-atom $Word $UC) 
      (= $UC $Word) 
      (set-det)))
  (= 
    (fix-varcase $Word $WordC) 
    (, 
      (downcase-atom $Word $UC) 
      (= $UC $Word) 
      (set-det) 
      (atom-codes $Word 
        (Cons  $F $R)) 
      (to-upper $F $U) 
      (atom-codes $WordC 
        (Cons  $U $R))))
  (= 
    (fix_varcase  $Word $Word) True) ; mixed case


  (export (/ ok-varname-or-int 1))

;; ok_varname_or_int( ?Name) is det.
;
; Ok Varname.
;

  (= 
    (ok-varname-or-int $Name) 
    (, 
      (atom $Name) 
      (set-det) 
      (ok-var-name $Name)))
  (= 
    (ok-varname-or-int $Name) 
    (number $Name))

;; ok_var_name( ?Name) is det.
;
; Ok Varname.
;

  (= 
    (ok-var-name $Name) 
    (notrace (quietly-sreader (, (atom $Name) (atom-codes $Name (Cons  $C $List)) (char-type $C prolog-var-start) (notrace (catch (read-term-from-atom $Name $Term (:: (variable-names $Vs))) $_ fail)) (set-det) (var $Term) (= $Vs (:: (= $RName $RVAR))) (set-det) (== $RVAR $Term) (== $RName $Name)))))

;:- export(ok_codes_in_varname/1).
;ok_codes_in_varname([]).
;ok_codes_in_varname([C|List]):-!,ok_in_varname(C),ok_codes_in_varname(List).

;:- export(ok_in_varname/1).
;ok_in_varname(C):-sym_char(C),\+member(C,`!@#$;^&*?()`).



;=

;; atom_upper( ?A, ?U) is det.
;
; Atom Upper.
;

  (= 
    (atom-upper $A $U) 
    (, 
      (string-upper $A $S) 
      (quietly-sreader (atom-string $U $S))))


;=

;; lisp_read_from_input( ?Forms) is det.
;
; Lisp Read Converted From Input.
;

  (= 
    (lisp-read-from-input $Forms) 
    (, 
      (lisp-read current-input $Forms) 
      (set-det)))


  (= 
    (readCycL $Forms) 
    (lisp-read current-input $Forms))

;; lisp_read_from_stream( ?I, ?Forms) is det.
;
; Lisp Read Converted To Simple Form.
;

  (= 
    (lisp-read-from-stream $Input $Forms) 
    (lisp-read $Input $Forms))


;; lisp_read( ?I, ?Forms) is det.
;
; Lisp Read Converted To Simple Form.
;

  (= 
    (lisp-read $Input $Forms) 
    (, 
      (lisp-read-typed $Input $Forms0) 
      (set-det) 
      (quietly-sreader (zalwayzz (to-untyped $Forms0 $Forms)))))



;; lisp_read_typed( ?I, -Expr) is det.
;
; Lisp Read, Expression models DCG
;

  (= 
    (lisp-read-typed $In $Expr) 
    (, 
      (track-stream $In 
        (parse-sexpr $In $Expr)) 
      (set-det)))

  (= 
    (lowcase  () ()) True)/*
lisp_read_typed(In,Expr):- fail, ; old_stream_read
 (read_line_to_codes(current_input,AsciiCodes),
      (AsciiCodes==[]-> (at_end_of_stream(In) -> (Expr=end_of_file); lisp_read_typed(In,Expr));
        once(zalwayzz(parse_sexpr(AsciiCodes,Expr);lisp_read_typed(In,Expr));read_term_from_codes(AsciiCodes,Expr,[])))).
*/
;=
;; lowcase( :TermC1, :TermC2) is det.
;
; Lowcase.
;

  (= 
    (lowcase 
      (Cons  $C1 $T1) 
      (Cons  $C2 $T2)) 
    (, 
      (lowercase $C1 $C2) 
      (lowcase $T1 $T2)))


;=

;; lowercase( ?C1, ?C2) is det.
;
; Lowercase.
;

  (= 
    (lowercase $C1 $C2) 
    (, 
      (>= $C1 65) 
      (=< $C1 90) 
      (set-det) 
      (is $C2 
        (+ $C1 32))))
  (= 
    (lowercase  $C $C) True)



  (= 
    (codelist-to-forms $AsciiCodesList $FormsOut) 
    (, 
      (parse-sexpr $AsciiCodesList $Forms0) 
      (set-det) 
      (zalwayzz (def-compile-all $Forms0 $FormsOut)) 
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
;=
;; codelist_to_forms( ?AsciiCodesList, ?FormsOut) is det.
;
; Codelist Converted To Forms.
;




  (export (/ fixvars 4))/*

:- export(baseKB:rff/0).

baseKB:rff:-baseKB:rff(dbginfo(n(first)),dbginfo(n(retry)),dbginfo(n(success)),dbginfo(n(failure))).

:- export(baseKB:rff/4).
baseKB:rff(OnFirst,OnRetry,OnSuccess,OnFailure) :- CU = was(never,first),
  call_cleanup((
    process_rff(CU,OnFirst,OnRetry,OnSuccess,OnFailure),
    (nb_setarg(1,CU,first));((nb_setarg(1,CU,second)),!,fail)),
    (nb_setarg(2,CU,second),process_rff(CU,OnFirst,OnRetry,OnSuccess,OnFailure),dbginfo(cleanup(CU)))),
  once((
    process_rff(CU,OnFirst,OnRetry,OnSuccess,OnFailure),
    CU \= was(second, _))).

:- export(process_rff/5).
process_rff(CU,OnFirst,OnRetry,OnSuccess,OnFailure):-
   dbginfo(next(CU)),
   once(((CU==was(first,first)->OnFirst;true),
   (CU==was(second,first)->OnRetry;true),
   (CU==was(second,second)->OnFailure;true),
   (CU==was(first,second)-e>OnSuccess;true))).


*/
/*
:- MeTTa_load_context(directory,Dir),
   DirFor = plarkc,
   (( \+ user:file_search_path(DirFor,Dir)) ->asserta(user:file_search_path(DirFor,Dir));true),
   absolute_file_name('../../../../',Y,[relative_to(Dir),file_type(directory)]),
   (( \+ user:file_search_path(pack,Y)) ->asserta(user:file_search_path(pack,Y));true).
:- attach_packs.
:- initialization(attach_packs).
*/
; [Required] Load the Logicmoo Library Utils
; = ; :- ensure_loaded(logicmoo(logicmoo_utils)).
; ; :- ensure_loaded(logicmoo(plarkc/mpred_cyc_api)).


;=

;; fixvars( ?P, ?VALUE2, :TermARG3, ?P) is det.
;
; Fixvars.
;

  (= 
    (fixvars $P $_ Nil $P) 
    (set-det))
  (= 
    (fixvars $P $N 
      (Cons  $V $VARS) $PO) 
    (, 
      (quietly-sreader (atom-string $Name $V)) 
      (svar-fixvarname $Name $NB) 
      (= $Var $NB) 
      (substM $P $N $Var $PM0) 
      (substM $PM0 $Name $Var $PM) 
      (is $N2 
        (+ $N 1)) 
      (fixvars $PM $N2 $VARS $PO)));  (get_varname_list(Vs)->true;Vs=[]),
;   append(Vs,[Name=Var],NVs),
;   nput_variable_names( NVs),






  (= 
    (non-empty-atom $A1) 
    (, 
      (atom $A1) 
      (atom-length $A1 $AL) 
      (set-det) 
      (> $AL 0)))


  (meta-predicate (sexpr-sterm-to-pterm + ? ?))
  (meta-predicate (sexpr-sterm-to-pterm-list + ? ?))


  (= 
    (is_relation_sexpr  =>) True)
  (= 
    (is_relation_sexpr  <=>) True)
  (= 
    (is_relation_sexpr  ==>) True)
  (= 
    (is_relation_sexpr  <==>) True)
  (= 
    (is_relation_sexpr  not) True)
  (= 
    (is_relation_sexpr  typeGenls) True)


  (= 
    (is_va_relation  or) True)
  (= 
    (is_va_relation  and) True)
;=



  (= 
    (is-exact-symbol $N $_) 
    (, 
      (not (atom $N)) 
      (set-det) 
      (fail)))
  (= 
    (is-exact-symbol $N $P) 
    (, 
      (nonvar $P) 
      (set-det) 
      (is-exact-symbol $N $PP) 
      (zalwayzz (= $P $PP))))
  (= 
    (is_exact_symbol  :- :-) True)
  (= 
    (is_exact_symbol  ?- ?-) True)
  (= 
    (is_exact_symbol  ?? $_) True)

;:- baseKB:ensure_loaded(logicmoo('plarkc/logicmoo_i_cyc_rewriting')).


  (= 
    (maybe-var $S $Name $Name) 
    (, 
      (== $S ?) 
      (atom $Name) 
      (set-det)))

;; sexpr_sterm_to_pterm(?VAR, ?V) is det.
;
; S-expression Sterm Converted To Pterm.
;

  (= 
    (sexpr-sterm-to-pterm $S $P) 
    (sexpr-sterm-to-pterm 0 $S $P))



  (= 
    (sexpr-sterm-to-pterm-pre-list $_ $STERM $STERM) 
    (, 
      (not (compound $STERM)) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm-pre-list $_ $STERM $STERM) 
    (, 
      (not (is-list $STERM)) 
      (set-det)))
; sexpr_sterm_to_pterm_pre_list(_,[S|STERM],[S|STERM]):- STERM == [], !.
  (= 
    (sexpr-sterm-to-pterm-pre-list $TD 
      (Cons  $S0 $STERM0) 
      (Cons  $S $STERM)) 
    (, 
      (if-then-else 
        (is-list $S0) 
        (sexpr-sterm-to-pterm $TD $S0 $S) 
        (sexpr-sterm-to-pterm-pre-list $TD $S0 $S)) 
      (sexpr-sterm-to-pterm-pre-list $TD $STERM0 $STERM)))


  (= 
    (sexpr-sterm-to-pterm $TD $VAR $VAR) 
    (, 
      (is-ftVar $VAR) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm $TD $S $P) 
    (, 
      (is-exact-symbol $S $P) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm $TD 
      (# $S) $P) 
    (, 
      (is-exact-symbol $S $P) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm $TD $VAR $Name) 
    (, 
      (atom $VAR) 
      (svar $VAR $Name) 
      (set-det)))

; sexpr_sterm_to_pterm(TD,List,PTERM):- append(Left,[S,Name|TERM],List),maybe_var(S,Name,Var),!,append(Left,[Var|TERM],NewList), sexpr_sterm_to_pterm(TD,NewList,PTERM).
; sexpr_sterm_to_pterm(TD,[S|TERM],dot_holds(PTERM)):- \+ (is_list(TERM)),sexpr_sterm_to_pterm_list(TD,[S|TERM],PTERM),!.
;sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- \+ atom(S),sexpr_sterm_to_pterm_list(TD,[S|TERM],PTERM),!.
  (= 
    (sexpr-sterm-to-pterm $TD 
      (Cons  $S $STERM0) $PTERM) 
    (, 
      (var $S) 
      (is $TD1 
        (+ $TD 1)) 
      (sexpr-sterm-to-pterm-pre-list $TD1 $STERM0 $STERM) 
      (sexpr-sterm-to-pterm-list $TD1 $STERM $PLIST) 
      (s-univ $TD $PTERM 
        (Cons  $S $PLIST)) 
      (set-det)))/*
sexpr_sterm_to_pterm(TD,[S,Vars|TERM],PTERM):- nonvar(S),
   call_if_defined(common_logic_snark:is_quantifier(S)),
   zalwayzz((sexpr_sterm_to_pterm_list(TD,TERM,PLIST),
   PTERM=..[S,Vars|PLIST])),!.
*/

  (= 
    (sexpr-sterm-to-pterm $_ 
      (:: $S $STERM0) $PTERM) 
    (, 
      (is-quoter $S) 
      (sexpr-sterm-to-pterm-pre-list 0 $STERM0 $STERM) 
      (set-det) 
      (=.. $PTERM 
        (:: $S $STERM)) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm $_ 
      (Cons  $S $STERM0) $PTERM) 
    (, 
      (is-quoter $S) 
      (sexpr-sterm-to-pterm-pre-list 0 $STERM0 $STERM) 
      (set-det) 
      (=.. $PTERM 
        (:: $S $STERM)) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm $TD 
      (Cons  $S $STERM0) $PTERM) 
    (, 
      (sexpr-sterm-to-pterm-pre-list $TD $STERM0 $STERM) 
      (is-list $STERM) 
      (next-args-are-lists-unless-string $S $NonList) 
      (length $LEFT $NonList) 
      (append $LEFT 
        (Cons  $List $RIGHT) $STERM) 
      (is-list $List) 
      (is $TD1 
        (+ $TD 1)) 
      (sexpr-sterm-to-pterm-list $TD1 $LEFT $PLEFTLIST) 
      (sexpr-sterm-to-pterm-list 0 $RIGHT $PRIGHTLIST) 
      (append $PLEFTLIST 
        (Cons  $List $PRIGHTLIST) $PLIST) 
      (s-univ $TD $PTERM 
        (Cons  $S $PLIST)) 
      (set-det)))

  (= 
    (sexpr-sterm-to-pterm $TD $STERM0 $PTERM) 
    (, 
      (is $TD1 
        (+ $TD 1)) 
      (sexpr-sterm-to-pterm-pre-list $TD $STERM0 $STERM) 
      (is-list $STERM) 
      (set-det) 
      (sexpr-sterm-to-pterm-list $TD1 $STERM $PLIST) 
      (s-univ $TD $PTERM $PLIST) 
      (set-det)))
  (= 
    (sexpr_sterm_to_pterm  $TD $VAR $VAR) True)


  (= 
    (is-quoter #BQ) 
    (is-common-lisp))
  (= 
    (is-quoter #COMMA) 
    (is-common-lisp))
  (= 
    (is_quoter  quote) True)


  (= 
    (next_args_are_lists_unless_string  defmacro 1) True)
  (= 
    (next_args_are_lists_unless_string  defun 1) True)
  (= 
    (next_args_are_lists_unless_string  let 0) True)
  (= 
    (next_args_are_lists_unless_string  let* 0) True)

;sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- (number(S);  (atom(S),fail,atom_concat_or_rtrace(_,'Fn',S))),sexpr_sterm_to_pterm_list(TD,[S|TERM],PTERM),!.
;sexpr_sterm_to_pterm(TD,[S],O):- is_ftVar(S),sexpr_sterm_to_pterm(TD,S,Y),!,s_univ(TD,O,[Y]),!.
;sexpr_sterm_to_pterm(TD,[S],O):- nonvar(S),sexpr_sterm_to_pterm(TD,S,Y),!,s_univ(TD,O,[Y]),!.
;sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- is_ftVar(S), sexpr_sterm_to_pterm_list(TD,TERM,PLIST),s_univ(TD,PTERM,[t,S|PLIST]),!.
;sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- \+ atom(S), sexpr_sterm_to_pterm_list(TD,TERM,PLIST),s_univ(TD,PTERM,[t,S|PLIST]),!.
;sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- S==and,!,zalwayzz((maplist(sexpr_sterm_to_pterm,TERM,PLIST),list_to_conjuncts(',',PLIST,PTERM))).
; sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- is_va_relation(S),!,zalwayzz((maplist(sexpr_sterm_to_pterm,TERM,PLIST),list_to_conjuncts(S,PLIST,PTERM))).
;sexpr_sterm_to_pterm(TD,[S|TERM],PTERM):- is_relation_sexpr(S),zalwayzz((sexpr_sterm_to_pterm_list(TD,TERM,PLIST),PTERM=..[S|PLIST])),!.
;sexpr_sterm_to_pterm(TD,STERM,PTERM):- STERM=..[S|TERM],sexpr_sterm_to_pterm_list(TD,TERM,PLIST),s_univ(TD,PTERM,[S|PLIST]),!.


  (= 
    (s-functor $F) 
    (, 
      (not (atom $F)) 
      (set-det) 
      (fail)))
  (= 
    (s-functor $F) 
    (not (atom-concat ? $_ $F)))


  (= 
    (s-univ 1 $S $S) 
    (set-det))
  (= 
    (s-univ $TD $P 
      (Cons  $F $ARGS)) 
    (, 
      (s-functor $F) 
      (is-list $ARGS) 
      (length $ARGS $A) 
      (l-arity $F $A) 
      (=.. $P 
        (Cons  $F $ARGS))))
  (= 
    (s-univ 0 $P 
      (Cons  $F $ARGS)) 
    (, 
      (s-functor $F) 
      (is-list $ARGS) 
      (=.. $P 
        (Cons  $F $ARGS))))
  (= 
    (s-univ $TD $P 
      (Cons  $F $ARGS)) 
    (, 
      (s-functor $F) 
      (is-list $ARGS) 
      (=.. $P 
        (Cons  $F $ARGS))))
  (= 
    (s-univ $TD $P $S) 
    (= $P $S))


  (= 
    (l-arity $F $A) 
    (clause-b (arity $F $A)))
  (= 
    (l_arity  function 1) True)
  (= 
    (l_arity  quote 1) True)
  (= 
    (l-arity #BQ 1) 
    (is-common-lisp))
  (= 
    (l-arity $F $A) 
    (current-predicate (/ $F $A)))
  (= 
    (l_arity  $_ 1) True)

;; sexpr_sterm_to_pterm_list(TD, ?VAR, ?VAR) is det.
;
; S-expression Converted To Pterm List.
;


  (= 
    (sexpr-sterm-to-pterm-list $TD $TERM $PTERMO) 
    (, 
      (is-list $TERM) 
      (append $BEFORE 
        (:: $VAR) $TERM) 
      (atom $VAR) 
      (atom-concat-or-rtrace @ $RVAR $VAR) 
      (non-empty-atom $RVAR) 
      (svar-fixvarname $RVAR $V) 
      (set-det) 
      (append $BEFORE $V $PTERM) 
      (sexpr-sterm-to-pterm-list0 $TD $PTERM $PTERMO)))
  (= 
    (sexpr-sterm-to-pterm-list $TD $TERM $PTERM) 
    (sexpr-sterm-to-pterm-list0 $TD $TERM $PTERM))


  (= 
    (sexpr-sterm-to-pterm-list0 $_ $VAR $VAR) 
    (, 
      (is-ftVar $VAR) 
      (set-det)))
  (= 
    (sexpr-sterm-to-pterm-list0 $_ Nil Nil) 
    (set-det))
  (= 
    (sexpr-sterm-to-pterm-list0 $TD 
      (Cons  $S $STERM) 
      (Cons  $P $PTERM)) 
    (, 
      (sexpr-sterm-to-pterm $TD $S $P) 
      (sexpr-sterm-to-pterm-list0 $TD $STERM $PTERM) 
      (set-det)))
  (= 
    (sexpr_sterm_to_pterm_list0  $_ $VAR $VAR) True)



  (export (/ current-input-to-forms 2))/*===================================================================
; input_to_forms/3 does less consistancy checking then conv_to_sterm

Always a S-Expression: 'WFFOut' placing variables in 'VARSOut'

|?-input_to_forms(`(isa a b)`,Clause,Vars).
Clause = [isa,a,b]
Vars = _h70

| ?- input_to_forms(`(isa a (b))`,Clause,Vars).
Clause = [isa,a,[b]]
Vars = _h70

|?-input_to_forms(`(list a b )`,Clause,Vars)
Clause = [list,a,b]
Vars = _h70

?- input_to_forms_debug("(=> (isa ?NUMBER ImaginaryNumber) (exists (?REAL) (and (isa ?REAL RealNumber) (equal ?NUMBER (MultiplicationFn ?REAL (SquareRootFn -1))))))").

?- input_to_forms_debug("(=> (isa ?PROCESS DualObjectProcess) (exists (?OBJ1 ?OBJ2) (and (patient ?PROCESS ?OBJ1) (patient ?PROCESS ?OBJ2) (not (equal ?OBJ1 ?OBJ2)))))").


| ?- input_to_forms(`(genlMt A ?B)`,Clause,Vars).
Clause = [genlMt,'A',_h998]
Vars = [=('B',_h998)|_h1101]

| ?- input_to_forms(`
 (goals Iran  (not   (exists   (?CITIZEN)
  (and    (citizens Iran ?CITIZEN)    (relationExistsInstance maleficiary ViolentAction ?CITIZEN)))))`
 ).

Clause = [goals,Iran,[not,[exists,[_h2866],[and,[citizens,Iran,_h2866],[relationExistsInstance,maleficiary,ViolentAction,_h2866]]]]]
Vars = [=(CITIZEN,_h2866)|_h3347]

| ?- input_to_forms_debug(`
(queryTemplate-Reln QuestionTemplate definitionalDisplaySentence
       (NLPatternList
           (NLPattern-Exact "can you")
           (RequireOne
               (NLPattern-Word Acquaint-TheWord Verb)
               (NLPattern-Word Tell-TheWord Verb))
           (RequireOne
               (NLPattern-Exact "me with")
               (NLPattern-Exact "me what"))
           (OptionalOne
               (WordSequence "the term") "a" "an")
           (NLPattern-Template NPTemplate :THING)
           (OptionalOne "is" )
           (OptionalOne TemplateQuestionMarkMarker))
       (definitionalDisplaySentence :THING ?SENTENCE)) `
).

| ?- input_to_forms_debug(`
 (#$STemplate #$bioForProposal-short
  (#$NLPatternList (#$NLPattern-Template #$NPTemplate :ARG1)
   (#$NLPattern-Exact "short bio for use in proposals" ) (#$NLPattern-Word #$Be-TheWord #$Verb)
      (#$NLPattern-Exact "") (#$NLPattern-Template #$NPTemplate :ARG2)) (#$bioForProposal-short :ARG1 :ARG2))`
 ).

input_to_forms_debug("(=> (disjointDecomposition ?CLASS @ROW) (forall (?ITEM1 ?ITEM2) (=> (and (inList ?ITEM1 (ListFn @ROW)) (inList ?ITEM2 (ListFn @ROW)) (not (equal ?ITEM1 ?ITEM2))) (disjoint ?ITEM1 ?ITEM2))))").


input_to_forms_debug(
`
 (#$STemplate #$bioForProposal-short
  (#$NLPatternList (#$NLPattern-Template #$NPTemplate :ARG1)
   (#$NLPattern-Exact "short bio for use in proposals" ) (#$NLPattern-Word #$Be-TheWord #$Verb)
      (#$NLPattern-Exact "") (#$NLPattern-Template #$NPTemplate :ARG2)) (#$bioForProposal-short :ARG1 :ARG2)) `
 ).

; txt_to_codes("(documentation Predicate EnglishLanguage \"A &;Predicate is a sentence-forming &;Relation. Each tuple in the &;Relation is a finite, ordered sequence of objects. The fact that a particular tuple is an element of a &;Predicate is denoted by '(*predicate* arg_1 arg_2 .. arg_n)', where the arg_i are the objects so related. In the case of &;BinaryPredicates, the fact can be read as `arg_1 is *predicate* arg_2' or `a *predicate* of arg_1 is arg_2'.\")",X).
input_to_forms_debug("(documentation Predicate EnglishLanguage \"A &;Predicate is a sentence-forming &;Relation. Each tuple in the &;Relation is a finite, ordered sequence of objects. The fact that a particular tuple is an element of a &;Predicate is denoted by '(*predicate* arg_1 arg_2 .. arg_n)', where the arg_i are the objects so related. In the case of &;BinaryPredicates, the fact can be read as `arg_1 is *predicate* arg_2' or `a *predicate* of arg_1 is arg_2'.\")",X,Y).

// ==================================================================== */



;; input_to_forms( ?FormsOut, ?Vars) is det.
;
; Input Converted To Forms.
;

  (= 
    (current-input-to-forms $FormsOut $Vars) 
    (, 
      (current-input $In) 
      (input-to-forms $In $FormsOut $Vars)))


  (= 
    (show-wff-debug $Wff $Vs) 
    (, 
      (nonvar $Wff) 
      (= $Wff 
        (= $H $B)) 
      (set-det) 
      (show-wff-debug 
        (= $H $B) $Vs)))
  (= 
    (show-wff-debug $Wff $Vs) 
    (, 
      (fmt "\n") 
      (must-or-rtrace (portray-clause-w-vars $Wff $Vs Nil)) 
      (set-det)))

; input_to_forms_debug(String):- sumo_to_pdkb(String,Wff),dbginfo(Wff),!.

  (= 
    (input-to-forms-debug $String) 
    (input-to-forms-debug $String 
      (:: =)))

  (= 
    (input-to-forms-debug $String 
      (with_self  $M $Decoders)) 
    (setup-call-cleanup 
      (fmt "% ========================\n") 
      (, 
        (get-varnames $Was) 
        (show-wff-debug 
          (= input $String) $Was) 
        (input-to-forms $String $Wff $Vs) 
        (b-setval $variable-names $Vs) 
        (show-wff-debug 
          (= to-forms $Wff) $Vs) 
        (do-decoders $Wff $Vs $M $Decoders) 
        (set-det) 
        (ignore (, (nonvar $Vs) (\== $Vs Nil) (show-wff-debug (= vars $Vs) $Vs)))) 
      (fmt "\n% ========================\n")))


  (= 
    (do-decoders $_ $_ $_ Nil) 
    (set-det))
  (= 
    (do-decoders $Wff $Vs $M 
      (Cons  $Decoder $Decoders)) 
    (, 
      (set-det) 
      (if-then-else 
        (, 
          (with_self  $M 
            (call $Decoder $Wff $WffO)) 
          (ignore (, (\== $Wff $WffO) (show-wff-debug (= (with_self  $M $Decoder) $WffO) $Vs)))) 
        (do-decoders $WffO $Vs $M $Decoders) 
        (, 
          (fmt (decoder-failed (with_self  $M $Decoder))) 
          (do-decoders $Wff $Vs $M $Decoders)))))
  (= 
    (do-decoders $Wff $Vs $M $Decoder) 
    (do-decoders $Wff $Vs $M 
      (:: $Decoder)))


  (export (/ input-to-forms 2))
;; input_to_forms( ?In, ?FormsOut) is det.
;
; Get Input Converted To Forms.
;

  (= 
    (input-to-forms $Codes $FormsOut) 
    (if-then 
      (input-to-forms $Codes $FormsOut $Vars) 
      (add-variable-names $Vars)))


  (export (/ input-to-forms 3))

;; input_to_forms( ?In, ?FormsOut, ?Vars) is det.
;
; Get Input Converted To Forms.
;

  (= 
    (input-to-forms $Codes $FormsOut $Vars) 
    (if-then 
      (push-varnames $_) 
      (quietly-sreader (input-to-forms0 $Codes $FormsOut $Vars))))


  (= 
    (is-variable-names-safe $Vars) 
    (, 
      (var $Vars) 
      (set-det)))
  (= 
    (is-variable-names-safe (Cons  (= $N $V) $Vars)) 
    (if-then 
      (, 
        (set-det) 
        (is-name-variable-safe $N $V)) 
      (is-variable-names-safe $Vars)))
  (= 
    (is_variable_names_safe  ()) True)


  (= 
    (is-name-variable-safe $N $V) 
    (if-then 
      (ok-var-name $N) 
      (var $V)))



  (= 
    (get-varnames $Was) 
    (if-then-else 
      (nb-current $variable-names $Was) True 
      (= $Was Nil)))


  (= 
    (push-varnames $New) 
    (if-then-else 
      (nonvar $New) 
      (b-setval $variable-names $New) 
      (, 
        (get-varnames $Was) 
        (= $Was $New) 
        (b-setval $variable-names $Was))))


  (= 
    (add-variable-names $Vars) 
    (, 
      (var $Vars) 
      (set-det)))
  (= 
    (add-variable-names (= $N $V)) 
    (, 
      (set-det) 
      (ignore (set-varname-s $N $V))))
  (= 
    (add-variable-names (Cons  $NV $Vars)) 
    (, 
      (add-variable-names $NV) 
      (set-det) 
      (add-variable-names $Vars)))
  (= 
    (add_variable_names  ()) True)


  (= 
    (set-varname-s $N $V) 
    (, 
      (get-varnames $Was) 
      (set-varname4 $Was $N $V $New) 
      (b-setval $variable-names $New)))


  (= 
    (set-varname4 $Was $N $V $New) 
    (, 
      (member $NV $Was) 
      (= $NV 
        (= $NN $VV)) 
      (== $NN $N) 
      (set-det) 
      (if-then-else 
        (= $V $VV) True 
        (setarg 2 $NV $V)) 
      (= $New $Was)))
  (= 
    (set-varname4 $Was $N $V $New) 
    (, 
      (member $NV $Was) 
      (= $NV 
        (= $NN $VV)) 
      (== $VV $V) 
      (set-det) 
      (if-then-else 
        (= $N $NN) True 
        (setarg 1 $NV $N)) 
      (= $New $Was)))
  (= 
    (set_varname4  $Was $N $V 
      (Cons  
        (= $N $V) $Was)) True)



  (= 
    (set-variable-names-safe $Vars) 
    (if-then-else 
      (is-variable-names-safe $Vars) 
      (b-setval $variable-names $Vars) True))


  (= 
    (input-to-forms0 $Codes $FormsOut $Vars) 
    (, 
      (parse-sexpr $Codes $Forms0) 
      (set-det) 
      (once (, (to-untyped $Forms0 $Forms1) (extract-lvars $Forms1 $FormsOut $Vars))))); is_openable(Codes),!,


  (= 
    (input-to-forms0 $Forms $FormsOut $Vars) 
    (, 
      (if-then 
        (to-untyped $Forms $Forms1) 
        (if-then 
          (extract-lvars $Forms1 $FormsOut $Vars) True)) 
      (set-det)))



  (= 
    (tstl) 
    (, 
      (tstl ./ontologyportal-sumo/Merge.kif) 
      (tstl ./ontologyportal-sumo/Translations/relations-en.txt) 
      (tstl ./ontologyportal-sumo/english-format.kif) 
      (tstl ./ontologyportal-sumo/domainEnglishFormat.kif) 
      (tstl ./ontologyportal-sumo/Mid-level-ontology.kif) 
      (set-det)))/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    LisMeTTa -- Interpreter for a simple Lisp. Written in MeTTa.
    Written Nov. 26th, 2006 by Markus Triska (triska@gmx.at).
    Public domain code.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
;:- style_check(-singleton).
;:- style_check(-discontiguous).
; :- style_check(-atom).
/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Parsing
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */



  (= 
    (writeqnl $O) 
    (, 
      (writeq $O) 
      (nl)))



;:- fixup_exports.
;:- endif.


