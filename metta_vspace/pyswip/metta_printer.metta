
  (encoding iso-latin-1)
  (flush-output)
  (setenv RUST-BACKTRACE full)

; ===============================
;       PRINTERS
; ===============================
; 'ppc' and 'ppc1' rules pretty-print original terms and convert them to metta if different,
; printing the converted forms as well.

  (= 
    (ppc $Msg $Term) 
    (, 
      (ppc1 $Msg $Term) 
      (p2m $Term $MeTTa) 
      (set-det) 
      (if-then-else 
        (\== $MeTTa $Term) 
        (ppc1 
          (p2m $Msg) $MeTTa) True)))


  (= 
    (ppc1 $Msg $Term) 
    (, 
      (not (not (ppct $Msg $Term))) 
      (set-det)))

  (= 
    (ppc1 $Msg $Term) 
    (not (not (, (ignore (guess-pretty $Term)) (writeln ---------------------) (write (p $Msg)) (write :) (nl) (portray-clause $Term) (writeln ---------------------) (not (not (print-tree (?- (show-cvts $Term))))) (nl) (writeln ---------------------) (write (s $Msg)) (write :) (nl) (write-src $Term) (nl)))))


  (= 
    (ppct $Msg $Term) 
    (, 
      (is-list $Term) 
      (set-det) 
      (writeln ---------------------) 
      (numbervars $Term 666 $_ 
        (:: (attvar bind))) 
      (write $Msg) 
      (write :) 
      (nl) 
      (write-src $Term) 
      (nl)))
  (= 
    (ppct $Msg $Term) 
    (, 
      (= $Term 
        (= $_ $_)) 
      (set-det) 
      (writeln ---------------------) 
      (write $Msg) 
      (write :) 
      (nl) 
      (portray-clause $Term) 
      (nl)))
  (= 
    (ppct $Msg $Term) 
    (, 
      (= $Term 
        (= $_ $_)) 
      (set-det) 
      (writeln ---------------------) 
      (write $Msg) 
      (write :) 
      (nl) 
      (numbervars $Term 444 $_ 
        (:: (attvar bind))) 
      (write-src $Term) 
      (nl)))
  (= 
    (ppct $Msg $Term) 
    (, 
      (= $Term 
        (= $_ $_)) 
      (set-det) 
      (writeln ---------------------) 
      (write $Msg) 
      (write :) 
      (nl) 
      (numbervars $Term 222 $_ 
        (:: (attvar bind))) 
      (print-tree $Term) 
      (nl)))

; 'pp_metta' rule is responsible for pretty-printing metta terms.

  (= 
    (pp-metta $P) 
    (, 
      (pretty-numbervars $P $PP) 
      (with-option 
        (= concepts False) 
        (pp-fb $PP))))


  (= 
    (string-height $Pt1 $H1) 
    (, 
      (split-string $Pt1 "\r\n" " \t\n\n" $L) 
      (length $L $H1)))


  (dynamic (/ just-printed 1)) 
; 'print_pl_source' rule is responsible for printing the source of a MeTTa term.



  (= 
    (print-pl-source $P) 
    (run-pl-source (print-pl-source0 $P)))



  (= 
    (run-pl-source $G) 
    (, 
      (notrace (catch $G $_ fail)) 
      (set-det)))
  (= 
    (run-pl-source $G) 
    (, 
      (ignore (rtrace $G)) 
      (trace)))



  (= 
    (print-pl-source0 $_) 
    (, 
      (notrace is-compatio) 
      (set-det)))
  (= 
    (print-pl-source0 $_) 
    (, 
      (notrace silent-loading) 
      (set-det)))
  (= 
    (print-pl-source0 $P) 
    (, 
      (notrace (, (just-printed $PP) (=@= $PP $P))) 
      (set-det)))
  (= 
    (print-pl-source0 $P) 
    (, 
      (= $Actions 
        (:: print-tree portray-clause pp-fb1-e)) 
      (findall 
        (- $H $Pt) 
        (, 
          (member $Action $Actions) 
          (must-det-ll (, (run-pl-source (with-output-to (string $Pt) (call $Action $P))) (string-height $Pt $H)))) $HeightsAndOutputs) 
      (sort $HeightsAndOutputs $Lst) 
      (last $Lst 
        (- $_ $Pt)) 
      (writeln $Pt) 
      (remove-all-atoms  &self 
        (just_printed  $_)) 
      (add-atom  &self 
        (just_printed  $P)) 
      (set-det))); List of actions to apply




  (= 
    (pp-fb1-a $P) 
    (, 
      (format "~N ") 
      (not (not (, (numbervars-w-singles $P) (pp-fb1-e $P)))) 
      (format "~N ") 
      (flush-output)))
  

  (= 
    (pp-fb1-e $P) 
    (pp-fb2 print-tree $P))
  (= 
    (pp-fb1-e $P) 
    (pp-fb2 pp-ilp $P))
  (= 
    (pp-fb1-e $P) 
    (pp-fb2 pp-as $P))
  (= 
    (pp-fb1-e $P) 
    (pp-fb2 portray-clause $P))
  (= 
    (pp-fb1-e $P) 
    (pp-fb2 print $P))
  (= 
    (pp-fb1-e $P) 
    (pp-fb2 fbdebug1 $P))
  (= 
    (pp-fb1-e $P) 
    (pp-fb2 (fmt0 $P)))

  (= 
    (pp-fb2 $F $P) 
    (, 
      (atom $F) 
      (current-predicate (/ $F 1)) 
      (call $F $P)))




  (= 
    (pp-sax $V) 
    (, 
      (is-final-write $V) 
      (set-det)))
  (= 
    (pp-sax $S) 
    (, 
      (not allow-concepts) 
      (set-det) 
      (write-src $S)))
  (= 
    (pp-sax $S) 
    (, 
      (is-englishy $S) 
      (set-det) 
      (print-concept "StringValue" $S)))
  (= 
    (pp-sax $S) 
    (, 
      (symbol-length $S 1) 
      (symbol-string $S $SS) 
      (set-det) 
      (print-concept "StringValue" $SS)))
  (= 
    (pp-sax $S) 
    (, 
      (is-an-arg-type $S $T) 
      (set-det) 
      (print-concept "TypeNode" $T)))
  (= 
    (pp-sax $S) 
    (, 
      (has-type $S $T) 
      (set-det) 
      (format '(~wValueNode "~w")' 
        (:: $T $S))))
  (= 
    (pp-sax $S) 
    (, 
      (sub-atom $S 0 4 $Aft $FB) 
      (flybase-identifier $FB $Type) 
      (set-det) 
      (if-then-else 
        (> $Aft 0) 
        (format '(~wValueNode "~w")' 
          (:: $Type $S)) 
        (format '(TypeNode "~w")' 
          (:: $Type)))))
  (= 
    (pp-sax $S) 
    (print-concept "ConceptNode" $S))

;print_concept( CType,V):- allow_concepts, !, write("("),write(CType),write(" "),ignore(with_concepts(false,write_src(V))),write(")").

  (= 
    (print-concept $CType $V) 
    (ignore (write-src $V)))

  (= 
    (write-val $V) 
    (, 
      (is-final-write $V) 
      (set-det)))
  (= 
    (write-val $V) 
    (, 
      (number $V) 
      (set-det) 
      (write-src $V)))
  (= 
    (write-val $V) 
    (, 
      (compound $V) 
      (set-det) 
      (write-src $V)))
  (= 
    (write-val $V) 
    (, 
      (write ") 
      (write $V) 
      (write ")))


; Handling the final write when the value is a variable or a '$VAR' structure.

  (= 
    (is-final-write $V) 
    (, 
      (var $V) 
      (set-det) 
      (write-dvar $V) 
      (set-det))) 
  (= 
    (is-final-write $S) 
    (, 
      (set-det) 
      (write-dvar $S) 
      (set-det))) 
  (= 
    (is-final-write (Cons  $VAR (Cons  $V $T))) 
    (, 
      (== $VAR $VAR) 
      (== $T Nil) 
      (set-det) 
      (write-dvar $V)))
  (= 
    (is-final-write Cons) 
    (, 
      (write Cons) 
      (set-det)))
  (= 
    (is-final-write Nil) 
    (, 
      (set-det) 
      (write ())))
;is_final_write([]):- write('Nil'),!.



  (= 
    (write-dvar $S) 
    (, 
      (== $S -) 
      (set-det) 
      (write-dname $S)))
  (= 
    (write-dvar $S) 
    (, 
      (== $S --) 
      (set-det) 
      (write $)))
  (= 
    (write-dvar $S) 
    (, 
      (var $S) 
      (get-var-name $S $N) 
      (write-dname $N) 
      (set-det)))
  (= 
    (write-dvar $S) 
    (, 
      (var $S) 
      (set-det) 
      (format $~p 
        (:: $S))))
  (= 
    (write-dvar $S) 
    (, 
      (atom $S) 
      (atom-concat - $N $S) 
      (write-dname $N)))
  (= 
    (write-dvar $S) 
    (, 
      (string $S) 
      (atom-concat - $N $S) 
      (write-dname $N)))
;write_dvar(S):- number(S), write_dname(S).
  (= 
    (write-dvar $S) 
    (write-dname $S))

  (= 
    (write-dname $S) 
    (, 
      (write $) 
      (write $S)))


  (= 
    (pp-as $V) 
    (, 
      (not (not (pp-sex $V))) 
      (flush-output)))

  (= 
    (pp-sex-nc $V) 
    (, 
      (with-no-quoting-symbols True 
        (pp-sex $V)) 
      (set-det)))


  (= 
    (unlooped-fbug $Mesg) 
    (fbug-message-hook fbug-message-hook 
      (fbug $Mesg)))


  (= 
    (into-hyphens $D $U) 
    (, 
      (atom $D) 
      (set-det) 
      (atomic-list-concat $L - $D) 
      (atomic-list-concat $L - $U)))
  (= 
    (into-hyphens $D $U) 
    (, 
      (descend-and-transform into-hyphens $D $U) 
      (set-det)))



  (= 
    (unlooped-fbug $W $Mesg) 
    (, 
      (nb-current $W True) 
      (set-det) 
      (print $Mesg) 
      (nl) 
      (bt) 
      (break)))
  (= 
    (unlooped-fbug $W $Mesg) 
    (, 
      (setup-call-cleanup 
        (nb-setval $W True) 
        (once $Mesg) 
        (nb-setval $W False)) 
      (nb-setval $W False)))



  (= 
    (write-src $V) 
    (, 
      (quietly (pp-sex $V)) 
      (set-det)))


  (= 
    (pp-sex $V) 
    (, 
      (pp-sexi $V) 
      (set-det)))
; Various 'write_src' and 'pp_sex' rules are handling the writing of the source,
; dealing with different types of values, whether they are lists, atoms, numbers, strings, compounds, or symbols.

  (= 
    (pp-sexi $V) 
    (, 
      (is-final-write $V) 
      (set-det)))
  (= 
    (pp-sexi $V) 
    (, 
      (is-dict $V) 
      (set-det) 
      (print $V)))
  (= 
    (pp-sexi $V) 
    (, 
      (allow-concepts) 
      (set-det) 
      (with-concepts False 
        (pp-sex $V)) 
      (flush-output)))
  (= 
    (pp-sexi ) 
    (set-det))
  (= 
    (pp-sexi '') 
    (, 
      (set-det) 
      (writeq '')))
; Handling more cases for 'pp_sex', when the value is a number, a string, a symbol, or a compound.
;pp_sex('') :- format('(EmptyNode null)',[]).
  (= 
    (pp-sexi $V) 
    (, 
      (number $V) 
      (set-det) 
      (writeq $V)))
  (= 
    (pp-sexi $V) 
    (, 
      (string $V) 
      (set-det) 
      (writeq $V)))
  (= 
    (pp-sexi $S) 
    (, 
      (string $S) 
      (set-det) 
      (print-concept StringValue $S)))
  (= 
    (pp-sexi $V) 
    (, 
      (symbol $V) 
      (should-quote $V) 
      (set-det) 
      (symbol-string $V $S) 
      (write "'") 
      (write $S) 
      (write "'")))
; Base case: atoms are printed as-is.
;pp_sexi(S):- symbol(S), always_dash_functor(S,D), D \=@= S, pp_sax(D),!.
  (= 
    (pp-sexi $V) 
    (, 
      (symbol $V) 
      (set-det) 
      (write $V)))
  (= 
    (pp-sexi $V) 
    (, 
      (or 
        (number $V) 
        (is-dict $V)) 
      (set-det) 
      (print-concept ValueAtom $V)))
;pp_sex((Head:-Body)) :- !, print_metta_clause0(Head,Body).
;pp_sex(''):- !, write('()').

; Continuing with 'pp_sex', 'write_mobj', and related rules,
; handling different cases based on the value�s type and structure, and performing the appropriate writing action.
; Lists are printed with parentheses.
  (= 
    (pp-sexi $V) 
    (, 
      (not (compound $V)) 
      (set-det) 
      (format ~p 
        (:: $V))))

;pp_sexi(V):-  is_list(V),!, pp_sex_l(V).
;pp_sex(V) :- (symbol(V),symbol_number(V,N)), !, print_concept('ValueAtom',N).
;pp_sex(V) :- V = '$VAR'(_), !, format('$~p',[V]).
  (= 
    (pp-sexi $V) 
    (, 
      (no-src-indents) 
      (set-det) 
      (pp-sex-c $V)))
  (= 
    (pp-sexi $V) 
    (w-proper-indent 2 
      (w-in-p (pp-sex-c $V))))


  (= 
    (write-mobj $H $_) 
    (, 
      (not (symbol $H)) 
      (set-det) 
      (fail)))
  (= 
    (write-mobj $VAR 
      (:: $S)) 
    (write-dvar $S)) 
  (= 
    (write-mobj exec 
      (:: $V)) 
    (, 
      (set-det) 
      (write (set-det)) 
      (write-src $V)))
  (= 
    (write-mobj $OBJ 
      (:: $_ $S)) 
    (, 
      (write [) 
      (write-src $S) 
      (write  ])))
  (= 
    (write-mobj {} 
      (:: $S)) 
    (, 
      (write {) 
      (write-src $S) 
      (write  })))
  (= 
    (write-mobj {...} 
      (:: $S)) 
    (, 
      (write {) 
      (write-src $S) 
      (write  })))
  (= 
    (write-mobj [...] 
      (:: $S)) 
    (, 
      (write [) 
      (write-src $S) 
      (write  ])))
  (= 
    (write-mobj $STRING 
      (:: $S)) 
    (, 
      (set-det) 
      (writeq $S)))
  (= 
    (write-mobj $F $Args) 
    (, 
      (fail) 
      (mlog-sym $K) 
      (set-det) 
      (pp-sex-c (Cons  $K (Cons  $F $Args)))))
;write_mobj(F,Args):- pp_sex_c([F|Args]).


  (= 
    (print-items-list $X) 
    (, 
      (is-list $X) 
      (set-det) 
      (print-list-as-sexpression $X)))
  (= 
    (print-items-list $X) 
    (write-src $X))


  (= 
    (pp-sex-l $V) 
    (, 
      (pp-sexi-l $V) 
      (set-det)))

  (= 
    (pp-sexi-l $V) 
    (, 
      (is-final-write $V) 
      (set-det)))
  (= 
    (pp-sexi-l (Cons  $F $V)) 
    (, 
      (symbol $F) 
      (is-list $V) 
      (write-mobj $F $V) 
      (set-det)))
  (= 
    (pp-sexi-l (Cons  $H $T)) 
    (, 
      (== $T Nil) 
      (set-det) 
      (write () 
      (pp-sex-nc $H) 
      (write ))))
  (= 
    (pp-sexi-l (:: $H $H2)) 
    (, 
      (write () 
      (pp-sex-nc $H) 
      (write ' ') 
      (with-indents False 
        (print-list-as-sexpression (:: $H2))) 
      (write )) 
      (set-det)))
  (= 
    (pp-sexi-l (Cons  $H $T)) 
    (, 
      (write () 
      (pp-sex-nc $H) 
      (write ' ') 
      (print-list-as-sexpression $T) 
      (write )) 
      (set-det)))

  (= 
    (pp-sexi-l (:: $H $S)) 
    (, 
      (== $H [...]) 
      (write [) 
      (print-items-list $S) 
      (write  ])))
  (= 
    (pp-sexi-l (:: $H $S)) 
    (, 
      (== $H {...}) 
      (write {) 
      (print-items-list $S) 
      (write  })))
;pp_sex_l(X):- \+ compound(X),!,write_src(X).  
;pp_sex_l('$VAR'(S))):- 
  (= 
    (pp-sexi-l (:: = $H $B)) 
    (, 
      (write (= ) 
      (with-indents False 
        (write-src $H)) 
      (nl) 
      (write   ) 
      (with-indents True 
        (write-src $B)) 
      (write ))))
  (= 
    (pp-sexi-l (Cons  $H $T)) 
    (, 
      (not no-src-indents) 
      (symbol $H) 
      (member $H 
        (:: If cond let let*)) 
      (set-det) 
      (with-indents True 
        (w-proper-indent 2 
          (w-in-p (pp-sex (Cons  $H $T)))))))

  (= 
    (pp-sexi-l (Cons  $H $T)) 
    (, 
      (is-list $T) 
      (length $T $Args) 
      (=< $Args 2) 
      (fail) 
      (wots $SS 
        (with-indents False 
          (, 
            (write () 
            (pp-sex-nc $H) 
            (write ' ') 
            (print-list-as-sexpression $T) 
            (write ))))) 
      (if-then-else 
        (, 
          (atom-length $SS $Len) 
          (< $Len 20)) 
        (write $SS) 
        (with-indents True 
          (w-proper-indent 2 
            (w-in-p (pp-sex-c (Cons  $H $T)))))) 
      (set-det)))

  (= 
    (pp-sex-c $V) 
    (, 
      (pp-sexi-c $V) 
      (set-det)))/*

pp_sexi_l([H|T]) :- is_list(T),symbol(H),upcase_atom(H,U),downcase_atom(H,U),!,
   with_indents(false,(write('('), pp_sex_nc(H), write(' '), print_list_as_sexpression(T), write(')'))).

;pp_sex([H,B,C|T]) :- T==[],!,
;  with_indents(false,(write('('), pp_sex(H), print_list_as_sexpression([B,C]), write(')'))).
*/


  (= 
    (pp-sexi-c $V) 
    (, 
      (is-final-write $V) 
      (set-det)))
  (= 
    (pp-sexi-c !(Cons  $H $T)) 
    (, 
      (is-list $T) 
      (set-det) 
      (write (set-det)) 
      (pp-sex-l (Cons  $H $T))))
  (= 
    (pp-sexi-c (! (Cons  $H $T))) 
    (, 
      (is-list $T) 
      (set-det) 
      (write (set-det)) 
      (pp-sex-l (Cons  $H $T))))
;pp_sexi_c([H|T]) :- is_list(T),!,unlooped_fbug(pp_sexi_c,pp_sex_l([H|T])).
  (= 
    (pp-sexi-c (Cons  $H $T)) 
    (, 
      (is-list $T) 
      (set-det) 
      (pp-sex-l (Cons  $H $T))))
;pp_sexi_c(V) :- print(V),!.

  (= 
    (pp-sexi-c (= $H $B)) 
    (, 
      (set-det) 
      (pp-sex-l (:: = $H $B))))
  (= 
    (pp-sexi-c $V) 
    (, 
      (compound-name-list $V $F $Args) 
      (write-mobj $F $Args) 
      (set-det)))
; Compound terms.
;pp_sex(Term) :- compound(Term), Term =.. [Functor|Args], write('('),format('(~w ',[Functor]), write_args_as_sexpression(Args), write(')').
;pp_sex(Term) :- Term =.. ['=',H|Args], length(Args,L),L>2, write('(= '),  pp_sex(H), write('\n\t\t'), maplist(pp_sex(2),Args).
  (= 
    (pp-sexi-c $V) 
    (, 
      (or 
        (not (compound $V)) 
        (is-list $V)) 
      (set-det) 
      (pp-sex $V)))
  (= 
    (pp-sexi-c (listOf $S $_)) 
    (, 
      (set-det) 
      (write-mobj (listOf $S))))
  (= 
    (pp-sexi-c (listOf $S)) 
    (, 
      (set-det) 
      (format '(ListValue ~@)' 
        (:: (pp-sex $S)))))
  (= 
    (pp-sexi-c (! $V)) 
    (, 
      (write (set-det)) 
      (set-det) 
      (pp-sex $V)))
;pp_sex_c('exec'(V)) :- write('!'),!,pp_sex(V).
  (= 
    (pp-sexi-c (= $N $V)) 
    (, 
      (allow-concepts) 
      (set-det) 
      (format "~N;; ~w == ~n" 
        (:: $N)) 
      (set-det) 
      (pp-sex $V)))
;pp_sex_c(V):- writeq(V).

  (= 
    (pp-sexi-c $Term) 
    (, 
      (compound-name-arity $Term $F 0) 
      (set-det) 
      (pp-sex-c (:: $F))))
  (= 
    (pp-sexi-c $Term) 
    (, 
      (=.. $Term 
        (Cons  $Functor $Args)) 
      (always-dash-functor $Functor $DFunctor) 
      (format '(~w ' 
        (:: $DFunctor)) 
      (write-args-as-sexpression $Args) 
      (write )) 
      (set-det)))
  (= 
    (pp-sexi-c $Term) 
    (, 
      (allow-concepts) 
      (=.. $Term 
        (Cons  $Functor $Args)) 
      (format '(EvaluationLink (PredicateNode "~w") (ListLink ' 
        (:: $Functor)) 
      (write-args-as-sexpression $Args) 
      (write ))) 
      (set-det)))
  (= 
    (pp-sexi-c $Term) 
    (, 
      (=.. $Term 
        (Cons  $Functor $Args)) 
      (always-dash-functor $Functor $DFunctor) 
      (format '(~w ' 
        (:: $DFunctor)) 
      (write-args-as-sexpression $Args) 
      (write )) 
      (set-det)))


  (= 
    (pp-sexi 2 $Result) 
    (, 
      (write 		) 
      (pp-sex $Result)))



  (= 
    (current-column $Column) 
    (, 
      (current-output $Stream) 
      (line-position $Stream $Column) 
      (set-det)))
  (= 
    (current-column $Column) 
    (, 
      (stream-property current-output 
        (position $Position)) 
      (stream-position-data column $Position $Column)))

  (= 
    (min-indent $Sz) 
    (, 
      (current-column $Col) 
      (> $Col $Sz) 
      (nl) 
      (indent-len $Sz)))
  (= 
    (min-indent $Sz) 
    (, 
      (current-column $Col) 
      (is $Need 
        (- $Sz $Col)) 
      (indent-len $Need) 
      (set-det)))
  (= 
    (min-indent $Sz) 
    (, 
      (nl) 
      (indent-len $Sz)))

  (= 
    (indent-len $Need) 
    (forall 
      (between 1 $Need $_) 
      (write ' ')))


  (= 
    (w-proper-indent $N $G) 
    (, 
      (flag w-in-p $X $X) 
      (is $XX 
        (+ 
          (* $X 2) $N)) 
      (setup-call-cleanup 
        (min-indent $XX) $G True)));(X==0->nl;true),


  (= 
    (w-in-p $G) 
    (setup-call-cleanup 
      (flag w-in-p $X 
        (+ $X 1)) $G 
      (flag w-in-p $_ $X)))



  (= 
    (always-dash-functor $A $B) 
    (, 
      (once (dash-functor $A $B)) 
      (\=@= $A $B) 
      (set-det)))
  (= 
    (always_dash_functor  $A $A) True)


  (= 
    (dash-functor $A $C) 
    (, 
      (not (symbol $A)) 
      (set-det) 
      (= $C $A)))
  (= 
    (dash-functor $A $C) 
    (, 
      (== $A Cons) 
      (set-det) 
      (= $C Cons)))
;dash_functor(A,C):- p2m(A,B),A\==B,!,always_dash_functor(B,C).
  (= 
    (dash-functor $Functor $DFunctor) 
    (, 
      (symbol $Functor) 
      (atomic-list-concat $L - $Functor) 
      (\= $L 
        (:: $_)) 
      (maplist always-dash-functor $L $LL) 
      (atomic-list-concat $LL - $DFunctor)))
  (= 
    (dash-functor $Functor $DFunctor) 
    (, 
      (fail) 
      (symbol $Functor) 
      (atomic-list-concat $L - $Functor) 
      (\= $L 
        (:: $_)) 
      (maplist always-dash-functor $L $LL) 
      (atomic-list-concat $LL - $DFunctor)))
  (= 
    (dash-functor $Functor $DFunctor) 
    (, 
      (symbol $Functor) 
      (atomic-list-concat $L - $Functor) 
      (\= $L 
        (:: $_)) 
      (maplist always-dash-functor $L $LL) 
      (atomic-list-concat $LL - $DFunctor)))

; Print arguments of a compound term.

  (= 
    (write_args_as_sexpression  ()) True)
  (= 
    (write-args-as-sexpression (Cons  $H $T)) 
    (, 
      (write ' ') 
      (pp-sex $H) 
      (write-args-as-sexpression $T)))

; Print the rest of the list.

  (= 
    (print_list_as_sexpression  ()) True)
  (= 
    (print-list-as-sexpression (:: $H)) 
    (pp-sex $H))
;print_list_as_sexpression([H]):- w_proper_indent(pp_sex(H)),!.
  (= 
    (print-list-as-sexpression (Cons  $H $T)) 
    (, 
      (pp-sex $H) 
      (write ' ') 
      (print-list-as-sexpression $T)))



; The predicate with_indents/2 modifies the src_indents option value during the execution of a goal.
; The first argument is the desired value for src_indents,
; and the second argument is the Goal to be executed with the given src_indents setting.

  (= 
    (with-indents $TF $Goal) 
    (with-option src-indents $TF $Goal)); Set the value of the `src_indents` option to TF and then execute the Goal




  (= 
    (no-src-indents) 
    (, 
      (option-else src-indents $TF True) 
      (set-det) 
      (== $TF False)))




  (= 
    (no-quoting-symbols) 
    (, 
      (option-else no-quoting-symbols $TF True) 
      (set-det) 
      (== $TF True)))


  (= 
    (with-no-quoting-symbols $TF $Goal) 
    (with-option no-quoting-symbols $TF $Goal)); Set the value of the `no_src_indents` option to TF and then execute the Goal


; The predicate allow_concepts/0 checks whether the use of concepts is allowed.
; It does this by checking the value of the concepts option and ensuring it is not false.

  (= 
    (allow-concepts) 
    (, 
      (set-det) 
      (fail) 
      (option-else concepts $TF False) 
      (not (== $TF False)))); Check if the option `concepts` is not set to false


; The predicate with_concepts/2 enables or disables the use of concepts during the execution of a given goal.
; The first argument is a Boolean indicating whether to enable (true) or disable (false) concepts.
; The second argument is the Goal to be executed with the given concepts setting.

  (= 
    (with-concepts $TF $Goal) 
    (with-option concepts $TF $Goal)); Set the value of the `concepts` option to TF and then execute the Goal


; Rules for determining when a symbol needs to be quoted in metta.

  (= 
    (dont-quote $Atom) 
    (, 
      (atom-length $Atom 1) 
      (set-det) 
      (char-type $Atom punct)))
  (= 
    (dont-quote $Atom) 
    (, 
      (symbol $Atom) 
      (upcase-atom $Atom $Atom) 
      (downcase-atom $Atom $Atom)))


  (= 
    (should-quote $Atom) 
    (, 
      (not (symbol $Atom)) 
      (not (string $Atom)) 
      (set-det) 
      (fail)))
  (= 
    (should-quote $Atom) 
    (, 
      (not (dont-quote $Atom)) 
      (atom-chars $Atom $Chars) 
      (once (or (should-quote-chars $Chars) (should-quote-atom-chars $Atom $Chars))))); symbol(Atom),  ; Ensure that the input is an symbol



  (= 
    (contains-unescaped-quote (:: ")) 
    (, 
      (set-det) 
      (fail))) ; End with a quote
  (= 
    (contains-unescaped-quote (Cons  " $_)) 
    (set-det))
  (= 
    (contains-unescaped-quote (Cons  \ (Cons  " $T))) 
    (, 
      (set-det) 
      (contains-unescaped-quote $T)))
  (= 
    (contains-unescaped-quote (Cons  $_ $T)) 
    (contains-unescaped-quote $T))

; Check if the list of characters should be quoted based on various conditions

  (= 
    (should_quote_chars  ()) True)
  (= 
    (should-quote-chars (Cons  " $Chars)) 
    (, 
      (set-det) 
      (contains-unescaped-quote $Chars)))
  (= 
    (should-quote-chars $Chars) 
    (or 
      (member " $Chars) 
      (or 
        (member ' ' $Chars) 
        (or 
          (member ' $Chars) 
          (or 
            (member , $Chars) 
            (, 
              (fail) 
              (member | $Chars))))))); Contains quote not captured with above clause
; Contains space
; Contains single quote
;  member('/', Chars);         ; Contains slash
; Contains comma
         ; Contains pipe
;should_quote_atom_chars(Atom,_) :- atom_number(Atom,_),!.

  (= 
    (should-quote-atom-chars $Atom 
      (Cons  $Digit $_)) 
    (, 
      (fail) 
      (char-type $Digit digit) 
      (not (atom-number $Atom $_))))

; Example usage:
; ?- should_quote('123abc').
; true.
; ?- should_quote('123.456').
; false.



  (ensure-loaded metta-interp)
  (ensure-loaded metta-compiler)
  (ensure-loaded metta-convert)
  (ensure-loaded metta-types)
  (ensure-loaded metta-space)
  (ensure-loaded metta-testing)
  (ensure-loaded metta-utils)
  (ensure-loaded metta-printer)
  (ensure-loaded metta-eval)

