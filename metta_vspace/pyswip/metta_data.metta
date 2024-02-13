
  (set-prolog-flag pfc-shared-module user)/*   
  LogicMOO Base FOL/PFC Setup
; Dec 13, 2035
; Douglas Miles

*/
; :- if( \+ current_predicate(set_fileAssertMt/1)).

;:- set_MeTTa_flag(pfc_shared_module,baseKB).



  (= 
    (control-arg-types $A $B) 
    (, 
      (once (control-arg-types1 Nil $A $B)) 
      (\== $A $B) 
      (set-det)))

;:- listing(control_arg_types/2).


  (= 
    (control-arg-types1 $_ $A $B) 
    (, 
      (not (compound $A)) 
      (set-det) 
      (= $A $B)))
  (= 
    (control-arg-types1 $_ $A $B) 
    (, 
      (if-then 
        (current-predicate (/ check-args 2)) 
        (if-then 
          (check-args $A $B) 
          (\=@= $A $B))) 
      (set-det)))
  (= 
    (control-arg-types1 $Pre $A $B) 
    (, 
      (compound-name-arguments $A $F $AA) 
      (length $AA $N) 
      (do-control-arg-types1 
        (/ $F $N) 1 $Pre $AA $BB) 
      (compound-name-arguments $B $F $BB)))


  (= 
    (do-control-arg-types1 $FofN $ArgNp1 $Pre Nil Nil) 
    (set-det))
  (= 
    (do-control-arg-types1 $FofN $ArgN $Pre 
      (Cons  $A $AA) 
      (Cons  $B $BB)) 
    (, 
      (do-control-1arg-type $FofN $ArgN $Pre $A $B) 
      (is $ArgNp1 
        (+ $ArgN 1)) 
      (do-control-arg-types1 $FofN $ArgNp1 $Pre $AA $BB)))


  (= 
    (do-control-1arg-type $FN $N $Pre $A $B) 
    (, 
      (var $A) 
      (set-det) 
      (= $B $A)))
  (= 
    (do-control-1arg-type 
      (/ $F $_) $N $Pre $A $B) 
    (, 
      (arg-n-isa $F $N $ISA) 
      (into-type $ISA $A $B) 
      (set-det)))
  (= 
    (do-control-1arg-type $FofN $_ $Pre $A $B) 
    (control-arg-types1 
      (Cons  $FofN $Pre) $A $B))



  (= 
    (arg_n_isa  $F $N $ISA) 
    (empty))
  (= 
    (arg-n-isa $F $N $ISA) 
    (clause-b (argIsa $F $N $ISA)))


  (= 
    (save-pfc-state) 
    (, 
      (forall 
        (, 
          (pfcStateTerm (/ $F $A)) 
          (current-predicate (/ $F $A))) 
        (listing (/ $F $A))) 
      (set-det)));tell(pfcState),
;told.



  (= 
    (pfcDoAll $Goal) 
    (forall 
      (call $Goal) True))


  (= 
    (pfcStateTerm (/ $F $A)) 
    (pfcDatabaseTerm (/ $F $A)))
  (= 
    (pfcStateTerm (/ $F $A)) 
    (member 
      (/ $F $A) 
      (:: 
        (/ fcUndoMethod 2) 
        (/ fcAction 2) 
        (/ fcTmsMode 1) 
        (/ pfcQueue 1) 
        (/ pfcCurrentDb 1) 
        (/ pfcHaltSignal 1) 
        (/ pfcDebugging 0) 
        (/ pfcSelect 1) 
        (/ pfcSearch 1))))




  (if (or (current-prolog-flag xref True) (, ($current-source-module $SM) (context-module $M) ($current-typein-module $CM) (current-prolog-flag pfc-shared-module $BaseKB) (asserta (with_self  $BaseKB (wusing-pfc $M $CM $SM pfc-rt))))))
  (endif)
  (if (current-prolog-flag xref True))
;:- module(pfc_rt,[]).
  (endif)
  (if (, (prolog-load-context source $File) (prolog-load-context file $File)))
;:- MeTTa_load_context(file,File),unload_file(File).
  (use-module (library logicmoo-utils))
  (endif)
;:- pfc_lib:use_module(pfc_lib).
  (if (not (current-prolog-flag xref True)))
  (, 
    (current-prolog-flag pfc-shared-module $BaseKB) 
    (must (remove-atom  &self (:  $BaseKB (wusing_pfc  $M $CM $SM pfc_rt)))) 
    (nop (fbugio (with_self  $BaseKB (chusing-pfc $M $CM $SM pfc-rt)))) 
    (if-then-else 
      (== $M $SM) 
      (, 
        (nop (maybe-ensure-abox $SM)) 
        (nop (with_self  $M (ain (genlMt $SM $BaseKB))))) 
      (nop (fbugio (with_self  $BaseKB (lusing-pfc $M $CM $SM pfc-rt))))) 
    (add-atom  &self 
      (:  $BaseKB 
        ($using_pfc  $M $CM $SM pfc_rt))) 
    (asserta (with_self  $SM ($does-use-pfc-mod $M $CM $SM pfc-rt))))
   ;backtrace(200).

  (multifile (/ $pldoc 4))/*
:- multifile '$exported_op'/3. 
:- dynamic '$exported_op'/3. 
:- discontiguous '$exported_op'/3. 
'$exported_op'(_,_,_):- fail.
*/
 
  (dynamic (/ $pldoc 4)) 
  (discontiguous (/ $pldoc 4)) 

  (= 
    ($pldoc  $_ $_ $_ $_) 
    (empty))


  (multifile (/ $autoload 3)) 
  (discontiguous (/ $autoload 3))
  (dynamic (/ $autoload 3))

  (= 
    ($autoload  $_ $_ $_) 
    (empty))


  (with_self  
    (system) 
    (use-module (library make)))
;:- set_MeTTa_flag(retry_undefined, kb_shared).
;:- set_MeTTa_flag(pfc_ready, true).
  (set-prolog-flag expect-pfc-file unknown)
  (endif)

  (with_self  
    (ifprolog) 
    (import (with_self  (date) (/ day-of-the-week 2))))
  (with_self  
    (ifprolog) 
    (import (with_self  (date) (/ day-of-the-year 2))))



  (= tilded_negation True)


  (= 
    (bagof-or-nil $T $G $L) 
    (or 
      (each-then 
        (bagof $T $G $L) True) 
      (= $L Nil)))

  (= 
    (setof-or-nil $T $G $L) 
    (or 
      (each-then 
        (setof $T $G $L) True) 
      (= $L Nil)))


  (= 
    (call-u $G) 
    (pfcCallSystem $G))

  (= 
    (clause-u $H $B) 
    (get-atoms  &self 
      (= $H $B)))


  (= 
    (mpred-ain $P) 
    (arc-assert $P))

  (= 
    (arc-assert (= $P $True)) 
    (, 
      (== $True True) 
      (set-det) 
      (arc-assert $P)))
  (= 
    (arc-assert $P) 
    (, 
      (must (current-why-UU $UU)) 
      (nop (fbugio (pfcAdd $P $UU))) 
      (set-det) 
      (pfcAdd $P $UU) 
      (asserta-if-new $P))); fbugio(arc_assert(P)), 



  (= 
    (pfc-retract $P) 
    (, 
      (fbugio (pfc-retract $P)) 
      (pfcRetract $P)))

  (= 
    (pfc-retractall $P) 
    (, 
      (fbugio (pfc-retractall $P)) 
      (pfcRetractAll $P)))


  (dynamic (/ ~ 1))

  (= 
    (~  $_) 
    (empty))

  (= 
    (must-ex $X) 
    (must $X))

  (= 
    (quietly-ex $X) 
    (call $X))


  (= 
    (add $X) 
    (pfcAdd $X))



  (= 
    (mpred-test (call-u $X)) 
    (, 
      (nonvar $X) 
      (set-det) 
      (pfcCallSystem $X) 
      (pfcWhy $X)))
  (= 
    (mpred-test (not (call-u $X))) 
    (, 
      (nonvar $X) 
      (set-det) 
      (if-then-else 
        (call-u $X) 
        (, 
          (fbugio (warn (failed (mpred-test (not (call-u $X)))))) 
          (mpred-test-why $X)) 
        (mpred-test-why (~ $X)))))
  (= 
    (mpred-test $X) 
    (or 
      (each-then 
        (mpred-test-why $X) True) 
      (mpred-test-why (~ $X))))


  (thread-local (with_self  (t-l) (/ shown-child 1)))
  (thread-local (with_self  (t-l) (/ shown-dep 2)))


  (= 
    (pfc-info $X) 
    (mpred-info $X))

  (= 
    (mpred-info $X) 
    (, 
      (remove-all-atoms  &self 
        (:  t_l 
          (shown_child  $_))) 
      (remove-all-atoms  &self 
        (:  t_l 
          (shown_dep  $_ $_))) 
      (ignore (, (forall (mpred-test-why $X) True) (forall (mpred-child-info $X) True)))))


  (= 
    (mpred-child-info $P) 
    (, 
      (remove-all-atoms  &self 
        (:  t_l 
          (shown_child  $_))) 
      (show-child-info $P) 
      (set-det) 
      (printLine)))


  (= 
    (show-child-info $P) 
    (, 
      (pfcChildren $P $L) 
      (show-child-info $P $L) 
      (set-det)))

  (= 
    (show-child-info $P $_) 
    (, 
      (with_self  
        (t-l) 
        (shown-child $Q)) 
      (=@= $P $Q) 
      (set-det)))
  (= 
    (show-child-info $P $_) 
    (, 
      (asserta (with_self  (t-l) (shown-child $P))) 
      (fail)))
  (= 
    (show-child-info $_ Nil) 
    (set-det))
  (= 
    (show-child-info $P $L) 
    (, 
      (list-to-set $L $S) 
      (format "~N~nChildren for " Nil) 
      (ansi-format 
        (:: (fg green)) ~@ 
        (:: (pp $P))) 
      (format " :~n" Nil) 
      (forall 
        (, 
          (member $D $S) 
          (not (with_self  (t-l) (shown-dep $P $D)))) 
        (, 
          (asserta (with_self  (t-l) (shown-dep $P $D))) 
          (ansi-format 
            (:: (fg yellow)) '~N ~@. ~n' 
            (:: (pp $D))))) 
      (my-maplist show-child-info $S)))


  (= 
    (mpred-why $X) 
    (mpred-test-why $X))


  (= 
    (mpred-test-why $X) 
    (or 
      (each-then 
        (pfcCallSystem $X) 
        (pfcTF1 $X)) 
      (pfcTF1 $X)))


  (= 
    (mpred-literal $X) 
    (pfcLiteral $X))

  (= 
    (mpred-positive-literal $X) 
    (pfcPositiveLiteral $X))

  (= 
    (pfcAtom $X) 
    (pfcLiteral $X))

  (= 
    (rem $X) 
    (pfcWithdraw $X))

  (= 
    (rem2 $X) 
    (pfcRemove $X))

  (= 
    (remove $X) 
    (pfcBlast $X))

; :- mpred_ain_in_thread.
; :- current_thread_pool(ain_pool)->true;thread_pool_create(ain_pool,20,[]).

  (multifile (with_self  (thread-pool) (/ create-pool 1)))
  (dynamic (with_self  (thread-pool) (/ create-pool 1)))

  (= 
    (with_self  
      (thread-pool) 
      (create-pool ain-pool)) 
    (thread-pool-create ain-pool 50 
      (:: (detached True))))


  (use-module (library (/ http thread-httpd)))
  (use-module (library thread-pool))


  (= 
    (is-ain-pool-empty) 
    (, 
      (thread-pool-property ain-pool 
        (running $N)) 
      (set-det) 
      (== $N 0)))
  (= is_ain_pool_empty True)


  (= 
    (show-ain-pool) 
    (forall 
      (thread-pool-property ain-pool $PP) 
      (fmt (show-ain-pool $PP))))


  (= 
    (await-ain-pool) 
    (if-then-else is-ain-pool-empty True 
      (, 
        (repeat) 
        (sleep 0.005) 
        (is-ain-pool-empty))))


  (= 
    (ain-in-thread $MAIN) 
    (, 
      (strip-module $MAIN $M $AIN) 
      (call-in-thread (with_self  $M (pfcAdd $AIN)))))


  (= 
    (call-in-thread $MG) 
    (, 
      (strip-module $MG $M $G) 
      (notrace (, (copy-term (with_self  $M $G) $GG $_) (numbervars $GG 0 $_ (:: (attvar skip) (singletons True))) (term-to-atom $GG $TN))) 
      (call-in-thread $TN $M $G) 
      (dmsg-pretty (call-in-thread $TN $M $G))))

  (= 
    (call-in-thread $TN $M $G) 
    (, 
      (thread-property $_ 
        (alias $TN)) 
      (set-det) 
      (dmsg-pretty (already-queued $M $G))))
  (= 
    (call-in-thread $TN $M $G) 
    (, 
      (must (current-why $Why)) 
      (thread-create-in-pool ain-pool 
        (call-in-thread-code $M $G $Why $TN) $Id 
        (:: (alias $TN)))))


  (= 
    (call-in-thread-code $M $G $Why $TN) 
    (with-only-current-why $Why 
      (catch 
        (if-then-else 
          (with_self  $M $G) 
          (nop (dmsg-pretty (suceeded exit $TN))) 
          (dmsg-pretty (failed exit $TN))) $E 
        (dmsg-pretty (error (--> $E $TN))))))

;:- call_in_thread(fbugio(call_in_thread)).
; why_dmsg(Why,Msg):- with_current_why(Why,dmsg_pretty(Msg)).

;   File   : pfc
;   Author : Tim Finin, finin@umbc.edu
;   Updated: 10/11/87, ...
;   Purpose: consult system file for ensure


  (= 
    (pfcVersion  3.0) True)


  (op 500 fx ~)/*
pfcFile('pfcsyntax').	; operator declarations.
pfcFile('pfccore').	; core of Pfc.
pfcFile('pfcsupport').	; support maintenance
pfcFile('pfcdb').	; predicates to manipulate database.
pfcFile('pfcdebug').	; debugging aids (e.g. tracing).
pfcFile('pfcjust').	; predicates to manipulate justifications.
pfcFile('pfcwhy').	; interactive exploration of justifications.

pfcLoad :- pfcFile(F), ensure_loaded(F), fail.
pfcLoad.
*/
;pfcFcompile :- pfcFile(F), compile(F), fail.
;pfcFcompile.
;:- pfcLoad.
;   File   : pfccompile.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Updated: 10/11/87, ...
;   Purpose: compile system file for Pfc
/*
:- compile(pfcsyntax).
:- compile(pfccore).
:- compile(pfcdb).
:- compile(pfcjust).
:- compile(pfcwhy).
:- compile(pfcdebug).
*/
;   File   : pfcsyntax.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Purpose: syntactic sugar for Pfc - operator definitions and term expansions.

  (op 1050 xfx ==>)
  (op 1050 xfx <==>)
  (op 1050 xfx <-)
  (op 1100 fx ==>)
  (op 1150 xfx ::::)


  (dynamic (with_self  (pfctmp) (/ knows-will-table-as 2)))


  (= 
    (will-table-as $Stuff $As) 
    (, 
      (with_self  
        (pfctmp) 
        (knows-will-table-as $Stuff $As)) 
      (set-det)))
  (= 
    (will-table-as $Stuff $As) 
    (, 
      (add-atom  &self 
        (:  pfctmp 
          (knows_will_table_as  $Stuff $As))) 
      (must (react-tabling $Stuff $As)) 
      (set-det) 
      (fail)))


  (= 
    (react-tabling $Stuff $_) 
    (dynamic $Stuff))


  (dynamic (with_self  (lmconf) (/ is-treated-like-pfc-file 1)))
  (dynamic (with_self  (lmconf) (/ is-pfc-module 1)))

  (= 
    (if-pfc-indicated) 
    (, 
      (source-location $F $_) 
      (if-then-else 
        (sub-string $F $_ $_ $_ .pfc) True 
        (with_self  
          (lmconf) 
          (is-treated-like-pfc-file $F))) 
      (set-det)))
  (= 
    (if-pfc-indicated) 
    (, 
      (prolog-load-context module $M) 
      (with_self  
        (lmconf) 
        (is-pfc-module $M)) 
      (set-det)))


  (= 
    (skip-pfc-term-expansion $Var) 
    (, 
      (var $Var) 
      (set-det)))
  (= 
    (skip_pfc_term_expansion  begin_of_file) True)
  (= 
    (skip_pfc_term_expansion  end_of_file) True)


  (export (/ pfc-term-expansion 2))
  (with_self  
    (system) 
    (import (/ pfc-term-expansion 2)))

  (= 
    (pfc-term-expansion $I $O) 
    (, 
      (skip-pfc-term-expansion $I) 
      (set-det) 
      (= $I $O)))
  (= 
    (pfc-term-expansion 
      !(table (as $Stuff $Type)) 
      (:: 
        !(pfcAdd (tabled-as $Stuff $Type)) 
        !(table (as $Stuff $Type)))) 
    (, 
      (nonvar $Stuff) 
      (set-det) 
      (if-pfc-indicated) 
      (not (will-table-as $Stuff $Type))))
  (= 
    (pfc-term-expansion 
      !(table $Stuff) 
      (:: 
        !(pfcAdd (tabled-as $Stuff incremental)) 
        !(table (as $Stuff incremental)))) 
    (, 
      (if-pfc-indicated) 
      (not (will-table-as $Stuff incremental))))
  (= 
    (pfc-term-expansion 
      !$_ $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (pfc_term_expansion  
      (==>  $P $Q) 
      (:-  
        (pfcAdd  
          (==>  $P $Q)))) True)
;term_expansion((P==>Q),(:- pfcAdd(('<-'(Q,P))))).  ; speed-up attempt
  (= 
    (pfc_term_expansion  
      (<-  $P $Q) 
      (:-  
        (pfcAdd  
          (<-  $P $Q)))) True)
  (= 
    (pfc_term_expansion  
      (<==>  $P $Q) 
      (:-  
        (pfcAdd  
          (<==>  $P $Q)))) True)
  (= 
    (pfc_term_expansion  
      (::::  $RuleName $Rule) 
      (:-  
        (pfcAdd  
          (::::  $RuleName $Rule)))) True)
  (= 
    (pfc_term_expansion  
      (==>  $P) 
      (:-  
        (pfcAdd  $P))) True)
  (= 
    (pfc-term-expansion $I $I) 
    (, 
      (== $I end-of-file) 
      (set-det)))
  (= 
    (pfc-term-expansion $P 
      !(pfcAdd $P)) 
    (if-pfc-indicated))

;use_pfc_term_expansion:- current_MeTTa_flag(pfc_term_expansion,false),!,fail.
; maybe switch to MeTTa_load_context(file,...)?
;use_pfc_term_expansion:- source_location(File,_), atom_concat(_,'.pfc.pl',File).


  (= 
    (term-subst $P $O) 
    (, 
      (term-subst clause $P $O) 
      (set-det)))

  (= 
    (term-subst $_ $P $O) 
    (, 
      (not (compound $P)) 
      (set-det) 
      (= $O $P)))

  (= 
    (term-subst tilded-negation $P $O) 
    (, 
      (set-det) 
      (term-subst 
        (:: 
          (- not ~) 
          (- => ==>) 
          (- <=> <==>) 
          (- <= <-)) $P $O)))

  (= 
    (term-subst $Subst $P $O) 
    (, 
      (compound-name-arguments $P $F $Args) 
      (my-maplist 
        (term-subst $Subst) $Args $ArgsL) 
      (termf-subst $Subst $F $F2) 
      (compound-name-arguments $O $F2 $ArgsL)))


  (= 
    (termf-subst $Subst $F $F2) 
    (if-then-else 
      (member 
        (- $F $F2) $Subst) True 
      (= $F $F2)))


;   File   : pfccore.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Updated: 10/11/87, ...
;            4/2/91 by R. McEntire: added calls to valid_dbref as a
;                                   workaround for the Quintus 3.1
;                                   bug in the recorded database.
;   Purpose: core Pfc predicates.


  (use-module (library lists))


;==>(_).

; ==>(G):- arc_assert(G).

;:- multifile ('<-')/2.
;:- dynamic ('<-')/2.
;:- discontiguous(('<-')/2).
;'<-'(_,_).

;:- multifile ('==>')/2.
;:- dynamic ('==>')/2.
;:- discontiguous(('==>')/2).
;'==>'(_,_).

;:- multifile ('==>')/2.
;:- dynamic ('::::')/2.
;:- dynamic '<==>'/2.
  (dynamic (/ $pt$ 2))
  (dynamic (/ $nt$ 3))
  (dynamic (/ $bt$ 2))
  (dynamic (/ fcUndoMethod 2))
  (dynamic (/ fcAction 2))
  (dynamic (/ fcTmsMode 1))
  (dynamic (/ pfcQueue 1))
  (dynamic (/ pfcCurrentDb 1))
  (dynamic (/ pfcHaltSignal 1))
  (dynamic (/ pfcDebugging 0))
  (dynamic (/ pfcSelect 1))
  (dynamic (/ pfcSearch 1))

  (thread-local (with_self  (t-l) (/ pfcSearchTL 1)))

  (dynamic (/ $spft$ 3))

; ; ; initialization of global assertons 


  (= 
    (pfcSetVal $Stuff) 
    (, 
      (duplicate-term $Stuff $DStuff) 
      (functor $DStuff $_ $N) 
      (setarg $N $DStuff $_) 
      (remove-all-atoms  &self $DStuff) 
      (add-atom  &self $Stuff)))

; ;  pfcDefault/1 initialized a global assertion.
; ;   pfcDefault(P,Q) - if there is any fact unifying with P, then do 
; ;   nothing, else assert Q.


  (= 
    (pfcDefault $GeneralTerm $Default) 
    (if-then-else 
      (get-atoms  &self 
        (= $GeneralTerm true)) True 
      (add-atom  &self $Default)))

; ;  fcTmsMode is one of {none,local,cycles} and controles the tms alg.

  (pfcDefault 
    (fcTmsMode $_) 
    (fcTmsMode cycles))

; Pfc Search strategy. pfcSearch(X) where X is one of {direct,depth,breadth}
  (pfcDefault 
    (pfcSearch $_) 
    (pfcSearch direct))


; 

; ;  pfcAdd/2 and pfcPost/2 are the main ways to assert new clauses into the
; ;  database and have forward reasoning done.

; ;  pfcAdd(P,S) asserts P into the dataBase with support from S.


  (= 
    (pfcAdd $P) 
    (, 
      (must (current-why-UU $UU)) 
      (with-current-why $P 
        (pfcAdd $P $UU))))

  (= 
    (pfcAdd 
      (==> $P) $S) 
    (, 
      (set-det) 
      (pfcAdd $P $S)))

  (= 
    (pfcAdd $P $S) 
    (, 
      (pfcPost $P $S) 
      (pfcRun) 
      (set-det)))

;pfcAdd(_,_).
  (= 
    (pfcAdd $P $S) 
    (pfcWarn "pfcAdd(~p,~p) failed" 
      (:: $P $S)))


; pfcPost(+Ps,+S) tries to add a fact or set of fact to the database.  For
; each fact (or the singelton) pfcPost1 is called. It always succeeds.


  (= 
    (pfcPost $List $S) 
    (pfcPost-rev $S $List))


  (= 
    (pfcPost-rev $S $Term) 
    (if-then-else 
      (is-list $Term) 
      (my-maplist 
        (pfcPost-rev $S) $Term) 
      (pfcPost1 $Term $S)))


; pfcPost1(+P,+S) tries to add a fact to the database, and, if it succeeded,
; adds an entry to the pfc queue for subsequent forward chaining.
; It always succeeds.


  (= 
    (pfcPost1 $Fact $S) 
    (, 
      (control-arg-types $Fact $Fixed) 
      (set-det) 
      (pfcPost1 $Fixed $S)))

  (= 
    (pfcPost1 $P $S) 
    (, 
      (must (pfcAddSupport $P $S)) 
      (if-then-else 
        (pfcUnique post $P) 
        (pfcPost2 $P $S) True))); ;  db pfcAddDbToHead(P,P2),
; pfcRemoveOldVersion(P),



  (= 
    (pfcPost2 $P $S) 
    (, 
      (must (add-atom  &self $P)) 
      (must (pfcTraceAdd $P $S)) 
      (set-det) 
      (must (pfcEnqueue $P $S)) 
      (set-det)))

;pfcPost1(_,_).
;pfcPost1(P,S) :-  
 ;pfcWarn("pfcPost1: ~p\n (support: ~p) failed",[P,S]).

; ;   pfcAddDbToHead(+P,-NewP) is semidet.
; talkes a fact P or a conditioned fact
; (P:-C) and adds the Db context.
;


  (= 
    (pfcAddDbToHead $P $NewP) 
    (, 
      (pfcCallSystem (pfcCurrentDb $Db)) 
      (if-then-else 
        (= $Db True) 
        (= $NewP $P) 
        (if-then-else 
          (= $P 
            (= $Head $Body)) 
          (= $NewP 
            (= $Head 
              (, $Db $Body))) 
          (if-then True 
            (= $NewP 
              (= $P $Db)))))))


  (dynamic (/ pfcCurrentDb 1))

  (= 
    (pfcCurrentDb  true) True)

; ;  pfcUnique(X) is det.
; 
; is true if there is no assertion X in the MeTTa db.
;


  (= 
    (pfcUnique $Type 
      (= $Head $Tail)) 
    (, 
      (set-det) 
      (not (get-atoms  &self (= $Head $Tail)))))
  (= 
    (pfcUnique $Type $P) 
    (not (get-atoms  &self (= $P true))))


; ;  pfcEnqueue(P,Q) is det.
; 
; Enqueu according to settings
;

  (= 
    (pfcSetSearch $Mode) 
    (pfcSetVal (pfcSearch $Mode)))


  (= 
    (pfcGetSearch $Mode) 
    (if-then 
      (if-then-else 
        (with_self  
          (t-l) 
          (pfcSearchTL $ModeT)) True 
        (pfcSearch $ModeT)) 
      (= $Mode $ModeT)))


  (= 
    (pfcEnqueue $P $S) 
    (if-then-else 
      (pfcGetSearch $Mode) 
      (if-then-else 
        (= $Mode direct) 
        (pfcFwd $P) 
        (if-then-else 
          (= $Mode thread) 
          (pfcThreadFwd $P $S) 
          (if-then-else 
            (= $Mode depth) 
            (pfcAsserta 
              (pfcQueue $P) $S) 
            (if-then-else 
              (= $Mode breadth) 
              (pfcAssert 
                (pfcQueue $P) $S) 
              (if-then True 
                (pfcWarn "Unrecognized pfcSearch mode: ~p" $Mode)))))) 
      (pfcWarn "No pfcSearch mode")))



; ;  pfcRemoveOldVersion(+Rule) is det.
;
; if there is a rule of the form Identifier ::: Rule then delete it.


  (= 
    (pfcRemoveOldVersion (:::: $Identifier $Body)) 
    (if-then-else 
      (var $Identifier) 
      (pfcWarn "variable used as an  rule name in ~p :::: ~p" 
        (:: $Identifier $Body)) 
      (pfcRemoveOldVersion0 (:::: $Identifier $Body)))); this should never happen.


  

  (= 
    (pfcRemoveOldVersion0 (:::: $Identifier $Body)) 
    (, 
      (nonvar $Identifier) 
      (get-atoms  &self 
        (= 
          (::::  $Identifier $OldBody) $_)) 
      (not (= $Body $OldBody)) 
      (pfcWithdraw (:::: $Identifier $OldBody)) 
      (set-det)))
  (= 
    (pfcRemoveOldVersion0  $_) True)


; ;  with_fc_mode(+Mode,:Goal) is semidet.
; 
; Temporariliy changes to forward chaining propagation mode while running the Goal
;

  (= 
    (with-fc-mode $Mode $Goal) 
    (locally 
      (with_self  
        (t-l) 
        (pfcSearchTL $Mode)) $Goal))



  (= 
    (pfcThreadFwd $S $P) 
    (with-only-current-why $S 
      (call-in-thread (with-fc-mode thread (pfcFwd $P))))); maybe keep `thread` mode?


; in_fc_call(Goal):- with_fc_mode( thread, Goal).
;in_fc_call(Goal):- with_fc_mode( direct, Goal).
; in_fc_call(Goal):- !, pfcCallSystem(Goal).




; 

; pfcRun compute the deductive closure of the current database. 
; How this is done depends on the searching mode:
;    direct -  fc has already done the job.
;    depth or breadth - use the pfcQueue mechanism.


  (= 
    (pfcRun) 
    (, 
      (not (pfcGetSearch direct)) 
      (pfcStep) 
      (pfcRun)))
  (= pfcRun True)


; pfcStep removes one entry from the pfcQueue and reasons from it.



  (= 
    (pfcStep) 
    (, 
      (pfcRetract (pfcHaltSignal $Msg)) 
      (pfcTraceMsg (removing (pfcHaltSignal $Msg))) 
      (set-det) 
      (fail))); if pfcHaltSignal(Msg) is true, reset it and fail, thereby stopping inferencing.


  (= 
    (pfcStep) 
    (, 
      (get-next-fact $P) 
      (pfcdo (pfcFwd $P)) 
      (set-det))); draw immediate conclusions from the next fact to be considered.
; fails iff the queue is empty.



  (= 
    (get-next-fact $P) 
    (, 
      (select-next-fact $P) 
      (remove-selection $P)));identifies the nect fact to fc from and removes it from the queue.



  (= 
    (remove-selection $P) 
    (, 
      (pfcRetract (pfcQueue $P)) 
      (pfcRemoveSupportsQuietly (pfcQueue $P)) 
      (set-det)))
  (= 
    (remove-selection $P) 
    (brake (pfcPrintf "pfc:get_next_fact - selected fact not on Queue: ~p" (:: $P))))


; select_next_fact(P) identifies the next fact to reason from.  
; It tries the user defined predicate first and, failing that, 
;  the default mechanism.


  (= 
    (select-next-fact $P) 
    (, 
      (pfcSelect $P) 
      (set-det)))  
  (= 
    (select-next-fact $P) 
    (, 
      (defaultpfcSelect $P) 
      (set-det)))  

; the default selection predicate takes the item at the froint of the queue.

  (= 
    (defaultpfcSelect $P) 
    (, 
      (pfcCallSystem (pfcQueue $P)) 
      (set-det)))

; pfcHalt stops the forward chaining.

  (= 
    (pfcHalt) 
    (pfcHalt "unknown_reason" Nil))

  (= 
    (pfcHalt $Format) 
    (pfcHalt $Format Nil))

  (= 
    (pfcHalt $Format $Args) 
    (, 
      (format 
        (string $Msg) $Format $Args) 
      (if-then-else 
        (pfcHaltSignal $Msg) 
        (pfcWarn "pfcHalt finds pfcHaltSignal(~w) already set" 
          (:: $Msg)) 
        (add-atom  &self 
          (pfcHaltSignal  $Msg)))))


; ; 
; ; 
; ;  predicates for manipulating triggers
; ; 


  (= 
    (pfcAddTrigger 
      ($pt$ $Trigger $Body) $Support) 
    (, 
      (set-det) 
      (pfcTraceMsg '      Adding positive trigger(+) ~p~n' 
        (:: ($pt$ $Trigger $Body))) 
      (pfcAssert 
        ($pt$ $Trigger $Body) $Support) 
      (copy-term 
        ($pt$ $Trigger $Body) $Tcopy) 
      (pfc-call $Trigger) 
      (with-current-why $Trigger 
        (fcEvalLHS $Body 
          (, $Trigger $Tcopy))) 
      (fail)))


  (= 
    (pfcAddTrigger 
      ($nt$ $Trigger $Test $Body) $Support) 
    (, 
      (set-det) 
      (pfcTraceMsg '      Adding negative trigger(-): ~p~n       test: ~p~n       body: ~p~n' 
        (:: $Trigger $Test $Body)) 
      (copy-term $Trigger $TriggerCopy) 
      (pfcAssert 
        ($nt$ $TriggerCopy $Test $Body) $Support) 
      (not (pfc-call $Test)) 
      (with-current-why 
        (not (pfc-call $Test)) 
        (fcEvalLHS $Body 
          (, 
            (not $Trigger) 
            ($nt$ $TriggerCopy $Test $Body))))))

  (= 
    (pfcAddTrigger 
      ($bt$ $Trigger $Body) $Support) 
    (, 
      (set-det) 
      (pfcAssert 
        ($bt$ $Trigger $Body) $Support) 
      (pfcBtPtCombine $Trigger $Body $Support)))

  (= 
    (pfcAddTrigger $X $Support) 
    (pfcWarn "Unrecognized trigger(?) to pfcAddtrigger: ~p" 
      (:: $X)))



  (= 
    (pfcBtPtCombine $Head $Body $Support) 
    (, 
      (pfcGetTriggerQuick ($pt$ $Head $PtBody)) 
      (fcEvalLHS $Body $Support) 
      (fail))); ;  a backward trigger(?) ('$bt$') was just added with head and Body and support Support
; ;  find any '$pt$'(s) with unifying heads and add the instantied '$bt$' body.

  (= 
    (pfcBtPtCombine $_ $_ $_) 
    (set-det))


  (= 
    (pfcGetTriggerQuick $Trigger) 
    (or 
      (each-then 
        (get-atoms  &self 
          (= $Trigger true)) True) 
      (pfc-call $Trigger)))

  (= 
    (pfcCallSystem $Trigger) 
    (pfc-call $Trigger))

; ; 
; ; 
; ;  predicates for manipulating action traces.
; ; 


  (= 
    (pfcAddActionTrace $Action $Support) 
    (pfcAddSupport 
      (pfcAction $Action) $Support)); adds an action trace and it''s support.



  (= 
    (pfcRemActionTrace (pfcAction $A)) 
    (, 
      (fcUndoMethod $A $UndoMethod) 
      (pfcCallSystem $UndoMethod) 
      (set-det)))


; ; 
; ;  predicates to remove pfc facts, triggers, action traces, and queue items
; ;  from the database.
; ; 


  (= 
    (pfcRetract $X) 
    (, 
      (pfcType $X $Type) 
      (pfcRetractType $Type $X) 
      (set-det))); ;  retract an arbitrary thing.
                       


  (= 
    (pfcRetractType 
      (fact $_) $X) 
    (if-then-else 
      (pfcAddDbToHead $X $X2) 
      (remove-atom  &self $X2) 
      (remove-atom  &self $X))); ;  db 


  (= 
    (pfcRetractType 
      (rule $_) $X) 
    (if-then-else 
      (pfcAddDbToHead $X $X2) 
      (remove-atom  &self $X2) 
      (remove-atom  &self $X))); ;  db  


  (= 
    (pfcRetractType 
      (trigger $Pos) $X) 
    (if-then-else 
      (remove-atom  &self $X) 
      (unFc $X) 
      (pfcWarn "Trigger(~p) not found to retract: ~p" 
        (:: $Pos $X))))

  (= 
    (pfcRetractType action $X) 
    (pfcRemActionTrace $X))
  

; ;  pfcAddType1(X) adds item X to some database


  (= 
    (pfcAddType1 $X) 
    (, 
      (pfcType $X $Type) 
      (pfcAddDbToHead $X $X2) 
      (pfcAddType $Type $X2))); what type of X do we have?
; call the appropriate predicate.



  (= 
    (pfcAddType 
      (fact $Type) $X) 
    (, 
      (pfcUnique 
        (fact $Type) $X) 
      (add-atom  &self $X) 
      (set-det)))
  (= 
    (pfcAddType 
      (rule $Type) $X) 
    (, 
      (pfcUnique 
        (rule $Type) $X) 
      (add-atom  &self $X) 
      (set-det)))
  (= 
    (pfcAddType 
      (trigger $Pos) $X) 
    (if-then-else 
      (pfcUnique 
        (trigger $Pos) $X) 
      (add-atom  &self $X) 
      (, 
        (pfcWarn (not-pfcUnique $X)) 
        (add-atom  &self $X))))
   
  (= 
    (pfcAddType action $Action) 
    (set-det))


 

; pfcWithdraw/1  withdraws any "direct" support for P.
; If a list, iterates down the list

  (= 
    (pfcWithdraw $P) 
    (, 
      (is-list $P) 
      (set-det) 
      (my-maplist pfcWithdraw $P)))
  (= 
    (pfcWithdraw $P) 
    (, 
      (matches-why-UU $UU) 
      (pfcWithdraw $P $UU)))
; ;  pfcWithdraw(P,S) removes support S from P and checks to see if P is still supported.
; ;  If it is not, then the fact is retractred from the database and any support
; ;  relationships it participated in removed.
  (= 
    (pfcWithdraw $P $S) 
    (, 
      (pfcGetSupport $P $S) 
      (matterialize-support-term $S $Sup) 
      (pfcTraceMsg '    Withdrawing direct support: ~p   
   From: ~p~n' 
        (:: $Sup $P)) 
      (if-then-else 
        (pfcRemOneSupportOrQuietlyFail $P $S) 
        (pfcTraceMsg '    Success removing support: ~p   
   From: ~p~n' 
          (:: $Sup $P)) 
        (pfcWarn "pfcRemOneSupport/2 Could not find support ~p thus\n    Did not pfcRemOneSupport: ~p" 
          (:: $Sup $P))) 
      (removeIfUnsupported $P))); pfcDebug(pfcPrintf("removing support ~p from ~p",[S,P])),


  (= 
    (pfcWithdraw $P $S) 
    (, 
      (matterialize-support-term $S $Sup) 
      (pfcTraceMsg '    No support matching: ~p   
   For: ~p~n' 
        (:: $Sup $P)) 
      (set-det) 
      (removeIfUnsupported $P)))

; pfcRetractAll/1  withdraws any "direct" and "indirect" support for P.
; If a list, iterates down the list

  (= 
    (pfcRetractAll $P) 
    (, 
      (is-list $P) 
      (set-det) 
      (my-maplist pfcRetractAll $P)))
  (= 
    (pfcRetractAll $P) 
    (, 
      (matches-why-UU $UU) 
      (pfcRetractAll $P $UU)))

; ;  pfcRetractAll(P,S) removes support S from P and checks to see if P is still supported.
; ;  If it is not, then the fact is retreactred from the database and any support
; ;  relationships it participated in removed.

  (= 
    (pfcRetractAll $Fact $S) 
    (, 
      (control-arg-types $Fact $Fixed) 
      (set-det) 
      (pfcRetractAll $Fixed $S)))
  (= 
    (pfcRetractAll $P $S) 
    (, 
      (not (not (pfcWithdraw $P $S))) 
      (fail)))
  (= 
    (pfcRetractAll $P $S) 
    (, 
      (pfcGetSupport $P 
        (, $P2 $_)) 
      (pfcType $P2 
        (fact $_)) 
      (pfcSupportedBy $P2 $S $How) 
      (pfcRetractAll $P2) 
      (not (fcSupported $P)) 
      (set-det) 
      (fcUndo $P)))
  (= 
    (pfcRetractAll $P $S) 
    (, 
      (pfcGetSupport $P 
        (, $_ $T)) 
      (pfcGetSupport $T 
        (, $P2 $_)) 
      (pfcSupportedBy $P2 $S $How) 
      (pfcType $P2 
        (fact $_)) 
      (pfcRetractAll $P2) 
      (not (fcSupported $P)) 
      (set-det) 
      (fcUndo $P)))
  (= 
    (pfcRetractAll $P $S) 
    (, 
      (fcSupported $P) 
      (pfcGetSupport $P 
        (, $P2 $_)) 
      (pfcSupportedBy $P2 $S $How) 
      (pfcType $P2 
        (rule $_)) 
      (pfcRetractAll $P2) 
      (not (fcSupported $P)) 
      (fcUndo $P) 
      (set-det)))
  (= 
    (pfcRetractAll $P $S0) 
    (, 
      (removeIfUnsupported $P) 
      (fail)))
  (= 
    (pfcRetractAll  $_ $_) True)



  (= 
    (pfcSupportedBy $P $S $How) 
    (, 
      (pfcGetSupport $P 
        (, $F $T)) 
      (if-then-else 
        (pfcSupportedBy $F $S $_) 
        (= $How $F) 
        (pfcSupportedBy $T $S $How))))
   
  (= 
    (pfcSupportedBy $P $S $How) 
    (, 
      (= $P $S) 
      (= $How $S)))  


  (= 
    (pfcRetractAll-v2 $P $S0) 
    (, 
      (not (not (pfcWithdraw $P $S0))) 
      (pfcGetSupport $P 
        (, $S $RemoveIfTrigger)) 
      (matterialize-support-term 
        (, $S $RemoveIfTrigger) $Sup) 
      (pfcTraceMsg '    Removing support: ~p   
   From: ~p~n' 
        (:: $Sup $P)) 
      (if-then-else 
        (pfcRemOneSupportOrQuietlyFail $P 
          (, $S $RemoveIfTrigger)) 
        (pfcTraceMsg '    Success removing support: ~p   
   From: ~p~n' 
          (:: $Sup $P)) 
        (pfcWarn "pfcRemOneSupport/2 Could not find support ~p thus\n    Did not yet pfcRetractAll_v2: ~p" 
          (:: $Sup $P))) 
      (pfcRetractAll-v2 $S $S0) 
      (fail))); pfcDebug(pfcPrintf("removing support ~p from ~p",[S,P])),


  (= 
    (pfcRetractAll-v2 $P $_) 
    (removeIfUnsupported $P))

; pfcRemove/1 is the user''s interface - it withdraws user support for P.
;
; pfcRemove is like pfcRetractAll, but if P is still in the DB after removing the
; user's support, it is retracted by more forceful means (e.g. pfcBlast).
;

  (= 
    (pfcRemove $Fact) 
    (, 
      (control-arg-types $Fact $Fixed) 
      (set-det) 
      (pfcRemove $Fixed)))
  (= 
    (pfcRemove $P) 
    (if-then-else 
      (, 
        (pfcRetractAll $P) 
        (pfc-call $P)) 
      (pfcBlast $P) True))


; ;  pfcBlast(+F) is det
;
; retracts fact F from the DB and removes any dependent facts 
;


  (= 
    (pfcBlast $F) 
    (, 
      (pfcRemoveSupports $F) 
      (fcUndo $F)))


; removes any remaining supports for fact F, complaining as it goes.


  (= 
    (pfcRemoveSupports $F) 
    (, 
      (pfcRemOneSupport $F $S) 
      (pfcWarn "~p was still supported by ~p (but no longer)" 
        (:: $F $S)) 
      (fail)))
  (= 
    (pfcRemoveSupports  $_) True)


  (= 
    (pfcRemoveSupportsQuietly $F) 
    (, 
      (pfcRemOneSupport $F $_) 
      (fail)))
  (= 
    (pfcRemoveSupportsQuietly  $_) True)

; fcUndo(X) undoes X.



  (= 
    (fcUndo (pfcAction $A)) 
    (, 
      (set-det) 
      (pfcRemActionTrace (pfcAction $A)))); undo an action by finding a method and successfully executing it.


  (= 
    (fcUndo ($pt$ $Head $Body)) 
    (, 
      (set-det) 
      (if-then-else 
        (remove-atom  &self 
          ($pt$  $Head $Body)) 
        (unFc ($pt$ $Head $Body)) 
        (pfcWarn "Trigger not found to retract: ~p" 
          (:: ($pt$ $Head $Body))))))/*Key,*/
; undo a positive trigger(+).
;
/*Key,*/


  (= 
    (fcUndo ($nt$ $Head $Condition $Body)) 
    (, 
      (set-det) 
      (if-then-else 
        (remove-atom  &self 
          ($nt$  $Head $Condition $Body)) 
        (unFc ($nt$ $Head $Condition $Body)) 
        (pfcWarn "Trigger not found to retract: ~p" 
          (:: ($nt$ $Head $Condition $Body)))))); undo a negative trigger(-).


  (= 
    (fcUndo $Fact) 
    (, 
      (remove-atom  &self $Fact) 
      (pfcTraceRem $Fact) 
      (unFc $Fact))); undo a random fact, printing out the trace, if relevant.

  

; ;  unFc(P) is det.
;
; unFc(P) "un-forward-chains" from fact f.  That is, fact F has just
; been removed from the database, so remove all dependant relations it
; participates in and check the things that they support to see if they
; should stayu in the database or should also be removed.



  (= 
    (unFc $F) 
    (, 
      (pfcRetractDependantRelations $F) 
      (unFc1 $F)))


  (= 
    (unFc1 $F) 
    (, 
      (pfcUnFcCheckTriggers $F) 
      (pfcRun))); is this really the right place for pfcRun<?




  (= 
    (pfcUnFcCheckTriggers $F) 
    (, 
      (pfcType $F 
        (fact $_)) 
      (copy-term $F $Fcopy) 
      (pfcCallSystem ($nt$ $Fcopy $Condition $Action)) 
      (not (pfcCallSystem $Condition)) 
      (fcEvalLHS $Action 
        (, 
          (not $F) 
          ($nt$ $F $Condition $Action))) 
      (fail)))
  (= 
    (pfcUnFcCheckTriggers  $_) True)


  (= 
    (pfcRetractDependantRelations $Fact) 
    (, 
      (pfcType $Fact $Type) 
      (if-then-else 
        (= $Type 
          (trigger $Pos)) 
        (pfcRemOneSupport $P 
          (, $_ $Fact)) 
        (pfcRemOneSupportOrQuietlyFail $P 
          (, $Fact $_))) 
      (removeIfUnsupported $P) 
      (fail)))
  (= 
    (pfcRetractDependantRelations  $_) True)



; ;  removeIfUnsupported(+P) checks to see if P is supported and removes
; ;  it from the DB if it is not.


  (= 
    (removeIfUnsupported $P) 
    (if-then-else 
      (fcSupported $P) 
      (pfcTraceMsg (fcSupported $P)) 
      (fcUndo $P)))


; ;  fcSupported(+P) succeeds if P is "supported". What this means
; ;  depends on the TMS mode selected.


  (= 
    (fcSupported $P) 
    (, 
      (must (fcTmsMode $Mode)) 
      (supported $Mode $P)))


  (= 
    (supported local $P) 
    (, 
      (set-det) 
      (pfcGetSupport $P $_)))
  (= 
    (supported cycles $P) 
    (, 
      (set-det) 
      (wellFounded $P)))
  (= 
    (supported  $_ $P) True)


; ; 
; ;  a fact is well founded if it is supported by the user
; ;  or by a set of facts and a rules, all of which are well founded.
; ; 


  (= 
    (wellFounded $Fact) 
    (wf $Fact Nil))


  (= 
    (wf $F $_) 
    (, 
      (or 
        (axiom $F) 
        (assumption $F)) 
      (set-det))); supported by user (axiom) or an "absent" fact (assumption).


  (= 
    (wf $F $Descendants) 
    (, 
      (not (memberchk $F $Descendants)) 
      (supports $F $Supporters) 
      (wflist $Supporters 
        (Cons  $F $Descendants)) 
      (set-det))); first make sure we aren't in a loop.
; find a justification.
; all of whose members are well founded.


; ;  wflist(L) simply maps wf over the list.


  (= 
    (wflist  () $_) True)
  (= 
    (wflist 
      (Cons  $X $Rest) $L) 
    (, 
      (wf $X $L) 
      (wflist $Rest $L)))



; supports(+F,-ListofSupporters) where ListOfSupports is a list of the
; supports for one justification for fact F -- i.e. a list of facts which,
; together allow one to deduce F.  One of the facts will typically be a rule.
; The supports for a user-defined fact are: [user].


  (= 
    (supports $F 
      (Cons  $Fact $MoreFacts)) 
    (, 
      (pfcGetSupport $F 
        (, $Fact $Trigger)) 
      (triggerSupports $Trigger $MoreFacts)))


  (= 
    (triggerSupports $U Nil) 
    (, 
      (axiomatic-supporter $U) 
      (set-det)))

  (= 
    (triggerSupports $Trigger $AllSupport) 
    (or 
      (each-then 
        (triggerSupports1 $Trigger $AllSupport) True) 
      (triggerSupports2 $Trigger $AllSupport)))


  (= 
    (triggerSupports1 $Trigger $AllSupport) 
    (, 
      (pfcGetSupport $Trigger 
        (, $Fact $AnotherTrigger)) 
      (or 
        (each-then 
          (triggerSupports $AnotherTrigger $MoreFacts) True) 
        (= $MoreFacts 
          (:: $AnotherTrigger))) 
      (= 
        (Cons  $Fact $MoreFacts) $AllSupport)))


  (= 
    (triggerSupports2 $Trigger $AllSupport) 
    (, 
      (fail) 
      (pfcGetSupport $Trigger 
        (, $Fact $AnotherTrigger)) 
      (or 
        (each-then 
          (triggerSupports $AnotherTrigger $MoreFacts) True) 
        (= $MoreFacts 
          (:: $AnotherTrigger))) 
      (= 
        (Cons  $Fact $MoreFacts) $AllSupport)))


  (= 
    (axiomatic-supporter $Var) 
    (, 
      (is-ftVar $Var) 
      (set-det) 
      (fail)))
  (= 
    (axiomatic_supporter  
      (is_ftVar  $_)) True)
  (= 
    (axiomatic_supporter  
      (clause_u  $_)) True)
  (= 
    (axiomatic_supporter  
      (user  $_)) True)
  (= 
    (axiomatic-supporter $U) 
    (, 
      (is-file-ref $U) 
      (set-det)))
  (= 
    (axiomatic-supporter ax) 
    (set-det))


  (= 
    (is-file-ref $A) 
    (, 
      (compound $A) 
      (= $A 
        (mfl4 $VarNameZ $_ $_ $_))))


  (= 
    (triggerSupports $_ $Var 
      (:: (is-ftVar $Var))) 
    (, 
      (is-ftVar $Var) 
      (set-det)))
  (= 
    (triggerSupports $_ $U Nil) 
    (, 
      (axiomatic-supporter $U) 
      (set-det)))
  (= 
    (triggerSupports $FactIn $Trigger $OUT) 
    (or 
      (each-then 
        (pfcGetSupport $Trigger 
          (, $Fact $AnotherTrigger)) 
        (, 
          (triggerSupports $Fact $AnotherTrigger $MoreFacts) 
          (= $OUT 
            (Cons  $Fact $MoreFacts)))) 
      (triggerSupports1 $FactIn $Trigger $OUT)))


  (= 
    (triggerSupports1 $_ $X 
      (:: $X)) 
    (may-cheat))

  (= may_cheat 
    (empty))



; ; 
; ; 
; ;  pfcFwd(X) forward chains from a fact or a list of facts X.
; ; 

  (= 
    (pfcFwd $Fact) 
    (, 
      (control-arg-types $Fact $Fixed) 
      (set-det) 
      (pfcFwd $Fixed)))
  (= 
    (pfcFwd $Fact) 
    (if-then-else 
      (is-list $List) 
      (my-maplist pfcFwd1 $List) 
      (pfcFwd1 $Fact)))

; fc1(+P) forward chains for a single fact.



  (= 
    (pfcFwd1 $Fact) 
    (, 
      (or 
        (each-then 
          (fc-rule-check $Fact) True) True) 
      (copy-term $Fact $F) 
      (ignore (fcpt $Fact $F)) 
      (ignore (fcnt $Fact $F)))); check positive triggers
; check negative triggers



; ; 
; ;  fc_rule_check(P) does some special, built in forward chaining if P is 
; ;  a rule.
; ;  


  (= 
    (fc-rule-check (:::: $Name (==> $P $Q))) 
    (, 
      (set-det) 
      (processRule $P $Q 
        (:::: $Name 
          (==> $P $Q)))))
  (= 
    (fc-rule-check (:::: $Name (<==> $P $Q))) 
    (, 
      (set-det) 
      (processRule $P $Q 
        (:::: $Name 
          (<==> $P $Q))) 
      (processRule $Q $P 
        (:::: $Name 
          (<==> $P $Q)))))



  (= 
    (fc-rule-check (==> $P $Q)) 
    (, 
      (set-det) 
      (processRule $P $Q 
        (==> $P $Q))))
  (= 
    (fc-rule-check (<==> $P $Q)) 
    (, 
      (set-det) 
      (processRule $P $Q 
        (<==> $P $Q)) 
      (processRule $Q $P 
        (<==> $P $Q))))

  (= 
    (fc-rule-check (<- $P $Q)) 
    (, 
      (set-det) 
      (pfcDefineBcRule $P $Q 
        (<- $P $Q))))

  (= 
    (fc_rule_check  $_) True)



  (= 
    (fcpt $Fact $F) 
    (, 
      (pfcGetTriggerQuick ($pt$ $F $Body)) 
      (pfcTraceMsg '      Found positive trigger(+): ~p~n       body: ~p~n' 
        (:: $F $Body)) 
      (pfcGetSupport 
        ($pt$ $F $Body) $Support) 
      (with-current-why $Support 
        (with-current-why $Fact 
          (fcEvalLHS $Body 
            (, $Fact 
              ($pt$ $F $Body))))) 
      (fail)));fbugio(pfcGetSupport('$pt$'(F,Body),Support)),


;fcpt(Fact,F) :- 
;  pfcGetTriggerQuick('$pt$'(presently(F),Body)),
;  fcEvalLHS(Body,(presently(Fact),'$pt$'(presently(F),Body))),
;  fail.

  (= 
    (fcpt  $_ $_) True)


  (= 
    (fcnt $Fact $F) 
    (, 
      (pfc-spft $X $_ 
        ($nt$ $F $Condition $Body)) 
      (pfcCallSystem $Condition) 
      (pfcRem-S $X 
        (, $_ 
          ($nt$ $F $Condition $Body))) 
      (fail)))
  (= 
    (fcnt  $_ $_) True)


; ;  pfcRem_S(P,S) removes support S from P and checks to see if P is still supported.
; ;  If it is not, then the fact is retreactred from the database and any support
; ;  relationships it participated in removed.

  (= 
    (pfcRem-S $P $S) 
    (if-then-else 
      (, 
        (pfcTraceMsg '    Removing support: ~p from ~p~n' 
          (:: $S $P)) 
        (pfcRemOneSupport $P $S)) 
      (removeIfUnsupported $P) 
      (pfcWarn "pfcRem_S/2 Could not find support ~p to remove from fact ~p" 
        (:: $S $P)))); pfcDebug(pfcPrintf("removing support ~p from ~p",[S,P])),




; ;  pfcDefineBcRule(+Head,+Body,+ParentRule) 
;
; defines a backward
; chaining rule and adds the corresponding '$bt$' triggers to the database.
;


  (= 
    (pfcDefineBcRule $Head $Body $ParentRule) 
    (, 
      (not (pfcLiteral $Head)) 
      (pfcWarn "Malformed backward chaining rule.  ~p not atomic literal." 
        (:: $Head)) 
      (pfcError "caused by rule: ~p" 
        (:: $ParentRule)) 
      (set-det) 
      (fail)))

  (= 
    (pfcDefineBcRule $Head $Body $ParentRule) 
    (, 
      (copy-term $ParentRule $ParentRuleCopy) 
      (buildRhs $Head $Rhs) 
      (current-why-U $USER) 
      (pfcForEach 
        (pfc-nf $Body $Lhs) 
        (, 
          (buildTrigger $Lhs 
            (rhs $Rhs) $Trigger) 
          (pfcAdd 
            ($bt$ $Head $Trigger) 
            (, $ParentRuleCopy $USER)))))); @TODO REVIEW _U


  (= 
    (get-bc-clause $Head 
      (= $HeadC $BodyC)) 
    (get-bc-clause $Head $HeadC $BodyC))

  (= 
    (get-bc-clause $HeadIn 
      (~ $HeadC) $Body) 
    (, 
      (compound $HeadIn) 
      (= $HeadIn 
        (~ $Head)) 
      (set-det) 
      (= $Body 
        (, 
          (awc) 
          (if-then-else 
            (nonvar $HeadC) 
            (, 
              (= $HeadC $Head) 
              (set-det)) 
            (= $HeadC $Head)) 
          (pfc-bc-and-with-pfc (~ $Head))))))
  (= 
    (get-bc-clause $Head $Head $Body) 
    (= $Body 
      (, 
        (awc) 
        (set-det) 
        (pfc-bc-and-with-pfc $Head)))); ; :- is_ftNonvar(Head).



  (thread-initialization (nb-setval $pfc-current-choice Nil))


  (= 
    (push-current-choice) 
    (, 
      (current-prolog-flag pfc-support-cut False) 
      (set-det)))
  (= 
    (push-current-choice) 
    (, 
      (prolog-current-choice $CP) 
      (push-current-choice $CP) 
      (set-det)))
  (= 
    (push-current-choice $CP) 
    (if-then-else 
      (nb-current $pfc-current-choice $Was) 
      (b-setval $pfc-current-choice 
        (Cons  $CP $Was)) 
      (b-setval $pfc-current-choice 
        (:: $CP))))
 

  (= 
    (cut-c) 
    (, 
      (current-prolog-flag pfc-support-cut False) 
      (set-det)))
  (= 
    (cut-c) 
    (, 
      (must (nb-current $pfc-current-choice (Cons  $CP $WAS))) 
      (prolog-cut-to $CP)))


; ; 
; ; 
; ;  eval something on the LHS of a rule.
; ; 

 

  (= 
    (fcEvalLHS 
      (if-then $Test $Body) $Support) 
    (, 
      (set-det) 
      (pfcDoAll (if-then (pfcCallSystem $Test) (fcEvalLHS $Body $Support))) 
      (set-det)))

  (= 
    (fcEvalLHS 
      (each-then $Test $Body) $Support) 
    (, 
      (set-det) 
      (pfcDoAll (each-then (pfcCallSystem $Test) (fcEvalLHS $Body $Support)))))

  (= 
    (fcEvalLHS 
      (rhs $X) $Support) 
    (, 
      (set-det) 
      (pfcDoAll (pfc-eval-rhs $X $Support)) 
      (set-det)))

  (= 
    (fcEvalLHS $X $Support) 
    (, 
      (pfcType $X 
        (trigger $Pos)) 
      (set-det) 
      (pfcAddTrigger $X $Support) 
      (set-det)))

;fcEvalLHS(snip(X),Support) :- 
;  snip(Support),
;  fcEvalLHS(X,Support).

  (= 
    (fcEvalLHS $X $_) 
    (pfcWarn "Unrecognized item found in trigger body, namely ~p." 
      (:: $X)))


; ; 
; ;  eval something on the RHS of a rule.
; ; 


  (= 
    (pfc-eval-rhs Nil $_) 
    (set-det))
  (= 
    (pfc-eval-rhs 
      (Cons  $Head $Tail) $Support) 
    (, 
      (pfc-eval-rhs1 $Head $Support) 
      (pfc-eval-rhs $Tail $Support)))



  (= 
    (pfc-eval-rhs1 $Fact $S) 
    (, 
      (control-arg-types $Fact $Fixed) 
      (set-det) 
      (pfc-eval-rhs1 $Fixed $S)))

  (= 
    (pfc-eval-rhs1 
      {$Action } $Support) 
    (, 
      (set-det) 
      (fcEvalAction $Action $Support))); evaluable MeTTa code.


  (= 
    (pfc-eval-rhs1 $P $Support) 
    (, 
      (pfcNegatedLiteral $P) 
      (set-det) 
      (pfcWithdraw $P))); predicate to remove.


  (= 
    (pfc-eval-rhs1 
      (Cons  $X $Xrest) $Support) 
    (, 
      (set-det) 
      (pfc-eval-rhs 
        (Cons  $X $Xrest) $Support))); embedded sublist.


  (= 
    (pfc-eval-rhs1 $Assertion $Support) 
    (or 
      (each-then 
        (must (pfcPost1 $Assertion $Support)) True) 
      (pfcWarn "Malformed rhs of a rule: ~p" 
        (:: $Assertion)))); an assertion to be added.



; ; 
; ;  evaluate an action found on the rhs of a rule.
; ; 


  (= 
    (fcEvalAction $Action $Support) 
    (, 
      (pfcCallSystem $Action) 
      (if-then-else 
        (undoable $Action) 
        (pfcAddActionTrace $Action $Support) True)))


; ; 
; ;  
; ; 


  (= 
    (trigger-trigger $Trigger $Body $Support) 
    (trigger-trigger1 $Trigger $Body))
  (= 
    (trigger_trigger  $_ $_ $_) True)


;trigger_trigger1(presently(Trigger),Body) :-
;  !,
;  copy_term(Trigger,TriggerCopy),
;  pfc_call(Trigger),
;  fcEvalLHS(Body,(presently(Trigger),'$pt$'(presently(TriggerCopy),Body))),
;  fail.


  (= 
    (trigger-trigger1 $Trigger $Body) 
    (, 
      (copy-term $Trigger $TriggerCopy) 
      (pfc-call $Trigger) 
      (with-current-why $Trigger 
        (fcEvalLHS $Body 
          (, $Trigger 
            ($pt$ $TriggerCopy $Body)))) 
      (fail)))


; ;  pfc_call(F) is nondet.
;
; pfc_call(F) is true iff F is a fact available for forward chaining.
; Note that this has the side effect of catching unsupported facts and
; assigning them support from God.
;

;pfc_call(F) :- var(F), !, pfc_call(F).

  (= 
    (pfc-call $P) 
    (, 
      (var $P) 
      (set-det) 
      (pfcFact $P)))
  (= 
    (pfc-call $P) 
    (, 
      (not (callable $P)) 
      (throw (pfc-call $P))))
  (= 
    (pfc-call (set-det)) 
    (, 
      (set-det) 
      (cut-c)))
  (= 
    (pfc-call True) 
    (set-det))
  (= 
    (pfc-call (if-then-else $A $B $C)) 
    (if-then-else 
      (, 
        (set-det) 
        (pfc-call $A)) 
      (pfc-call $B) 
      (pfc-call $C)))
  (= 
    (pfc-call (or (each-then $A $B) $C)) 
    (or 
      (each-then 
        (, 
          (set-det) 
          (pfc-call $A)) 
        (pfc-call $B)) 
      (pfc-call $C)))
  (= 
    (pfc-call (if-then $A $B)) 
    (if-then 
      (, 
        (set-det) 
        (pfc-call $A)) 
      (pfc-call $B)))
  (= 
    (pfc-call (each-then $A $B)) 
    (each-then 
      (, 
        (set-det) 
        (pfc-call $A)) 
      (pfc-call $B)))
  (= 
    (pfc-call (, $A $B)) 
    (, 
      (set-det) 
      (pfc-call $A) 
      (pfc-call $B)))
  (= 
    (pfc-call (or $A $B)) 
    (or 
      (, 
        (set-det) 
        (pfc-call $A)) 
      (pfc-call $B)))
  (= 
    (pfc-call (not $A)) 
    (, 
      (set-det) 
      (not (pfc-call $A))))
  (= 
    (pfc-call (is $A $B)) 
    (, 
      (set-det) 
      (is $A $B)))
  (= 
    (pfc-call (get-atoms  &self (= $A $B))) 
    (, 
      (set-det) 
      (get-atoms  &self 
        (= $A $B))))
  (= 
    (pfc-call (clause $A $B $Ref)) 
    (, 
      (set-det) 
      (clause $A $B $Ref)))
; we really need to check for system predicates as well.
; this is probably not advisable due to extreme inefficiency.
  (= 
    (pfc-call $P) 
    (, 
      ($bt$ $P $Trigger) 
      (pfcGetSupport 
        ($bt$ $P $Trigger) $S) 
      (fcEvalLHS $Trigger $S) 
      (fail))); trigger(?) any bc rules.
; @TODO REVIEW _U

;pfc_call(P) :- var(P), !, pfcFact(P).
  (= 
    (pfc-call $P) 
    (, 
      (predicate-property $P 
        (imported-from system)) 
      (set-det) 
      (call $P)))
  (= 
    (pfc-call $P) 
    (, 
      (predicate-property $P built-in) 
      (set-det) 
      (call $P)))
  (= 
    (pfc-call $P) 
    (, 
      (not (predicate-property $P $_)) 
      (functor $P $F $A) 
      (dynamic (/ $F $A)) 
      (set-det) 
      (call $P)))
  (= 
    (pfc-call $P) 
    (, 
      (not (predicate-property $P (number-of-clauses $_))) 
      (set-det) 
      (call $P)))
  (= 
    (pfc-call $P) 
    (setup-call-cleanup 
      (nb-current $pfc-current-choice $Was) 
      (, 
        (prolog-current-choice $CP) 
        (push-current-choice $CP) 
        (get-atoms  &self 
          (= $P $Condition)) 
        (pfc-call $Condition)) 
      (nb-setval $pfc-current-choice $Was)))
     

  (= 
    (undoable $A) 
    (fcUndoMethod $A $_))/*
pfc_call(P) :- 
  clause(P,true)*-> true ; (clause(P,Condition), Condition\==true,
     pfc_call(Condition)).
*/
; an action is undoable if there exists a method for undoing it.



  (= 
    (pfc-cache-bc $P) 
    (forall 
      ($bt$ $P $Trigger) 
      (forall 
        (pfcGetSupport 
          ($bt$ $P $Trigger) $S) 
        (fcEvalLHS $Trigger $S)))); trigger(?) any bc rules.
; @TODO REVIEW _U



; ; 
; ; 
; ;  defining fc rules 
; ; 

; ;  pfc_nf(+In,-Out) maps the LHR of a pfc rule In to one normal form 
; ;  Out.  It also does certain optimizations.  Backtracking into this
; ;  predicate will produce additional clauses.



  (= 
    (pfc-nf $LHS $List) 
    (, 
      (pfc-nf1 $LHS $List2) 
      (pfc-nf-negations $List2 $List)))


; ;  pfc_nf1(+In,-Out) maps the LHR of a pfc rule In to one normal form
; ;  Out.  Backtracking into this predicate will produce additional clauses.

; handle a variable.


  (= 
    (pfc-nf1 $P 
      (:: $P)) 
    (, 
      (var $P) 
      (set-det)))

; these next two rules are here for upward compatibility and will go 
; away eventually when the P/Condition form is no longer used anywhere.

  (= 
    (pfc-nf1 
      (/ $P $Cond) 
      (:: (/ (not $P) $Cond))) 
    (, 
      (pfcNegatedLiteral $P) 
      (set-det)))

  (= 
    (pfc-nf1 
      (/ $P $Cond) 
      (:: (/ $P $Cond))) 
    (, 
      (pfcLiteral $P) 
      (set-det)))

; ;  handle a negated form

  (= 
    (pfc-nf1 $NegTerm $NF) 
    (, 
      (pfc-unnegate $NegTerm $Term) 
      (set-det) 
      (pfc-nf1-negation $Term $NF)))

; ;  disjunction.

  (= 
    (pfc-nf1 
      (or $P $Q) $NF) 
    (, 
      (set-det) 
      (or 
        (pfc-nf1 $P $NF) 
        (pfc-nf1 $Q $NF))))


; ;  conjunction.

  (= 
    (pfc-nf1 
      (, $P $Q) $NF) 
    (, 
      (set-det) 
      (pfc-nf1 $P $NF1) 
      (pfc-nf1 $Q $NF2) 
      (append $NF1 $NF2 $NF)))

; ;  handle a random atom.

  (= 
    (pfc-nf1 $P 
      (:: $P)) 
    (, 
      (pfcLiteral $P) 
      (set-det)))

  (= 
    (pfc-nf1 $Term 
      (:: $Term)) 
    (pfcWarn "pfc_nf doesn''t know how to normalize ~p (accepting though)" 
      (:: $Term)))/*; ; ; shouln't we have something to catch the rest as errors?*/



; ;  pfc_nf1_negation(P,NF) is true if NF is the normal form of \+P.

  (= 
    (pfc-nf1-negation 
      (/ $P $Cond) 
      (:: (/ (not $P) $Cond))) 
    (set-det))

  (= 
    (pfc-nf1-negation 
      (or $P $Q) $NF) 
    (, 
      (set-det) 
      (pfc-nf1-negation $P $NFp) 
      (pfc-nf1-negation $Q $NFq) 
      (append $NFp $NFq $NF)))

  (= 
    (pfc-nf1-negation 
      (, $P $Q) $NF) 
    (or 
      (, 
        (set-det) 
        (pfc-nf1-negation $P $NF)) 
      (, 
        (pfc-nf1 $P $Pnf) 
        (pfc-nf1-negation $Q $Qnf) 
        (append $Pnf $Qnf $NF)))); this code is not correct! twf.


  (= 
    (pfc_nf1_negation  $P 
      ( (\+  $P))) True)


; ;  pfc_nf_negations(List2,List) sweeps through List2 to produce List,
; ;  changing ~{...} to {\+...}
; ; ; ? is this still needed? twf 3/16/90


  (= 
    (pfc-nf-negations $X $X) 
    (set-det))  ; I think not! twf 3/27/90

  (= 
    (pfc_nf_negations  () ()) True)

  (= 
    (pfc-nf-negations 
      (Cons  $H1 $T1) 
      (Cons  $H2 $T2)) 
    (, 
      (pfc-nf-negation $H1 $H2) 
      (pfc-nf-negations $T1 $T2)))

; Maybe \+ tilded_negation ?


  (= 
    (pfc-nf-negation $Form 
      { (not $X) }) 
    (, 
      (nonvar $Form) 
      (= $Form 
        (~ {$X })) 
      (set-det)))
  (= 
    (pfc-nf-negation $Form 
      { (not $X) }) 
    (, 
      (tilded-negation) 
      (nonvar $Form) 
      (= $Form 
        (- {$X })) 
      (set-det)))
  (= 
    (pfc-nf-negation $Form 
      { (not $X) }) 
    (, 
      (tilded-negation) 
      (nonvar $Form) 
      (= $Form 
        (not {$X })) 
      (set-det)))
  (= 
    (pfc_nf_negation  $X $X) True)



     ; ;  constrain_meta(+Lhs, ?Guard) is semidet.
     ;
     ; Creates a somewhat sane Guard.
     ;
     ; To turn this feature off...
     ; ?- set_MeTTa_flag(constrain_meta,false).  
     ;
     ;
     
  (= 
    (constrain-meta $_ $_) 
    (, 
      (current-prolog-flag constrain-meta False) 
      (set-det) 
      (fail)))
     ; FACT
     
  (= 
    (constrain-meta $P 
      (mpred-positive-fact $P)) 
    (, 
      (is-ftVar $P) 
      (set-det)))
     ; NEG chaining
     
  (= 
    (constrain-meta 
      (~ $P) $CP) 
    (, 
      (set-det) 
      (constrain-meta $P $CP)))
     
  (= 
    (constrain-meta 
      (not $P) $CP) 
    (, 
      (set-det) 
      (constrain-meta $P $CP)))
     ; FWD chaining
     
  (= 
    (constrain-meta 
      (==> $_ $Q) 
      (nonvar $Q)) 
    (, 
      (set-det) 
      (is-ftVar $Q)))
     ; EQV chaining
     
  (= 
    (constrain-meta 
      (<==> $P $Q) 
      (or 
        (nonvar $Q) 
        (nonvar $P))) 
    (, 
      (or 
        (is-ftVar $Q) 
        (is-ftVar $P)) 
      (set-det)))
     ; BWD chaining
     
  (= 
    (constrain-meta 
      (<- $Q $_) 
      (mpred-literal $Q)) 
    (, 
      (is-ftVar $Q) 
      (set-det)))
     
  (= 
    (constrain-meta 
      (<- $Q $_) $CQ) 
    (, 
      (set-det) 
      (constrain-meta $Q $CQ)))
     ; CWC chaining
     
  (= 
    (constrain-meta 
      (= $Q $_) 
      (mpred-literal $Q)) 
    (, 
      (is-ftVar $Q) 
      (set-det)))
     
  (= 
    (constrain-meta 
      (= $Q $_) $CQ) 
    (, 
      (set-det) 
      (constrain-meta $Q $CQ)))





     
  (= 
    (is-simple-lhs $ActN) 
    (, 
      (is-ftVar $ActN) 
      (set-det) 
      (fail)))
     
  (= 
    (is-simple-lhs (not $_)) 
    (, 
      (set-det) 
      (fail)))
     
  (= 
    (is-simple-lhs (~ $_)) 
    (, 
      (set-det) 
      (fail)))
     
  (= 
    (is-simple-lhs (/ $_ $_)) 
    (, 
      (set-det) 
      (fail)))
     
  (= 
    (is-simple-lhs (, $Lhs1 $Lhs2)) 
    (, 
      (set-det) 
      (is-simple-lhs $Lhs1) 
      (is-simple-lhs $Lhs2)))
     
  (= 
    (is-simple-lhs (or $Lhs1 $Lhs2)) 
    (, 
      (set-det) 
      (is-simple-lhs $Lhs1) 
      (is-simple-lhs $Lhs2)))
     
  (= 
    (is-simple-lhs $ActN) 
    (, 
      (is-active-lhs $ActN) 
      (set-det) 
      (fail)))
     
  (= 
    (is-simple-lhs (/ $Lhs1 $Lhs2)) 
    (, 
      (set-det) 
      (fail) 
      (is-simple-lhs $Lhs1) 
      (is-simple-lhs $Lhs2)))
     
  (= 
    (is_simple_lhs  $_) True)


     
  (= 
    (is-active-lhs $ActN) 
    (, 
      (var $ActN) 
      (set-det) 
      (fail)))
     
  (= 
    (is_active_lhs  !) True)
     
  (= 
    (is_active_lhs  cut_c) True)
     
  (= 
    (is_active_lhs  
      (actn  $Act)) True)
     
  (= 
    (is_active_lhs  
      {$Act }) True)
     
  (= 
    (is-active-lhs (/ $Lhs1 $Lhs2)) 
    (or 
      (, 
        (set-det) 
        (is-active-lhs $Lhs1)) 
      (is-active-lhs $Lhs2)))
     
  (= 
    (is-active-lhs (, $Lhs1 $Lhs2)) 
    (or 
      (, 
        (set-det) 
        (is-active-lhs $Lhs1)) 
      (is-active-lhs $Lhs2)))
     
  (= 
    (is-active-lhs (or $Lhs1 $Lhs2)) 
    (or 
      (, 
        (set-det) 
        (is-active-lhs $Lhs1)) 
      (is-active-lhs $Lhs2)))


     
  (= 
    (add-lhs-cond 
      (/ $Lhs1 $Cond) $Lhs2 
      (/ $Lhs1 
        (, $Cond $Lhs2))) 
    (set-det))
     
  (= 
    (add_lhs_cond  $Lhs1 $Lhs2 
      (/  $Lhs1 $Lhs2)) True)



; ; 
; ;  buildRhs(+Conjunction,-Rhs)
; ; 


  (= 
    (buildRhs $X 
      (:: $X)) 
    (, 
      (var $X) 
      (set-det)))

  (= 
    (buildRhs 
      (, $A $B) 
      (Cons  $A2 $Rest)) 
    (, 
      (set-det) 
      (pfcCompileRhsTerm $A $A2) 
      (buildRhs $B $Rest)))

  (= 
    (buildRhs $X 
      (:: $X2)) 
    (pfcCompileRhsTerm $X $X2))


  (= 
    (pfcCompileRhsTerm 
      (/ $P $C) 
      (= $P $C)) 
    (set-det))

  (= 
    (pfcCompileRhsTerm  $P $P) True)


; ;  pfc_unnegate(N,P) is true if N is a negated term and P is the term
; ;  with the negation operator stripped.


  (= 
    (pfc-unnegate $P $_) 
    (, 
      (var $P) 
      (set-det) 
      (fail)))
  (= 
    (pfc-unnegate 
      (~ $P) $P) 
    (not tilded-negation))
  (= 
    (pfc_unnegate  
      (-  $P) $P) True)
  (= 
    (pfc_unnegate  
      (\+  $P) $P) True)


  (= 
    (pfcNegatedLiteral $P) 
    (, 
      (callable $P) 
      (pfc-unnegate $P $Q) 
      (pfcPositiveLiteral $Q)))


  (= 
    (pfcLiteral $X) 
    (pfcNegatedLiteral $X))
  (= 
    (pfcLiteral $X) 
    (pfcPositiveLiteral $X))


  (= 
    (pfcPositiveLiteral $X) 
    (, 
      (callable $X) 
      (functor $X $F $_) 
      (not (pfcConnective $F))))


  (= 
    (pfcConnective  ;) True)
  (= 
    (pfcConnective  ,) True)
  (= 
    (pfcConnective  /) True)
  (= 
    (pfcConnective  |) True)
  (= 
    (pfcConnective  ==>) True)
  (= 
    (pfcConnective  <-) True)
  (= 
    (pfcConnective  <==>) True)

  (= 
    (pfcConnective  -) True)
  (= 
    (pfcConnective ~) 
    (not tilded-negation))
  (= 
    (pfcConnective  \+) True)


  (= 
    (is-implicitly-prolog $Callable) 
    (, 
      (not (callable $Callable)) 
      (set-det) 
      (fail)))
  (= 
    (is_implicitly_prolog  
      (is  $_ $_)) True)


  (= 
    (processRule $Lhs $Rhs $ParentRule) 
    (, 
      (copy-term $ParentRule $ParentRuleCopy) 
      (buildRhs $Rhs $Rhs2) 
      (current-why-U $USER) 
      (pfcForEach 
        (pfc-nf $Lhs $Lhs2) 
        (buildRule $Lhs2 
          (rhs $Rhs2) 
          (, $ParentRuleCopy $USER))))); @TODO REVIEW _U



  (= 
    (buildRule $Lhs $Rhs $Support) 
    (, 
      (buildTrigger $Lhs $Rhs $Trigger) 
      (fcEvalLHS $Trigger $Support)))


  (= 
    (buildTrigger  () $Consequent $Consequent) True)

  (= 
    (buildTrigger 
      (Cons  $Test $Triggers) $Consequent 
      (each-then $Test $X)) 
    (, 
      (is-implicitly-prolog $Test) 
      (set-det) 
      (buildTrigger $Triggers $Consequent $X)))

  (= 
    (buildTrigger 
      (Cons  $V $Triggers) $Consequent 
      ($pt$ $V $X)) 
    (, 
      (var $V) 
      (set-det) 
      (buildTrigger $Triggers $Consequent $X)))

  (= 
    (buildTrigger 
      (Cons  
        (/ $T1 $Test) $Triggers) $Consequent 
      ($nt$ $T2 $Test2 $X)) 
    (, 
      (pfc-unnegate $T1 $T2) 
      (set-det) 
      (buildNtTest $T2 $Test $Test2) 
      (buildTrigger $Triggers $Consequent $X)))

  (= 
    (buildTrigger 
      (Cons  $T1 $Triggers) $Consequent 
      ($nt$ $T2 $Test $X)) 
    (, 
      (pfc-unnegate $T1 $T2) 
      (set-det) 
      (buildNtTest $T2 True $Test) 
      (buildTrigger $Triggers $Consequent $X)))

  (= 
    (buildTrigger 
      (Cons  
        {$Test } $Triggers) $Consequent 
      (each-then $Test $X)) 
    (, 
      (set-det) 
      (buildTrigger $Triggers $Consequent $X)))

  (= 
    (buildTrigger 
      (Cons  
        (/ $T $Test) $Triggers) $Consequent 
      ($pt$ $T $X)) 
    (, 
      (set-det) 
      (buildTest $Test $Test2) 
      (buildTrigger 
        (Cons  
          {$Test2 } $Triggers) $Consequent $X)))


;buildTrigger([snip|Triggers],Consequent,snip(X)) :-
;  !,
;  buildTrigger(Triggers,Consequent,X).

  (= 
    (buildTrigger 
      (Cons  $T $Triggers) $Consequent 
      ($pt$ $T $X)) 
    (, 
      (set-det) 
      (buildTrigger $Triggers $Consequent $X)))

; ; 
; ;  buildNtTest(+,+,-).
; ; 
; ;  builds the test used in a negative trigger(-) ('$nt$'/3).  This test is a
; ;  conjunction of the check than no matching facts are in the db and any
; ;  additional test specified in the rule attached to this ~ term.
; ; 
     ;  tilded_negation.

  (= 
    (buildNtTest $T $Testin $Testout) 
    (, 
      (buildTest $Testin $Testmid) 
      (pfcConjoin 
        (pfc-call $T) $Testmid $Testout)))

  
; this just strips away any currly brackets.


  (= 
    (buildTest 
      {$Test } $Test) 
    (set-det))
  (= 
    (buildTest  $Test $Test) True)

; ; 


; ;  pfcType(+VALUE1, ?Type) is semidet.
;
; PFC Database Type.
;
;  simple typeing for Pfc objects
;



  (= 
    (pfcType $Var $Type) 
    (, 
      (var $Var) 
      (set-det) 
      (= $Type 
        (fact $FT))))
  (= 
    (pfcType 
      (with_self  $_ $X) $Type) 
    (, 
      (set-det) 
      (pfcType $X $Type)))
  (= 
    (pfcType 
      (~ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (fact $FT))))
  (= 
    (pfcType 
      (==> $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (rule fwd))))
  (= 
    (pfcType 
      (==> $X) $Type) 
    (, 
      (set-det) 
      (pfcType $X $Type) 
      (pfcWarn (pfcType (==> $X) $Type))))
  (= 
    (pfcType 
      (<==> $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (rule <==>))))
  (= 
    (pfcType 
      (<- $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (rule bwc))))
  (= 
    (pfcType 
      (= $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (rule cwc))))
  (= 
    (pfcType 
      ($pt$ $_ $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (trigger +))))
  (= 
    (pfcType 
      ($pt$ $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (trigger +))))
  (= 
    (pfcType 
      ($nt$ $_ $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (trigger -))))
  (= 
    (pfcType 
      ($bt$ $_ $_) $Type) 
    (, 
      (set-det) 
      (= $Type 
        (trigger ?))))
  (= 
    (pfcType 
      (pfcAction $_) $Type) 
    (, 
      (set-det) 
      (= $Type action)))
  (= 
    (pfcType 
      (:::: $_ $X) $Type) 
    (, 
      (set-det) 
      (pfcType $X $Type)))
  (= 
    (pfcType $_ 
      (fact $FT)) 
    (set-det));  if it''s not one of the above, it must_ex be a fact!



  (= 
    (pfcAssert $P $Support) 
    (, 
      (or 
        (pfc-clause $P) 
        (add-atom  &self $P)) 
      (set-det) 
      (pfcAddSupport $P $Support)))


  (= 
    (pfcAsserta $P $Support) 
    (, 
      (or 
        (pfc-clause $P) 
        (asserta $P)) 
      (set-det) 
      (pfcAddSupport $P $Support)))


  (= 
    (pfcAssertz $P $Support) 
    (, 
      (or 
        (pfc-clause $P) 
        (assertz $P)) 
      (set-det) 
      (pfcAddSupport $P $Support)))


  (= 
    (pfc-clause (= $Head $Body)) 
    (, 
      (set-det) 
      (copy-term $Head $Head_copy) 
      (copy-term $Body $Body_copy) 
      (get-atoms  &self 
        (= $Head $Body)) 
      (variant $Head $Head_copy) 
      (variant $Body $Body_copy)))

  (= 
    (pfc-clause $Head) 
    (, 
      (copy-term $Head $Head_copy) 
      (get-atoms  &self 
        (= $Head_copy true)) 
      (variant $Head $Head_copy))); find a unit clause identical to Head by finding one which unifies,
; and then checking to see if it is identical



  (= 
    (pfcForEach $Binder $Body) 
    (, $Binder 
      (pfcdo $Body) 
      (fail)))
  (= 
    (pfcForEach  $_ $_) True)

; pfcdo(X) executes X once and always succeeds.

  (= 
    (pfcdo $X) 
    (, $X 
      (set-det)))
  (= 
    (pfcdo  $_) True)


; ;  pfcUnion(L1,L2,L3) - true if set L3 is the result of appending sets
; ;  L1 and L2 where sets are represented as simple lists.


  (= 
    (pfcUnion  () $L $L) True)
  (= 
    (pfcUnion 
      (Cons  $Head $Tail) $L $Tail2) 
    (, 
      (memberchk $Head $L) 
      (set-det) 
      (pfcUnion $Tail $L $Tail2)))
  (= 
    (pfcUnion 
      (Cons  $Head $Tail) $L 
      (Cons  $Head $Tail2)) 
    (pfcUnion $Tail $L $Tail2))


; ;  pfcConjoin(+Conjunct1,+Conjunct2,?Conjunction).
; ;  arg3 is a simplified expression representing the conjunction of
; ;  args 1 and 2.


  (= 
    (pfcConjoin True $X $X) 
    (set-det))
  (= 
    (pfcConjoin $X True $X) 
    (set-det))
  (= 
    (pfcConjoin  $C1 $C2 
      (,  $C1 $C2)) True)


;   File   : pfcdb.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Author :  Dave Matuszek, dave@prc.unisys.com
;   Author :  Dan Corpron
;   Updated: 10/11/87, ...
;   Purpose: predicates to manipulate a pfc database (e.g. save,
; ; 	restore, reset, etc.0

; pfcDatabaseTerm(P/A) is true iff P/A is something that pfc adds to
; the database and should not be present in an empty pfc database


  (= 
    (pfcDatabaseTerm  
      (/  $spft$ 3)) True)
  (= 
    (pfcDatabaseTerm  
      (/  $pt$ 2)) True)
  (= 
    (pfcDatabaseTerm  
      (/  $bt$ 2)) True)
  (= 
    (pfcDatabaseTerm  
      (/  $nt$ 3)) True)
  (= 
    (pfcDatabaseTerm  
      (/  ==> 2)) True)
  (= 
    (pfcDatabaseTerm  
      (/  <==> 2)) True)
  (= 
    (pfcDatabaseTerm  
      (/  <- 2)) True)
  (= 
    (pfcDatabaseTerm  
      (/  pfcQueue 1)) True)

; removes all forward chaining rules and justifications from db.


  (= 
    (pfcReset) 
    (, 
      (pfc-spft $P $F $Trigger) 
      (pfcRetractOrWarn $P) 
      (pfcRetractOrWarn ($spft$ $P $F $Trigger)) 
      (fail)))
  (= 
    (pfcReset) 
    (or 
      (each-then 
        (pfcDatabaseItem $T) 
        (, 
          (pfcError "Pfc database not empty after pfcReset, e.g., ~p.~n" 
            (:: $T)) 
          (fail))) True))


; true if there is some pfc crud still in the database.

  (= 
    (pfcDatabaseItem (= $Term $Body)) 
    (, 
      (pfcDatabaseTerm (/ $P $A)) 
      (functor $Term $P $A) 
      (get-atoms  &self 
        (= $Term $Body))))


  (= 
    (pfcRetractOrWarn $X) 
    (, 
      (remove-atom  &self $X) 
      (set-det)))
  (= 
    (pfcRetractOrWarn $X) 
    (, 
      (pfcWarn "Couldn't retract ~p." 
        (:: $X)) 
      (dumpST) 
      (pfcWarn "Couldn't retract ~p." 
        (:: $X)) 
      (set-det)))


  (= 
    (pfcRetractOrQuietlyFail $X) 
    (, 
      (remove-atom  &self $X) 
      (set-det)))
  (= 
    (pfcRetractOrQuietlyFail $X) 
    (, 
      (nop (, (pfcTraceMsg "Trace: Couldn't retract ~p." (:: $X)) (dumpST) (pfcWarn "Couldn't retract ~p." (:: $X)))) 
      (set-det) 
      (fail)))



;   File   : pfcdebug.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Author :  Dave Matuszek, dave@prc.unisys.com
;   Updated:
;   Purpose: provides predicates for examining the database and debugginh 
;   for Pfc.


  (dynamic (/ pfcTraced 1))
  (dynamic (/ pfcSpied 2))
  (dynamic (/ pfcTraceExecution 0))
  (dynamic (/ pfcWarnings 1))

  (pfcDefault 
    (pfcWarnings $_) 
    (pfcWarnings True))

; ;  predicates to examine the state of pfc


  (= 
    (pfcQueue) 
    (listing (/ pfcQueue 1)))


  (= 
    (pfcPrintDB) 
    (, 
      (pfcPrintFacts) 
      (pfcPrintRules) 
      (pfcPrintTriggers) 
      (pfcPrintSupports) 
      (set-det)))


  (= 
    (printLine) 
    (ansi-format 
      (:: underline) "~N=========================================~n" Nil))

; ; pfcPrintFacts ...


  (= 
    (pfcPrintFacts) 
    (pfcPrintFacts $_ True))


  (= 
    (pfcPrintFacts $Pattern) 
    (pfcPrintFacts $Pattern True))

  (= 
    (pfcPrintFacts $P $C) 
    (, 
      (pfcFacts $P $C $L) 
      (pfcClassifyFacts $L $User $Pfc $Rule) 
      (printLine) 
      (pfcPrintf "User added facts:~n" Nil) 
      (pfcPrintitems $User) 
      (printLine) 
      (pfcPrintf "Pfc added facts:~n" Nil) 
      (pfcPrintitems $Pfc) 
      (printLine) 
      (set-det)))


; ;  printitems clobbers it''s arguments - beware!


  (= 
    (pfcPrintitems  ()) True)
  (= 
    (pfcPrintitems (Cons  $H $T)) 
    (, 
      (not (not (, (pretty-numbervars $H $H1) (format " " Nil) (portray-clause-w-vars $H1)))) 
      (pfcPrintitems $T))); numbervars(H,0,_),
;format('~N ~p.',[H]),



  (= 
    (pfcClassifyFacts  () () () ()) True)

  (= 
    (pfcClassifyFacts 
      (Cons  $H $T) $User $Pfc 
      (Cons  $H $Rule)) 
    (, 
      (pfcType $H rule) 
      (set-det) 
      (pfcClassifyFacts $T $User $Pfc $Rule)))

  (= 
    (pfcClassifyFacts 
      (Cons  $H $T) 
      (Cons  $H $User) $Pfc $Rule) 
    (, 
      (matches-why-UU $UU) 
      (pfcGetSupport $H $UU) 
      (set-det) 
      (pfcClassifyFacts $T $User $Pfc $Rule)))

  (= 
    (pfcClassifyFacts 
      (Cons  $H $T) $User 
      (Cons  $H $Pfc) $Rule) 
    (pfcClassifyFacts $T $User $Pfc $Rule))


  (= 
    (pfcPrintRules) 
    (, 
      (printLine) 
      (pfcPrintf "Rules:...~n" Nil) 
      (bagof-or-nil 
        (==> $P $Q) 
        (get-atoms  &self 
          (= 
            (==>  $P $Q) true)) $R1) 
      (pfcPrintitems $R1) 
      (bagof-or-nil 
        (<==> $P $Q) 
        (get-atoms  &self 
          (= 
            (<==>  $P $Q) true)) $R2) 
      (pfcPrintitems $R2) 
      (bagof-or-nil 
        (<- $P $Q) 
        (get-atoms  &self 
          (= 
            (<-  $P $Q) true)) $R3) 
      (pfcPrintitems $R3) 
      (printLine)))


  (= 
    (pfcGetTrigger $Trigger) 
    (pfc-call $Trigger))


; ;   pfcPrintTriggers is semidet.
;
; Pretty Print Triggers.
;

  (= 
    (pfcPrintTriggers) 
    (, 
      (print-db-items "Positive triggers" 
        ($pt$ $_ $_)) 
      (print-db-items "Negative triggers" 
        ($nt$ $_ $_ $_)) 
      (print-db-items "Goal triggers" 
        ($bt$ $_ $_))))


  (= 
    (pp-triggers) 
    (pfcPrintTriggers))
;= 	 	 

; ;  pfcPrintSupports is semidet.
;
; Pretty Print Supports.
;

  (= 
    (pfcPrintSupports) 
    (, 
      (draw-line) 
      (fmt "Supports ...~n" Nil) 
      (setof-or-nil 
        (=< $P $S) 
        (, 
          (pfcGetSupport $P $S) 
          (not (pp-filtered $P))) $L) 
      (pp-items Support $L) 
      (draw-line) 
      (set-det))); temporary hack.


  (= 
    (pp-supports) 
    (pfcPrintSupports))


  (= 
    (pp-filtered $P) 
    (, 
      (var $P) 
      (set-det) 
      (fail)))
  (= 
    (pp-filtered (with_self  $_ $P)) 
    (, 
      (set-det) 
      (pp-filtered $P)))
  (= 
    (pp-filtered $P) 
    (, 
      (safe-functor $P $F $A) 
      (\== $F /) 
      (set-det) 
      (pp-filtered (/ $F $A))))
  (= 
    (pp-filtered (/ $F $_)) 
    (== $F pfc-prop))




  (= 
    (pfcFact $P) 
    (pfcFact $P True))

; ;  pfcFact(P,C) is true if fact P was asserted into the database via
; ;  pfcAdd and contdition C is satisfied.  For example, we might do:
; ;  
; ;   pfcFact(X,pfcUserFact(X))
; ; 

  (= 
    (pfcFact $P $C) 
    (, 
      (pfcGetSupport $P $_) 
      (pfcType $P 
        (fact $_)) 
      (pfcCallSystem $C)))

; ;  pfcFacts(-ListofPfcFacts) returns a list of facts added.


  (= 
    (pfcFacts $L) 
    (pfcFacts $_ True $L))

  (= 
    (pfcFacts $P $L) 
    (pfcFacts $P True $L))

; ;  pfcFacts(Pattern,Condition,-ListofPfcFacts) returns a list of facts added.

  (= 
    (pfcFacts $P $C $L) 
    (setof-or-nil $P 
      (pfcFact $P $C) $L))


  (= 
    (brake $X) 
    (, $X 
      (ibreak)))

; ; 
; ; 
; ;  predicates providing a simple tracing facility
; ; 


  (= 
    (pfcTraceAdd $P) 
    (pfcTraceAdd $P 
      (, 
        (o) 
        (o)))); this is here for upward compat. - should go away eventually.


  (= 
    (pfcTraceAdd 
      ($pt$ $_ $_) $_) 
    (set-det)); hack for now - never trace triggers.

  (= 
    (pfcTraceAdd 
      ($nt$ $_ $_) $_) 
    (set-det)); hack for now - never trace triggers.


  (= 
    (pfcTraceAdd $P $S) 
    (, 
      (pfcTraceAddPrint $P $S) 
      (pfcTraceBreak $P $S)))
   


  (= 
    (pfcTraceAddPrint $P $S) 
    (, 
      (pfcIsTraced $P) 
      (set-det) 
      (pretty-numbervars $P $Pcopy) 
      (matches-why-UU $UU) 
      (if-then-else 
        (= $S $UU) 
        (pfcPrintf "Adding (u) ~@" 
          (:: (fmt-cl $Pcopy))) 
        (pfcPrintf "Adding ~@" 
          (:: (fmt-cl $Pcopy)))))); numbervars(Pcopy,0,_),


  (= 
    (pfcTraceAddPrint  $_ $_) True)



  (= 
    (pfcTraceBreak $P $S) 
    (if-then-else 
      (pfcSpied $P +) 
      (, 
        (pretty-numbervars $P $Pcopy) 
        (pfcPrintf "Breaking on pfcAdd(~p)" 
          (:: $Pcopy)) 
        (ibreak)) True)); numbervars(Pcopy,0,_),



  (= 
    (pfcTraceRem ($pt$ $_ $_)) 
    (set-det)); hack for now - never trace triggers.

  (= 
    (pfcTraceRem ($nt$ $_ $_)) 
    (set-det)); hack for now - never trace triggers.


  (= 
    (pfcTraceRem $P) 
    (, 
      (if-then-else 
        (pfcIsTraced $P) 
        (pfcPrintf "Removing: ~p." 
          (:: $P)) True) 
      (if-then-else 
        (pfcSpied $P -) 
        (, 
          (pfcPrintf "Breaking on pfcRem(~p)" 
            (:: $P)) 
          (ibreak)) True)))


  (= 
    (pfcIsTraced $P) 
    (pfcTraced $P))


  (= 
    (mpred-trace-exec) 
    (, 
      (pfcWatch) 
      (pfcTrace)))

  (= 
    (mpred-notrace-exec) 
    (, 
      (pfcNoTrace) 
      (pfcNoWatch)))


  (= 
    (pfcTrace) 
    (pfcTrace $_))

  (= 
    (pfcTrace $Form) 
    (add-atom  &self 
      (pfcTraced  $Form)))

  (= 
    (pfcTrace $Form $Condition) 
    (add-atom  &self 
      (:-  
        (pfcTraced  $Form) $Condition)))


  (= 
    (pfcSpy $Form) 
    (pfcSpy $Form 
      (:: + -) True))

  (= 
    (pfcSpy $Form $Modes) 
    (pfcSpy $Form $Modes True))

  (= 
    (pfcSpy $Form 
      (Cons  $H $T) $Condition) 
    (, 
      (set-det) 
      (pfcSpy1 $Form $H $Condition) 
      (pfcSpy $Form $T $Condition)))

  (= 
    (pfcSpy $Form $Mode $Condition) 
    (pfcSpy1 $Form $Mode $Condition))


  (= 
    (pfcSpy1 $Form $Mode $Condition) 
    (add-atom  &self 
      (:-  
        (pfcSpied  $Form $Mode) $Condition)))


  (= 
    (pfcNospy) 
    (pfcNospy $_ $_ $_))

  (= 
    (pfcNospy $Form) 
    (pfcNospy $Form $_ $_))

  (= 
    (pfcNospy $Form $Mode $Condition) 
    (, 
      (clause 
        (pfcSpied $Form $Mode) $Condition $Ref) 
      (erase $Ref) 
      (fail)))
  (= 
    (pfcNospy  $_ $_ $_) True)


  (= 
    (pfcNoTrace) 
    (pfcUntrace))

  (= 
    (pfcUntrace) 
    (pfcUntrace $_))
  (= 
    (pfcUntrace $Form) 
    (remove-all-atoms  &self 
      (pfcTraced  $Form)))

; needed:  pfcTraceRule(Name)  ...


; if the correct flag is set, trace exection of Pfc


  (= 
    (pfcTraceMsg $Msg) 
    (pfcTraceMsg ~p 
      (:: $Msg)))
  (= 
    (pfcTraceMsg $Msg $Args) 
    (, 
      (pfcTraceExecution) 
      (set-det) 
      (pfcPrintf user-output $Msg $Args)))
  (= 
    (pfcTraceMsg  $Msg $Args) True)



  (= 
    (pfcPrintf $Msg $Args) 
    (pfcPrintf user-output $Msg $Args))

  (= 
    (pfcPrintf $Where $Msg $Args) 
    (, 
      (format $Where ~N Nil) 
      (format $Where $Msg $Args)))




  (= 
    (pfcWatch) 
    (add-atom  &self pfcTraceExecution))


  (= 
    (pfcNoWatch) 
    (remove-all-atoms  &self pfcTraceExecution))


  (= 
    (pfcError $Msg) 
    (pfcError $Msg Nil))

  (= 
    (pfcError $Msg $Args) 
    (, 
      (format "~N~nERROR/Pfc: " Nil) 
      (format $Msg $Args)))

; ; 
; ;  These control whether or not warnings are printed at all.
; ;    pfcWarn.
; ;    nopfcWarn.
; ; 
; ;  These print a warning message if the flag pfcWarnings is set.
; ;    pfcWarn(+Message)
; ;    pfcWarn(+Message,+ListOfArguments)
; ; 


  (= 
    (pfcWarn) 
    (, 
      (remove-all-atoms  &self 
        (pfcWarnings  $_)) 
      (add-atom  &self 
        (pfcWarnings  true))))


  (= 
    (nopfcWarn) 
    (, 
      (remove-all-atoms  &self 
        (pfcWarnings  $_)) 
      (add-atom  &self 
        (pfcWarnings  false))))
 

  (= 
    (pfcWarn $Msg) 
    (pfcWarn ~p 
      (:: $Msg)))

  (= 
    (pfcWarn $Msg $Args) 
    (, 
      (pfcWarnings True) 
      (set-det) 
      (ansi-format 
        (:: underline 
          (fg red)) "~N==============WARNING/Pfc================~n" Nil) 
      (ansi-format 
        (:: (fg yellow)) $Msg $Args) 
      (printLine)))
  (= 
    (pfcWarn  $_ $_) True)

; ; 
; ;  pfcWarnings/0 sets flag to cause pfc warning messages to print.
; ;  pfcNoWarnings/0 sets flag to cause pfc warning messages not to print.
; ; 


  (= 
    (pfcWarnings) 
    (, 
      (remove-all-atoms  &self 
        (pfcWarnings  $_)) 
      (add-atom  &self 
        (pfcWarnings  true))))


  (= 
    (pfcNoWarnings) 
    (remove-all-atoms  &self 
      (pfcWarnings  $_)))

;   File   : pfcjust.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Author :  Dave Matuszek, dave@prc.unisys.com
;   Updated:
;   Purpose: predicates for accessing Pfc justifications.
;   Status: more or less working.
;   Bugs:

;= *** predicates for exploring supports of a fact *****



  (use-module (library lists))


  (= 
    (justification $F $J) 
    (supports $F $J))


  (= 
    (justifications $F $Js) 
    (bagof $J 
      (justification $F $J) $Js))



; ;  base(P,L) - is true iff L is a list of "base" facts which, taken
; ;  together, allows us to deduce P.  A base fact is an axiom (a fact 
; ;  added by the user or a raw MeTTa fact (i.e. one w/o any support))
; ;  or an assumption.


  (= 
    (base $F 
      (:: $F)) 
    (, 
      (or 
        (axiom $F) 
        (assumption $F)) 
      (set-det)))

  (= 
    (base $F $L) 
    (, 
      (justification $F $Js) 
      (bases $Js $L))); i.e. (reduce 'append (map 'base (justification f)))



; ;  bases(L1,L2) is true if list L2 represents the union of all of the 
; ;  facts on which some conclusion in list L1 is based.


  (= 
    (bases  () ()) True)
  (= 
    (bases 
      (Cons  $X $Rest) $L) 
    (, 
      (base $X $Bx) 
      (bases $Rest $Br) 
      (pfcUnion $Bx $Br $L)))
	

  (= 
    (axiom $F) 
    (or 
      (, 
        (matches-why-UU $UU) 
        (pfcGetSupport $F $UU)) 
      (pfcGetSupport $F 
        (, 
          (god) 
          (god)))))

; ;  an assumption is a failed goal, i.e. were assuming that our failure to 
; ;  prove P is a proof of not(P)


  (= 
    (assumption $P) 
    (pfc-unnegate $P $_))
   
; ;  assumptions(X,As) if As is a set of assumptions which underly X.


  (= 
    (assumptions $X 
      (:: $X)) 
    (assumption $X))
  (= 
    (assumptions $X Nil) 
    (axiom $X))
  (= 
    (assumptions $X $L) 
    (, 
      (justification $X $Js) 
      (assumptions1 $Js $L)))


  (= 
    (assumptions1  () ()) True)
  (= 
    (assumptions1 
      (Cons  $X $Rest) $L) 
    (, 
      (assumptions $X $Bx) 
      (assumptions1 $Rest $Br) 
      (pfcUnion $Bx $Br $L)))  


; ;  pfcProofTree(P,T) the proof tree for P is T where a proof tree is
; ;  of the form
; ; 
; ;      [P , J1, J2, ;;; Jn]         each Ji is an independent P justifier.
; ;           ^                         and has the form of
; ;           [J11, J12,... J1n]      a list of proof trees.


; pfcChild(P,Q) is true iff P is an immediate justifier for Q.
; mode: pfcChild(+,?)


  (= 
    (pfcChild $P $Q) 
    (pfcGetSupport $Q 
      (, $P $_)))

  (= 
    (pfcChild $P $Q) 
    (, 
      (pfcGetSupport $Q 
        (, $_ $Trig)) 
      (pfcType $Trig 
        (trigger $Pos)) 
      (pfcChild $P $Trig)))


  (= 
    (pfcChildren $P $L) 
    (bagof-or-nil $C 
      (pfcChild $P $C) $L))

; pfcDescendant(P,Q) is true iff P is a justifier for Q.


  (= 
    (pfcDescendant $P $Q) 
    (pfcDescendant1 $P $Q Nil))


  (= 
    (pfcDescendant1 $P $Q $Seen) 
    (, 
      (pfcChild $X $Q) 
      (not (member $X $Seen)) 
      (or 
        (= $P $X) 
        (pfcDescendant1 $P $X 
          (Cons  $X $Seen)))))
  

  (= 
    (pfcDescendants $P $L) 
    (bagof-or-nil $Q 
      (pfcDescendant1 $P $Q Nil) $L))




  (= 
    (current-why-U $U) 
    (get-why-uu (, $U $_)))/*
current_why_U(U):- must(current_why(Why)), U = user(Why).
current_why_UU(UU):- current_why_U(U), UU= (U,U).
matches_why_U(U):-  freeze(U,U=user(_)).
matches_why_UU(UU):- matches_why_U(U1),matches_why_U(U2), freeze(UU,UU=(U1,U2)).
*/
; must(current_why(Why)), U = user(Why).

  (= 
    (current-why-UU $UU) 
    (get-why-uu $UU)) ; current_why_U(U), UU= (U,U).

  (= 
    (matches-why-U $U) 
    (nop (, (current-why-U $Y) (freeze $U (not (not (or (= $U $Y) True)))))))

  (= 
    (matches-why-UU $UU) 
    (nop (only-is-user-reason $UU))) ; matches_why_U(U1),matches_why_U(U2),freeze(UU,UU=(U1,U2)).



  (= 
    (matterialize-support-term $S $Sup) 
    (if-then 
      (, 
        (term-attvars $S $Atts) 
        (\== $Atts Nil)) 
      (, 
        (copy-term $S $_ $Goals) 
        (= $Sup 
          (+ $S $Goals)) 
        (set-det))))
  (= 
    (matterialize_support_term  $SS $SS) True)

; ; 
; ; 
; ;  predicates for manipulating support relationships
; ; 

; ;  pfcAddSupport(+Fact,+Support)


  (= 
    (pfcAddSupport $P 
      (, $Fact $Trigger)) 
    (add-atom  &self 
      ($spft$  $P $Fact $Trigger)))


  (= 
    (pfcGetSupport $P 
      (, $Fact $Trigger)) 
    (pfc-spft $P $Fact $Trigger))


  (= 
    (pfc-spft $P $F $T) 
    (pfcCallSystem ($spft$ $P $F $T)))

; There are three of these to try to efficiently handle the cases
; where some of the arguments are not bound but at least one is.


  (= 
    (pfcRemOneSupport $P 
      (, $Fact $Trigger)) 
    (, 
      (must (or (callable $P) (or (callable $Fact) (callable $Trigger)))) 
      (pfcRetractOrWarn ($spft$ $P $Fact $Trigger))))


  (= 
    (pfcRemOneSupportOrQuietlyFail $P 
      (, $Fact $Trigger)) 
    (, 
      (must (or (callable $P) (or (callable $Fact) (callable $Trigger)))) 
      (pfcRetractOrQuietlyFail ($spft$ $P $Fact $Trigger))))



  (= 
    (pfc-collect-supports $Tripples) 
    (, 
      (bagof $Tripple 
        (pfc-support-relation $Tripple) $Tripples) 
      (set-det)))
  (= 
    (pfc_collect_supports  ()) True)


  (= 
    (pfc-support-relation (, $P $F $T)) 
    (pfc-spft $P $F $T))




  (= 
    (pfc-make-supports (, $P $S1 $S2)) 
    (, 
      (pfcAddSupport $P 
        (, $S1 $S2)) 
      (or 
        (pfcAddType1 $P) True) 
      (set-det)))

; ;  pfcTriggerKey(+Trigger,-Key) 
; ; 
; ;  Arg1 is a trigger.  Key is the best term to index it on.


  (= 
    (pfcTriggerKey  
      ($pt$  $Key $_) $Key) True)
  (= 
    (pfcTriggerKey  
      ($pt$  $Key $_ $_) $Key) True)
  (= 
    (pfcTriggerKey  
      ($nt$  $Key $_ $_) $Key) True)
  (= 
    (pfcTriggerKey  $Key $Key) True)


; ; ^L
; ;  Get a key from the trigger that will be used as the first argument of
; ;  the trigger base clause that stores the trigger.
; ; 


  (= 
    (pfc-trigger-key $X $X) 
    (, 
      (var $X) 
      (set-det)))
  (= 
    (pfc-trigger-key 
      (chart 
        (word $W) $L) $W) 
    (set-det))
  (= 
    (pfc-trigger-key 
      (chart 
        (stem (Cons  $Char1 $Rest)) $L) $Char1) 
    (set-det))
  (= 
    (pfc-trigger-key 
      (chart $Concept $L) $Concept) 
    (set-det))
  (= 
    (pfc_trigger_key  $X $X) True)

;   File   : pfcwhy.pl
;   Author : Tim Finin, finin@prc.unisys.com
;   Updated:
;   Purpose: predicates for interactively exploring Pfc justifications.

; ***** predicates for brousing justifications *****


  (use-module (library lists))

  (dynamic (with_self  (t-l) (/ whybuffer 2)))




  (= 
    (pfcWhy) 
    (, 
      (with_self  
        (t-l) 
        (whybuffer $P $_)) 
      (pfcWhy $P)))


  (= 
    (pfcTF $P) 
    (or 
      (each-then 
        (pfc-call $P) 
        (foreach 
          (pfcTF1 $P) True)) 
      (pfcTF1 $P)))

  (= 
    (pfcTF1 $P) 
    (, 
      (ansi-format 
        (:: underline) "~N=========================================" Nil) 
      (ignore (pfcWhy $P)) 
      (ignore (pfcWhy (~ $P))) 
      (printLine)))
   


  (= 
    (pfcWhy $N) 
    (, 
      (number $N) 
      (set-det) 
      (with_self  
        (t-l) 
        (whybuffer $P $Js)) 
      (pfcWhyCommand $N $P $Js)))

  (= 
    (pfcWhy $P) 
    (, 
      (justifications $P $Js) 
      (remove-all-atoms  &self 
        (:  t_l 
          (whybuffer  $_ $_))) 
      (add-atom  &self 
        (:  t_l 
          (whybuffer  $P $Js))) 
      (pfcWhyBrouse $P $Js)))


  (= 
    (pfcWhy1 $P) 
    (, 
      (justifications $P $Js) 
      (pfcWhyBrouse $P $Js)))


  (= 
    (pfcWhy2 $P $N) 
    (, 
      (justifications $P $Js) 
      (pfcShowJustification1 $Js $N)))


  (= 
    (pfcWhyBrouse $P $Js) 
    (, 
      (pfcShowJustifications $P $Js) 
      (nop (, (pfcAsk  >>  $Answer) (pfcWhyCommand $Answer $P $Js))))); rtrace(pfc_pp_db_justifications(P,Js)),



  (= 
    (pfcWhyCommand q $_ $_) 
    (set-det))
  (= 
    (pfcWhyCommand h $_ $_) 
    (, 
      (set-det) 
      (format "~n\nJustification Brouser Commands:\n q   quit.\n N   focus on Nth justification.\n N.M brouse step M of the Nth justification\n u   up a level\n" Nil)))

  (= 
    (pfcWhyCommand $N $P $Js) 
    (, 
      (float $N) 
      (set-det) 
      (pfcSelectJustificationNode $Js $N $Node) 
      (pfcWhy1 $Node)))

  (= 
    (pfcWhyCommand u $_ $_) 
    (set-det)); u=up



  (= 
    (pfcCommand $N $_ $_) 
    (, 
      (integer $N) 
      (set-det) 
      (pfcPrintf "~p is a yet unimplemented command." 
        (:: $N)) 
      (fail)))

  (= 
    (pfcCommand $X $_ $_) 
    (, 
      (pfcPrintf "~p is an unrecognized command, enter h. for help." 
        (:: $X)) 
      (fail)))
  

  (= 
    (pfcShowJustifications $P $Js) 
    (, 
      (show-current-source-location) 
      (reset-shown-justs) 
      (format "~N~nJustifications for " Nil) 
      (ansi-format 
        (:: (fg green)) ~@ 
        (:: (pp $P))) 
      (format " :~n" Nil) 
      (pfcShowJustification1 $Js 1) 
      (set-det) 
      (printLine)));color_line(yellow,1),



  (= 
    (pfcShowJustification1 Nil $_) 
    (set-det))
  (= 
    (pfcShowJustification1 
      (Cons  $J $Js) $N) 
    (, 
      (set-det) 
      (pfcShowSingleJust $N 
        (step 1) $J) 
      (set-det) 
      (is $N2 
        (+ $N 1)) 
      (pfcShowJustification1 $Js $N2))); show one justification and recurse.    
;reset_shown_justs,


  (= 
    (pfcShowJustification1 $J $N) 
    (, 
      (pfcShowSingleJust $N 
        (step 1) $J) 
      (set-det)));reset_shown_justs, ; nl,



  (= 
    (incrStep $StepNo $Step) 
    (, 
      (compound $StepNo) 
      (arg 1 $StepNo $Step) 
      (is $X 
        (+ $Step 1)) 
      (nb-setarg 1 $StepNo $X)))


  (= 
    (pfcShowSingleJust $JustNo $StepNo $C) 
    (, 
      (is-ftVar $C) 
      (set-det) 
      (incrStep $StepNo $Step) 
      (ansi-format 
        (:: (fg cyan)) "~N    ~w.~w ~w " 
        (:: $JustNo $Step $C)) 
      (set-det) 
      (maybe-more-c $C)))
  (= 
    (pfcShowSingleJust $JustNo $StepNo Nil) 
    (set-det))
  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (, $P $T)) 
    (, 
      (set-det) 
      (pfcShowSingleJust $JustNo $StepNo $P) 
      (pfcShowSingleJust $JustNo $StepNo $T)))
  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (, $P $F $T)) 
    (, 
      (set-det) 
      (pfcShowSingleJust1 $JustNo $StepNo $P) 
      (pfcShowSingleJust $JustNo $StepNo $F) 
      (pfcShowSingleJust1 $JustNo $StepNo $T)))
  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (each-then $P $T)) 
    (, 
      (set-det) 
      (pfcShowSingleJust1 $JustNo $StepNo $P) 
      (format       *->  Nil) 
      (pfcShowSingleJust1 $JustNo $StepNo $T)))

  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (= $P $T)) 
    (, 
      (set-det) 
      (pfcShowSingleJust1 $JustNo $StepNo $P) 
      (format ':- ~p.' 
        (:: $T))))
 
  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (with_self  $P 
        (- $T))) 
    (, 
      (set-det) 
      (pfcShowSingleJust1 $JustNo $StepNo $P) 
      (format       :-  Nil) 
      (pfcShowSingleJust $JustNo $StepNo $T)))

  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (= $P $T)) 
    (, 
      (set-det) 
      (pfcShowSingleJust1 $JustNo $StepNo 
        (call $T)) 
      (pfcShowSingleJust1 $JustNo $StepNo $P)))


  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      (Cons  $P $T)) 
    (, 
      (set-det) 
      (pfcShowSingleJust $JustNo $StepNo $P) 
      (pfcShowSingleJust $JustNo $StepNo $T)))

  (= 
    (pfcShowSingleJust $JustNo $StepNo 
      ($pt$ $P $Body)) 
    (, 
      (set-det) 
      (pfcShowSingleJust1 $JustNo $StepNo 
        ($pt$ $P)) 
      (pfcShowSingleJust $JustNo $StepNo $Body)))

  (= 
    (pfcShowSingleJust $JustNo $StepNo $C) 
    (pfcShowSingleJust1 $JustNo $StepNo $C))


  (= 
    (fmt-cl $P) 
    (, 
      (not (not (, (pretty-numbervars $P $PP) (numbervars $PP 126 $_ (:: (attvar skip) (singletons True))) (write-term $PP (:: (portray True) (portray-goal fmt-cl)))))) 
      (write .)))
  (= 
    (fmt-cl $S $_) 
    (, 
      (term-is-ansi $S) 
      (set-det) 
      (write-keeping-ansi $S)))
  (= 
    (fmt-cl $G $_) 
    (, 
      (is-grid $G) 
      (write ") 
      (with_self  
        (user) 
        (print-grid $G)) 
      (write ") 
      (set-det)))
; fmt_cl(P,_):- catch(arc_portray(P),_,fail),!.
  (= 
    (fmt-cl $P $_) 
    (, 
      (is-list $P) 
      (catch 
        (p-p-t-no-nl $P) $_ fail) 
      (set-det)))
;ptg(PP,Opts):- is_list(PP),select(portray_goal(ptg),Opts,Never),write_term(PP,Never). 


  (= 
    (unwrap-litr $C 
      (+ $CCC $VS)) 
    (, 
      (copy-term $C $CC $VS) 
      (numbervars 
        (+ $CC $VS) 0 $_) 
      (unwrap-litr0 $CC $CCC) 
      (set-det)))

  (= 
    (unwrap-litr0 
      (call $C) $CC) 
    (unwrap-litr0 $C $CC))
  (= 
    (unwrap-litr0 
      ($pt$ $C) $CC) 
    (unwrap-litr0 $C $CC))
  (= 
    (unwrap-litr0 
      (body $C) $CC) 
    (unwrap-litr0 $C $CC))
  (= 
    (unwrap-litr0 
      (head $C) $CC) 
    (unwrap-litr0 $C $CC))
  (= 
    (unwrap_litr0  $C $C) True)


  (thread-local (with_self  (t-l) (/ shown-why 1)))


  (= 
    (pfcShowSingleJust1 $_ $_ $MFL) 
    (, 
      (is-mfl $MFL) 
      (set-det)))
  (= 
    (pfcShowSingleJust1 $JustNo $StepNo $C) 
    (, 
      (unwrap-litr $C $CC) 
      (set-det) 
      (pfcShowSingleJust4 $JustNo $StepNo $C $CC)))

  (= 
    (pfcShowSingleJust4 $_ $_ $_ $MFL) 
    (, 
      (is-mfl $MFL) 
      (set-det)))
  (= 
    (pfcShowSingleJust4 $_ $_ $_ $CC) 
    (, 
      (with_self  
        (t-l) 
        (shown-why $C)) 
      (=@= $C $CC) 
      (set-det)))
  (= 
    (pfcShowSingleJust4 $JustNo $StepNo $C $CC) 
    (, 
      (add-atom  &self 
        (:  t_l 
          (shown_why  $CC))) 
      (set-det) 
      (incrStep $StepNo $Step) 
      (ansi-format 
        (:: (fg cyan)) "~N    ~w.~w ~@ " 
        (:: $JustNo $Step 
          (with_self  
            (user) 
            (fmt-cl $C)))) 
      (pfcShowSingleJust-C $C) 
      (set-det) 
      (format ~N) 
      (ignore (maybe-more-c $C)) 
      (format ~N) 
      (set-det)))


  (= 
    (is-mfl $MFL) 
    (, 
      (compound $MFL) 
      (= $MFL 
        (mfl4 $_ $_ $_ $_))))


  (= 
    (maybe-more-c $MFL) 
    (, 
      (is-mfl $MFL) 
      (set-det)))
  (= 
    (maybe-more-c $_) 
    (with_self  
      (t-l) 
      (shown-why no-recurse)))
  (= 
    (maybe-more-c $C) 
    (, 
      (with_self  
        (t-l) 
        (shown-why (more $C))) 
      (set-det)))
  (= 
    (maybe-more-c $C) 
    (, 
      (with_self  
        (t-l) 
        (shown-why $C)) 
      (set-det)))
  (= 
    (maybe-more-c $C) 
    (, 
      (add-atom  &self 
        (:  t_l 
          (shown_why  
            (more  $C)))) 
      (add-atom  &self 
        (:  t_l 
          (shown_why  $C))) 
      (locally 
        (with_self  
          (t-l) 
          (shown-why no-recurse)) 
        (locally 
          (with_self  
            (t-l) 
            (shown-why $C)) 
          (locally 
            (with_self  
              (t-l) 
              (shown-why (more $C))) 
            (ignore (catch (pfcWhy2 $C 1.1) $E (fbugio $E)))))) 
      (set-det)))


  (= 
    (pfcShowSingleJust-C $C) 
    (, 
      (is-file-ref $C) 
      (set-det)))
  (= 
    (pfcShowSingleJust-C $C) 
    (, 
      (find-mfl $C $MFL) 
      (add-atom  &self 
        (:  t_l 
          (shown_why  $MFL))) 
      (set-det) 
      (pfcShowSingleJust-MFL $MFL)))
  (= 
    (pfcShowSingleJust-C $_) 
    (, 
      (ansi-format 
        (:: (hfg black)) " % [no_mfl] " Nil) 
      (set-det)))


  (= 
    (short-filename $F $FN) 
    (, 
      (atomic-list-concat 
        (:: $_ $FN) /pack/ $F) 
      (set-det)))
  (= 
    (short-filename $F $FN) 
    (, 
      (atomic-list-concat 
        (:: $_ $FN) swipl $F) 
      (set-det)))
  (= 
    (short-filename $F $FN) 
    (, 
      (= $F $FN) 
      (set-det)))


  (= 
    (pfcShowSingleJust-MFL $MFL) 
    (, 
      (= $MFL 
        (mfl4 $VarNameZ $M $F $L)) 
      (atom $F) 
      (short-filename $F $FN) 
      (set-det) 
      (varnames-load-context $VarNameZ) 
      (ansi-format 
        (:: (hfg black)) " % [~w:~w] " 
        (:: $FN $L))))

  (= 
    (pfcShowSingleJust-MFL $MFL) 
    (, 
      (= $MFL 
        (mfl4 $V $M $F $L)) 
      (my-maplist var 
        (:: $V $M $F $L)) 
      (set-det)))
  (= 
    (pfcShowSingleJust-MFL $MFL) 
    (, 
      (ansi-format 
        (:: (hfg black)) " % [~w] " 
        (:: $MFL)) 
      (set-det)))


  (= 
    (pfcAsk $Msg $Ans) 
    (, 
      (format "~n~w" 
        (:: $Msg)) 
      (read $Ans)))


  (= 
    (pfcSelectJustificationNode $Js $Index $Step) 
    (, 
      (is $JustNo 
        (integer $Index)) 
      (nth1 $JustNo $Js $Justification) 
      (is $StepNo 
        (+ 1 
          (integer (- (* $Index 10) (* $JustNo 10))))) 
      (nth1 $StepNo $Justification $Step)))























  (set-prolog-flag expect-pfc-file unknown)

; =======================================================
  (if (not (, (current-prolog-flag logicmoo-include $Call) $Call)))/* 
;
;= predicates to examine the state of pfc 
; interactively exploring Pfc justifications.
;
; Logicmoo Project MeTTaMUD: A MUD server written in MeTTa
; Maintainer: Douglas Miles
; Dec 13, 2035
;
*/
; =======================================================
; File: /opt/MeTTaMUD/pack/logicmoo_base/MeTTa/logicmoo/mpred/pfc_list_triggers.pl


  (= 
    (pfc-listing-module) 
    (nop (module pfc-listing (:: (/ draw-line 0) (/ loop-check-just 1) (/ pinfo 1) (/ pp-items 2) (/ pp-item 2) (/ pp-filtered 1) (/ pp-facts 2) (/ pp-facts 1) (/ pp-facts 0) (/ pfc-list-triggers-types 1) (/ pfc-list-triggers-nlc 1) (/ pfc-list-triggers-1 1) (/ pfc-list-triggers-0 1) (/ pfc-list-triggers 1) (/ pfc-contains-term 2) (/ pfc-classify-facts 4) (/ lqu 0) (/ get-clause-vars-for-print 2) (/ pp-rules 0) (/ pfcPrintSupports 0) (/ pfcPrintTriggers 0) (/ print-db-items 1) (/ print-db-items 2) (/ print-db-items 3) (/ print-db-items 4) (/ print-db-items-and-neg 3) (/ show-pred-info 1) (/ show-pred-info-0 1) (/ pfc-listing-file 0)))));pfcWhyBrouse/2,
;pfcWhy1/1,
;pfcWhy/1,
;pfcWhy/0,


;:- include('pfc_header.pi').


  (endif)

; :- use_module(logicmoo(util/logicmoo_util_preddefs)).



  (multifile (, (with_self  (user) (/ portray 1)) (with_self  (user) (/ prolog-list-goal 1)) (with_self  (user) (/ prolog-predicate-name 2)) (with_self  (user) (/ prolog-clause-name 2))))

  (dynamic (with_self  (user) (/ portray 1)))

; :- dynamic(whybuffer/2).



;= 	 	 

; ;  lqu is semidet.
;
; Lqu.
;

  (= 
    (lqu) 
    (listing (/ que 2)))


 

;= 	 	 

; ;  pp_facts is semidet.
;
; Pretty Print Facts.
;

  (= 
    (pp-facts) 
    (pp-facts $_ True))


;= 	 	 

; ;  pp_facts( ?Pattern) is semidet.
;
; Pretty Print Facts.
;
  (= 
    (pp-facts $Pattern) 
    (pp-facts $Pattern True))


;= 	 	 

; ;  pp_facts( ?P, ?C) is semidet.
;
; Pretty Print Facts.
;
  (= 
    (pp-facts $P $C) 
    (, 
      (pfcFacts $P $C $L) 
      (pfc-classify-facts $L $User $Pfc $Rule) 
      (draw-line) 
      (fmt "User added facts:" Nil) 
      (pp-items user $User) 
      (draw-line) 
      (draw-line) 
      (fmt "Pfc added facts:" Nil) 
      (pp-items system $Pfc) 
      (draw-line)))



;= 	 	 

; ;  pp_items( ?Type, :TermH) is semidet.
;
; Pretty Print Items.
;

  (= 
    (pp-items $Type Nil) 
    (set-det))
  (= 
    (pp-items $Type 
      (Cons  $H $T)) 
    (, 
      (ignore (pp-item $Type $H)) 
      (set-det) 
      (pp-items $Type $T)))
  (= 
    (pp-items $Type $H) 
    (ignore (pp-item $Type $H)))


  (thread-local (with_self  (t-l) (/ print-mode 1)))

;= 	 	 

; ;  pp_item( ?MM, :TermH) is semidet.
;
; Pretty Print Item.
;

  (= 
    (pp-item $M $H) 
    (, 
      (pp-filtered $H) 
      (set-det)))
  (= 
    (pp-item $MM 
      (= $H $B)) 
    (, 
      (== $B True) 
      (pp-item $MM $H)))
  (= 
    (pp-item $MM $H) 
    (, 
      (flag show-asserions-offered $X 
        (+ $X 1)) 
      (find-and-call (get-print-mode html)) 
      (not (not (if-defined (pp-item-html $MM $H)))) 
      (set-det)))


  (= 
    (pp-item $MM 
      ($spft$ $W0 $U ax)) 
    (, 
      (= $W 
        (with_self  $KB $W0)) 
      (set-det) 
      (pp-item $MM 
        (with_self  $U $W))))
  (= 
    (pp-item $MM 
      ($spft$ $W0 $F $U)) 
    (, 
      (= $W 
        (with_self  $KB $W0)) 
      (atom $U) 
      (set-det) 
      (fmt ~N%~n Nil) 
      (pp-item $MM 
        (with_self  $U $W)) 
      (fmt 'rule: ~p~n~n' 
        (:: $F)) 
      (set-det)))
  (= 
    (pp-item $MM 
      ($spft$ $W0 $F $U)) 
    (, 
      (= $W 
        (with_self  $KB $W0)) 
      (set-det) 
      (fmt '~w~nd:       ~p~nformat:    ~p~n' 
        (:: $MM $W $F)) 
      (pp-item $MM $U)))
  (= 
    (pp-item $MM 
      ($nt$ $Trigger0 $Test $Body)) 
    (, 
      (= $Trigger 
        (with_self  $KB $Trigger0)) 
      (set-det) 
      (fmt '~w n-trigger(-): ~p~ntest: ~p~nbody: ~p~n' 
        (:: $MM $Trigger $Test $Body))))
  (= 
    (pp-item $MM 
      ($pt$ $F0 $Body)) 
    (, 
      (= $F 
        (with_self  $KB $F0)) 
      (set-det) 
      (fmt '~w p-trigger(+):~n' 
        (:: $MM)) 
      (pp-item '' 
        (= $F $Body))))
  (= 
    (pp-item $MM 
      ($bt$ $F0 $Body)) 
    (, 
      (= $F 
        (with_self  $KB $F0)) 
      (set-det) 
      (fmt '~w b-trigger(?):~n' 
        (:: $MM)) 
      (pp-item '' 
        (= $F $Body))))


  (= 
    (pp-item $MM 
      (with_self  $U $W)) 
    (, 
      (set-det) 
      (format 
        (string $S) '~w  ~w:' 
        (:: $MM $U)) 
      (set-det) 
      (pp-item $S $W)))
  (= 
    (pp-item $MM $H) 
    (not (not (, (get-clause-vars-for-print $H $HH) (fmt "~w ~p~N" (:: $MM $HH))))))


;= 	 	 

; ;  get_clause_vars_for_print( ?HB, ?HB) is semidet.
;
; Get Clause Variables For Print.
;

  (= 
    (get-clause-vars-for-print $HB $HB) 
    (, 
      (ground $HB) 
      (set-det)))
  (= 
    (get-clause-vars-for-print $I $I) 
    (, 
      (is-listing-hidden skipVarnames) 
      (set-det)))
  (= 
    (get-clause-vars-for-print $H0 $MHB) 
    (, 
      (get-clause-vars-copy $H0 $MHB) 
      (set-det)))
  (= 
    (get_clause_vars_for_print  $HB $HB) True)

;= 	 	 

; ;  pfc_classify_facts( :TermH, ?User, :TermPfc, ?H) is semidet.
;
; Managed Predicate Classify Facts.
;

  (= 
    (pfc_classify_facts  () () () ()) True)

  (= 
    (pfc-classify-facts 
      (Cons  $H $T) $User $Pfc 
      (Cons  $H $Rule)) 
    (, 
      (pfcType $H rule) 
      (set-det) 
      (pfc-classify-facts $T $User $Pfc $Rule)))

  (= 
    (pfc-classify-facts 
      (Cons  $H $T) 
      (Cons  $H $User) $Pfc $Rule) 
    (, 
      (pfcGetSupport $H 
        (, 
          (mfl4 $VarNameZ $_ $_ $_) 
          (ax))) 
      (set-det) 
      (pfc-classify-facts $T $User $Pfc $Rule)))

  (= 
    (pfc-classify-facts 
      (Cons  $H $T) $User 
      (Cons  $H $Pfc) $Rule) 
    (pfc-classify-facts $T $User $Pfc $Rule))



;= 	 	 

; ;  print_db_items( ?T, ?I) is semidet.
;
; Print Database Items.
;

  (= 
    (print-db-items $T $I) 
    (, 
      (draw-line) 
      (fmt "~N~w ...~n" 
        (:: $T)) 
      (print-db-items $I) 
      (draw-line) 
      (set-det)))


;= 	 	 

; ;  print_db_items( ?I) is semidet.
;
; Print Database Items.
;
  (= 
    (print-db-items (/ $F $A)) 
    (, 
      (number $A) 
      (set-det) 
      (safe-functor $P $F $A) 
      (set-det) 
      (print-db-items $P)))
  (= 
    (print-db-items $H) 
    (, 
      (bagof $H 
        (get-atoms  &self 
          (= $H true)) $R1) 
      (pp-items : $R1) 
      (\== $R1 Nil) 
      (set-det)))
  (= 
    (print-db-items $H) 
    (, 
      (not (current-predicate $_ $H)) 
      (set-det))) 
  (= 
    (print-db-items $H) 
    (, 
      (catch 
        (, 
          ($find-predicate $H $_) 
          (call-u (listing $H))) $_ True) 
      (set-det) 
      (nl) 
      (nl)))


;= 	 	 

; ;  pp_rules is semidet.
;
; Pretty Print Rules.
;

  (= 
    (pp-rules) 
    (, 
      (print-db-items "Forward Rules" 
        (==> $_ $_)) 
      (print-db-items "Bidirectional Rules" 
        (<==> $_ $_)) 
      (print-db-items "Implication Rules" 
        (=> $_ $_)) 
      (print-db-items "Bi-conditional Rules" 
        (<=> $_ $_)) 
      (print-db-items "Backchaining Rules" 
        (<- $_ $_)) 
      (print-db-items "Positive Facts" 
        (==> $_)) 
      (print-db-items "Negative Facts" 
        (~ $_))))


;= 	 	 


; ;  draw_line is semidet.
;
; Draw Line.
;

  (= 
    (draw-line) 
    (, 
      (not thread-self-main) 
      (set-det)))
  (= 
    (draw-line) 
    (, 
      (printLine) 
      (set-det)))
  (= 
    (draw-line) 
    (, 
      (if-then-else 
        (with_self  
          (t-l) 
          (print-mode $H)) True 
        (= $H unknown)) 
      (fmt "~N% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %~n" Nil) 
      (= $H $H)))

 
  (meta-predicate (loop-check-just 0))

;= 	 	 

; ;  loop_check_just( :GoalG) is semidet.
;
; Loop Check Justification.
;

  (= 
    (loop-check-just $G) 
    (loop-check $G 
      (ignore (arg 1 $G Nil))))


;= 	 	 

; ;  show_pred_info( ?F) is semidet.
;
; Show Predicate Info.
;

  (= 
    (show-pred-info-0 $Head) 
    (, 
      (doall (show-call why (predicate-property $Head $_))) 
      (if-then-else 
        (has-cl $Head) 
        (doall (show-call why (get-atoms  &self (= $Head $_)))) 
        (quietly (listing $Head))) 
      (set-det)))/*
show_pred_info(PI):-
   ((
       pi_to_head_l(PI,Head),      
       ; doall(show_call(why,call_u(isa(Head,_)))),
        safe_functor(Head,F,_),
        doall(show_call(why,call_u(isa(F,_)))),
       ((current_predicate(_,M:Head), (\+ predicate_property(M:Head,imported_from(_))))
          -> show_pred_info_0(M:Head); 
             wdmsg_pretty(cannot_show_pred_info(Head))))),!.
*/
;= 	 	 
; ;  show_pred_info_0( ?Head) is semidet.
;
; show Predicate info  Primary Helper.
;



; ===================================================
; Pretty Print Formula
; ===================================================



;= 	 	 

; ;  print_db_items( ?Title, ?Mask, ?What) is semidet.
;
; Print Database Items.
;

  (= 
    (print-db-items $Title $Mask $What) 
    (print-db-items $Title $Mask $Mask $What))

;= 	 	 

; ;  print_db_items( ?Title, ?Mask, ?SHOW, ?What0) is semidet.
;
; Print Database Items.
;
  (= 
    (print-db-items $Title $Mask $SHOW $What0) 
    (, 
      (get-pi $Mask $H) 
      (get-pi $What0 $What) 
      (format 
        (atom $Showing) '~p for ~p...' 
        (:: $Title $What)) 
      (statistics cputime $Now) 
      (is $Max 
        (+ $Now 2)) 
      (set-det) 
      (gripe-time 1.0 
        (doall (, (once (statistics cputime $NewNow)) (< $NewNow $Max) (clause-or-call $H $B) (quietly (pfc-contains-term $What (= $H $B))) (flag print-db-items $LI (+ $LI 1)) (ignore (quietly (pp-item $Showing $SHOW)))))) 
      (ignore (pp-item $Showing done)) 
      (set-det)))


;= 	 	 

; ;  pfc_contains_term( ?What, ?VALUE2) is semidet.
;
; Managed Predicate Contains Term.
;

  (= 
    (pfc-contains-term $What $_) 
    (, 
      (is-ftVar $What) 
      (set-det)))
  (= 
    (pfc-contains-term $What $Inside) 
    (, 
      (compound $What) 
      (set-det) 
      (not (not (, (copy-term-nat $Inside $Inside0) (snumbervars $Inside0) (with_self  (occurs) (contains-term $What $Inside0))))) 
      (set-det)))
  (= 
    (pfc-contains-term $What $Inside) 
    (, 
      (not (not (once (, (subst $Inside $What foundZadooksy $Diff) (\=@= $Diff $Inside))))) 
      (set-det)))



;= 	 	 

; ;  hook_pfc_listing( ?What) is semidet.
;
; Hook To [baseKB:hook_pfc_listing/1] For Module Mpred_listing.
; Hook Managed Predicate Listing.
;

  (, 
    (current-prolog-flag pfc-shared-module $BaseKB) 
    (assert-if-new (= (with_self  $BaseKB (hook-pfc-listing $What)) (on-x-debug (pfc-list-triggers $What)))))

  (thread-local (with_self  (t-l) (/ pfc-list-triggers-disabled 0)))
; listing(L):-locally(t_l:pfc_list_triggers_disabled,listing(L)).


;= 	 	 

; ;  pfc_list_triggers( ?What) is semidet.
;
; Managed Predicate List Triggers.
;

  (= 
    (pfc-list-triggers $_) 
    (, 
      (with_self  
        (t-l) 
        (pfc-list-triggers-disabled)) 
      (set-det)))
  (= 
    (pfc-list-triggers $What) 
    (loop-check (pfc-list-triggers-nlc $What)))


  (meta-predicate (pfc-list-triggers-nlc ?))


;= 	 	 

; ;  pfc_list_triggers_nlc( ?What) is semidet.
;
; Managed Predicate List Triggers Nlc.
;

  (= 
    (pfc-list-triggers-nlc (with_self  $MM $What)) 
    (, 
      (atom $MM) 
      (set-det) 
      (with_self  $MM 
        (pfc-list-triggers $What))))
  (= 
    (pfc-list-triggers-nlc $What) 
    (loop-check 
      (pfc-list-triggers-0 $What) True))


;= 	 	 

; ;  pfc_list_triggers_0( ?What) is semidet.
;
; Managed Predicate list triggers  Primary Helper.
;

  (= 
    (pfc-list-triggers-0 $What) 
    (, 
      (get-pi $What $PI) 
      (\=@= $PI $What) 
      (pfc-list-triggers $PI)))
  (= 
    (pfc-list-triggers-0 $What) 
    (, 
      (nonvar $What) 
      (= $What 
        (~ $Then)) 
      (set-det) 
      (not (not (pfc-list-triggers-1 $Then))) 
      (not (not (pfc-list-triggers-1 $What)))))
  (= 
    (pfc-list-triggers-0 $What) 
    (, 
      (not (not (pfc-list-triggers-1 (~ $What)))) 
      (not (not (pfc-list-triggers-1 $What)))))


;= 	 	 

; ;  pfc_list_triggers_types( ?VALUE1) is semidet.
;
; Managed Predicate list triggers  Types.
;

  (= 
    (pfc_list_triggers_types  Triggers) True)
  (= 
    (pfc_list_triggers_types  Instances) True)
  (= 
    (pfc_list_triggers_types  Subclasses) True)
  (= 
    (pfc_list_triggers_types  ArgTypes) True)
  (= 
    (pfc_list_triggers_types  Arity) True)
  (= 
    (pfc_list_triggers_types  Forward) True)
  (= 
    (pfc_list_triggers_types  Bidirectional) True)
  (= 
    (pfc_list_triggers_types  Backchaining) True)
  (= 
    (pfc_list_triggers_types  Negative) True)
  (= 
    (pfc_list_triggers_types  Sources) True)
  (= 
    (pfc_list_triggers_types  Supports) True)
  (= 
    (pfc_list_triggers_types  Edits) True)

; print_db_items_and_neg(Title,Fact,What):-nonvar(Fact),Fact= ~(_),!,fail.

;= 	 	 

; ;  print_db_items_and_neg( ?Title, ?Fact, ?What) is semidet.
;
; Print Database Items And Negated.
;

  (= 
    (print-db-items-and-neg $Title $Fact $What) 
    (print-db-items $Title $Fact $What))
  (= 
    (print-db-items-and-neg $Title $Fact $What) 
    (print-db-items $Title 
      (~ $Fact) $What))


;= 	 	 

; ;  pfc_list_triggers_1( ?What) is semidet.
;
; Managed Predicate list triggers  Secondary Helper.
;

  (= 
    (pfc-list-triggers-1 $What) 
    (, 
      (var $What) 
      (set-det)))
  (= 
    (pfc-list-triggers-1 (~ $What)) 
    (, 
      (var $What) 
      (set-det)))
  (= 
    (pfc-list-triggers-1 (~ $What)) 
    (set-det))
  (= 
    (pfc-list-triggers-1 $What) 
    (, 
      (print-db-items 'Supports User' 
        (spft-precanonical $P 
          (mfl4 $VarNameZ $_ $_ $_) ax) 
        ($spft$ $P 
          (mfl4 $VarNameZ $_ $_ $_) ax) $What) 
      (print-db-items 'Forward Facts' 
        (nesc $F) $F $What) 
      (print-db-items 'Forward Rules' 
        (==> $_ $_) $What) 
      (ignore (, (\= $What (~ $_)) (safe-functor $What $IWhat $_) (print-db-items-and-neg 'Instance Of' (isa $IWhat $_) $IWhat) (print-db-items-and-neg 'Instances: ' (isa $_ $IWhat) $IWhat) (print-db-items-and-neg 'Subclass Of' (genls $IWhat $_) $IWhat) (print-db-items-and-neg 'Subclasses: ' (genls $_ $IWhat) $IWhat))) 
      (forall 
        (suggest-m $M) 
        (print-db-items 'PFC Watches' 
          (pfc-prop $M $_ $_ $_) $What)) 
      (print-db-items 'Triggers Negative' 
        ($nt$ $_ $_ $_ $_) $What) 
      (print-db-items 'Triggers Goal' 
        ($bt$ $_ $_ $_) $What) 
      (print-db-items 'Triggers Positive' 
        ($pt$ $_ $_ $_) $What) 
      (print-db-items 'Bidirectional Rules' 
        (<==> $_ $_) $What) 
      (dif $A $B) 
      (print-db-items 'Supports Deduced' 
        (spft-precanonical $P $A $B) 
        ($spft$ $P $A $B) $What) 
      (dif $G ax) 
      (print-db-items 'Supports Nonuser' 
        (spft-precanonical $P $G $G) 
        ($spft$ $P $G $G) $What) 
      (print-db-items 'Backchaining Rules' 
        (<- $_ $_) $What) 
      (print-db-items Edits 
        (is-edited-clause $_ $_ $_) $What) 
      (print-db-items Instances 
        (isa $_ $_) $What) 
      (print-db-items Subclasses 
        (genls $_ $_) $What) 
      (print-db-items 'Negative Facts' 
        (~ $_) $What) 
      (print-db-items ArgTypes 
        (argGenls $_ $_ $_) $What) 
      (print-db-items ArgTypes 
        (argIsa $_ $_ $_) $What) 
      (print-db-items ArgTypes 
        (argQuotedIsa $_ $_ $_) $What) 
      (print-db-items ArgTypes 
        (meta-argtypes $_) $What) 
      (print-db-items ArgTypes 
        (predicate-property $G 
          (meta-predicate $G)) $What) 
      (print-db-items ArgTypes 
        (resultGenls $_ $_) $What) 
      (print-db-items ArgTypes 
        (resultIsa $_ $_) $What) 
      (print-db-items Arity 
        (arity $_ $_) $What) 
      (print-db-items Arity 
        (current-predicate $_) $What) 
      (print-db-items 'MetaFacts Predicate' 
        (predicate-property $_ $_) $What) 
      (print-db-items Sources 
        (module-property $_ $_) $What) 
      (print-db-items Sources 
        (predicateConventionMt $_ $_) $What) 
      (print-db-items Sources 
        (source-file $_ $_) $What) 
      (print-db-items Sources 
        (with_self  $_ 
          (man-index $_ $_ $_ $_ $_)) $What) 
      (print-db-items Sources 
        (with_self  $_ 
          ($pldoc $_ $_ $_ $_)) $What) 
      (print-db-items Sources 
        (with_self  $_ 
          ($pred-option $_ $_ $_ $_)) $What) 
      (print-db-items Sources 
        (with_self  $_ 
          ($mode $_ $_)) $What) 
      (set-det))); print_db_items('Edits',is_disabled_clause(_),What),
     



  (= 
    (pinfo (/ $F $A)) 
    (, 
      (listing (/ $F $A)) 
      (safe-functor $P $F $A) 
      (findall $Prop 
        (predicate-property $P $Prop) $List) 
      (wdmsg-pretty (== (pinfo (/ $F $A)) $List)) 
      (set-det)))



; ;  pp_DB is semidet.
;
; Pretty Print All.
;
;pp_DB:- defaultAssertMt(M),clause_b(mtHybrid(M)),!,pp_DB(M).
;pp_DB:- forall(clause_b(mtHybrid(M)),pp_DB(M)).


  (= 
    (pp-DB) 
    (, 
      (prolog-load-context module $M) 
      (pp-DB $M)))


  (= 
    (with-exact-kb $M $G) 
    (with_self  $M 
      (call $G)))


  (= 
    (pp-DB $M) 
    (with-exact-kb $M 
      (with_self  $M 
        (must-det-l (, (pp-db-facts) (pp-db-rules) (pp-db-triggers) (pp-db-supports))))))


  (= 
    (pp-db-facts) 
    (, 
      (context-module $M) 
      (pp-db-facts $M)))

  (= 
    (pp-db-rules) 
    (, 
      (context-module $M) 
      (pp-db-rules $M)))

  (= 
    (pp-db-triggers) 
    (, 
      (context-module $M) 
      (pp-db-triggers $M)))

  (= 
    (pp-db-supports) 
    (, 
      (context-module $M) 
      (pp-db-supports $M)))



  (with_self  
    (system) 
    (import (/ pp-DB 0)))
  (with_self  
    (system) 
    (export (/ pp-DB 0)))

;  pp_db_facts ...


  (= 
    (pp-db-facts $MM) 
    (ignore (pp-db-facts $MM $_ True)))

  (= 
    (pp-db-facts $MM $Pattern) 
    (pp-db-facts $MM $Pattern True))

  (= 
    (pp-db-facts $MM $P $C) 
    (, 
      (pfc-facts-in-kb $MM $P $C $L) 
      (pfc-classifyFacts $L $User $Pfc $ZRule) 
      (length $User $UserSize) 
      (length $Pfc $PfcSize) 
      (format "~N~nUser added facts in [~w]: ~w" 
        (:: $MM $UserSize)) 
      (pp-db-items $User) 
      (format "~N~nSystem added facts in [~w]: ~w" 
        (:: $MM $PfcSize)) 
      (pp-db-items $Pfc)))

;  printitems clobbers it''s arguments - beware!



  (= 
    (pp-db-items $Var) 
    (, 
      (var $Var) 
      (set-det) 
      (format "~N  ~p" 
        (:: $Var))))
  (= 
    (pp-db-items Nil) 
    (set-det))
  (= 
    (pp-db-items (Cons  $H $T)) 
    (, 
      (set-det) 
      (format "~N  ~p" 
        (:: $H)) 
      (nonvar $T) 
      (pp-db-items $T))); numbervars(H,0,_),


  (= 
    (pp-db-items (>= $P $FT)) 
    (, 
      (is-hidden-pft $P $FT) 
      (set-det)))
  
  (= 
    (pp-db-items $Var) 
    (format "~N  ~p" 
      (:: $Var)))



  (= 
    (is-hidden-pft $_ 
      (, 
        (mfl4 $VarNameZ $BaseKB $_ $_) 
        (ax))) 
    (, 
      (current-prolog-flag pfc-shared-module $BaseKB) 
      (set-det)))
  (= 
    (is_hidden_pft  $_ 
      (,  
        (why_marked  $_) ax)) True)



  (= 
    (pp-mask $Type $MM $Mask) 
    (, 
      (bagof-or-nil $Mask 
        (lookup-kb $MM $Mask) $Nts) 
      (list-to-set-variant $Nts $NtsSet) 
      (set-det) 
      (pp-mask-list $Type $MM $NtsSet)))


  (= 
    (pp-mask-list $Type $MM Nil) 
    (, 
      (set-det) 
      (format "~N~nNo ~ws in [~w]...~n" 
        (:: $Type $MM))))
  (= 
    (pp-mask-list $Type $MM $NtsSet) 
    (, 
      (length $NtsSet $Size) 
      (set-det) 
      (format "~N~n~ws (~w) in [~w]...~n" 
        (:: $Type $Size $MM)) 
      (pp-db-items $NtsSet)))


  (= 
    (pfc_classifyFacts  () () () ()) True)

  (= 
    (pfc-classifyFacts 
      (Cons  $H $T) $User $Pfc 
      (Cons  $H $Rule)) 
    (, 
      (pfcType $H 
        (rule $_)) 
      (set-det) 
      (pfc-classifyFacts $T $User $Pfc $Rule)))

  (= 
    (pfc-classifyFacts 
      (Cons  $H $T) 
      (Cons  $H $User) $Pfc $Rule) 
    (, 
      (get-first-user-reason $H $UU) 
      (set-det) 
      (pfc-classifyFacts $T $User $Pfc $Rule))); get_source_uu(UU),


  (= 
    (pfc-classifyFacts 
      (Cons  $H $T) $User 
      (Cons  $H $Pfc) $Rule) 
    (pfc-classifyFacts $T $User $Pfc $Rule))



  (= 
    (pp-db-rules $MM) 
    (, 
      (pp-mask "Forward Rule" $MM 
        (==> $_ $_)) 
      (pp-mask "Bidirectional Rule" $MM 
        (<==> $_ $_)) 
      (pp-mask "Backchaining Rule" $MM 
        (<- $_ $_)) 
      (pp-mask "Implication Rule" $MM 
        (=> $_ $_)) 
      (pp-mask "Bi-conditional Rule" $MM 
        (<=> $_ $_)) 
      (pp-mask "Negative Fact" $MM 
        (~ $_)) 
      (set-det))); pp_mask("Material-impl Rule",MM,<=(_,_)),
; pp_mask("MeTTa Rule",MM,:-(_,_)),




  (= 
    (pp-db-triggers $MM) 
    (, 
      (pp-mask "Positive trigger(+)" $MM 
        ($pt$ $_ $_)) 
      (pp-mask "Negative trigger(-)" $MM 
        ($nt$ $_ $_ $_)) 
      (pp-mask "Goal trigger(?)" $MM 
        ($bt$ $_ $_)) 
      (set-det)))


  (= 
    (pp-db-supports $MM) 
    (, 
      (format "~N~nSupports in [~w]...~n" 
        (:: $MM)) 
      (with-exact-kb $MM 
        (bagof-or-nil 
          (>= $P $S) 
          (pfcGetSupport $P $S) $L)) 
      (list-to-set-variant $L $LS) 
      (pp-db-items $LS) 
      (set-det))); temporary hack.




  (= 
    (list-to-set-variant $List $Unique) 
    (, 
      (list-unique-1 $List Nil $Unique) 
      (set-det)))


  (= 
    (list_unique_1  () $_ ()) True)
  (= 
    (list-unique-1 
      (Cons  $X $Xs) $So_far $Us) 
    (, 
      (memberchk-variant $X $So_far) 
      (set-det) 
      (list-unique-1 $Xs $So_far $Us)))
  (= 
    (list-unique-1 
      (Cons  $X $Xs) $So_far 
      (Cons  $X $Us)) 
    (list-unique-1 $Xs 
      (Cons  $X $So_far) $Us))


; ; 	memberchk_variant(+Val, +List)
;
;	Deterministic check of membership using =@= rather than
;	unification.


  (= 
    (memberchk-variant $X 
      (Cons  $Y $Ys)) 
    (if-then-else 
      (=@= $X $Y) True 
      (memberchk-variant $X $Ys)))


  (= 
    (lookup-kb $MM $MHB) 
    (, 
      (strip-module $MHB $M $HB) 
      (expand-to-hb $HB $H $B) 
      (or 
        (each-then 
          (with_self  $MM 
            (clause 
              (with_self  $M $H) $B $Ref)) True) 
        (with_self  $M 
          (clause 
            (with_self  $MM $H) $B $Ref))) 
      (clause-property $Ref 
        (module $MM))));clause_ref_module(Ref),



; ;  has_cl( +H) is semidet.
;
; Has Clause.
;

  (= 
    (has-cl $H) 
    (predicate-property $H 
      (number-of-clauses $_)))



; ;  clause_or_call( +H, ?B) is semidet.
;
; Clause Or Call.
;

; PFC2.0 clause_or_call(M:H,B):-is_ftVar(M),!,no_repeats(M:F/A,(f_to_mfa(H,M,F,A))),M:clause_or_call(H,B).
; PFC2.0 clause_or_call(isa(I,C),true):-!,call_u(isa_asserted(I,C)).
; PFC2.0 clause_or_call(genls(I,C),true):-!,on_x_log_throw(call_u(genls(I,C))).

  (= 
    (clause-or-call $H $B) 
    (get-atoms  &self 
      (= 
        (src_edit  $Before $H) $B)))
  (= 
    (clause-or-call $H $B) 
    (, 
      (predicate-property $H 
        (number-of-clauses $C)) 
      (predicate-property $H 
        (number-of-rules $R)) 
      (if-then-else 
        (< 
          (* $R 2) $C) 
        (or 
          (each-then 
            (get-atoms  &self 
              (= $H $B)) 
            (set-det)) fail) 
        (get-atoms  &self 
          (= $H $B)))))
; PFC2.0 clause_or_call(H,true):- call_u(should_call_for_facts(H)),no_repeats(on_x_log_throw(H)).

  
  (= 
    (pfc-facts-in-kb $MM $P $C $L) 
    (with-exact-kb $MM 
      (setof-or-nil $P 
        (pfcFact $P $C) $L)))/*



; as opposed to simply using clause(H,true).

; ;  should_call_for_facts( +H) is semidet.
;
; Should Call For Facts.
;
should_call_for_facts(H):- get_functor(H,F,A),call_u(should_call_for_facts(H,F,A)).

; ;  should_call_for_facts( +VALUE1, ?F, ?VALUE3) is semidet.
;
; Should Call For Facts.
;
should_call_for_facts(_,F,_):- a(MeTTaSideEffects,F),!,fail.
should_call_for_facts(H,_,_):- modulize_head(H,HH), \+ predicate_property(HH,number_of_clauses(_)),!.
should_call_for_facts(_,F,A):- clause_b(pfc_prop(_M,F,A,pfcRHS)),!,fail.
should_call_for_facts(_,F,A):- clause_b(pfc_prop(_M,F,A,pfcMustFC)),!,fail.
should_call_for_facts(_,F,_):- a(MeTTaDynamic,F),!.
should_call_for_facts(_,F,_):- \+ a(pfcControlled,F),!.

       */
; ;  no_side_effects( +P) is semidet.
;
; No Side Effects.
;
;no_side_effects(P):-  (\+ is_side_effect_disabled->true;(get_functor(P,F,_),a(MeTTaSideEffects,F))).



  (= 
    (lookup-spft $P $F $T) 
    (pfcGetSupport $P 
      (, $F $T)))
; why_dmsg(Why,Msg):- with_current_why(Why,dmsg_pretty(Msg)).


  (= 
    (u-to-uu $U 
      (, $U 
        (ax))) 
    (, 
      (var $U) 
      (set-det)))
  (= 
    (u-to-uu $U $U) 
    (, 
      (nonvar $U) 
      (= $U 
        (, $_ $_)) 
      (set-det)))
  (= 
    (u-to-uu 
      (Cons  $U $More) $UU) 
    (, 
      (list-to-conjuncts 
        (Cons  $U $More) $C) 
      (set-det) 
      (u-to-uu $C $UU)))
  (= 
    (u-to-uu $U 
      (, $U 
        (ax))) 
    (set-det))

; ;  get_source_uu( :TermU) is det.
;
; Get Source Ref (Current file or User)
;

  (module-transparent (/ get-source-uu 1))

  (= 
    (get-source-uu $UU) 
    (, 
      (must (, (get-source-ref1 $U) (u-to-uu $U $UU))) 
      (set-det)))


  (= 
    (get-source-ref1 $U) 
    (, 
      (quietly-ex (or (, (current-why $U) (nonvar $U)) (ground $U))) 
      (set-det)))
  (= 
    (get-source-ref1 $U) 
    (, 
      (quietly-ex (get-source-mfl $U)) 
      (set-det)))



  (module-transparent (/ get-why-uu 1))

  (= 
    (get-why-uu $UU) 
    (, 
      (findall $U 
        (current-why $U) $Whys) 
      (\== $Whys Nil) 
      (set-det) 
      (u-to-uu $Whys $UU)))
  (= 
    (get-why-uu $UU) 
    (, 
      (get-source-uu $UU) 
      (set-det)))



  (= 
    (get-startup-uu $UU) 
    (, 
      (prolog-load-context module $CM) 
      (u-to-uu 
        (, 
          (isRuntime) 
          (mfl4 $VarNameZ $CM user-input $_)) $UU) 
      (varnames-load-context $VarNameZ)))


  (= 
    (is-user-reason (, $_ $U)) 
    (atomic $U))

  (= 
    (only-is-user-reason (, $U1 $U2)) 
    (freeze $U2 
      (is-user-reason (, $U1 $U2))))


  (= 
    (is-user-fact $P) 
    (, 
      (get-first-user-reason $P $UU) 
      (is-user-reason $UU)))



  (= 
    (get-first-real-user-reason $P $UU) 
    (, 
      (nonvar $P) 
      (= $UU 
        (, $F $T)) 
      (quietly-ex (or (each-then (, (lookup-spft $P $F $T) (is-user-reason $UU)) True) (or (each-then (, (lookup-spft $P $F $T) (not (is-user-reason $UU))) (, (set-det) (fail))) fail)))))


  (= 
    (get-first-user-reason $P 
      (, $F $T)) 
    (, 
      (= $UU 
        (, $F $T)) 
      (or 
        (each-then 
          (, 
            (lookup-spft $P $F $T) 
            (is-user-reason $UU)) True) 
        (or 
          (each-then 
            (, 
              (lookup-spft $P $F $T) 
              (not (is-user-reason $UU))) 
            (, 
              (set-det) 
              (fail))) 
          (, 
            (clause-asserted $P) 
            (get-source-uu $UU) 
            (is-user-reason $UU)))) 
      (set-det)))
  (= 
    (get-first-user-reason $_ $UU) 
    (, 
      (get-why-uu $UU) 
      (is-user-reason $UU) 
      (set-det)))
  (= 
    (get-first-user-reason $_ $UU) 
    (, 
      (get-why-uu $UU) 
      (set-det)))
  (= 
    (get-first-user-reason $P $UU) 
    (, 
      (must-ex (ignore (get-first-user-reason0 $P $UU))) 
      (set-det)))

  (= 
    (get-first-user-reason0 $_ 
      (, $M 
        (ax))) 
    (get-source-mfl $M))

;get_first_user_reason(_,UU):- get_source_uu(UU),\+is_user_reason(UU). ; ignore(get_source_uu(UU)).

;:- export(pfc_at_box:defaultAssertMt/1).
;:- system:import(defaultAssertMt/1).
;:- pfc_lib:import(pfc_at_box:defaultAssertMt/1).


  (module-transparent (/ get-source-mfl 1))

  (= 
    (get-source-mfl $M) 
    (, 
      (current-why $M) 
      (nonvar $M) 
      (= $M 
        (mfl4 $VarNameZ $_ $_ $_))))
  (= 
    (get-source-mfl (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (defaultAssertMt $M) 
      (current-source-location $F $L) 
      (varnames-load-context $VarNameZ)))

  (= 
    (get-source-mfl (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (defaultAssertMt $M) 
      (current-source-file (with_self  $F $L)) 
      (varnames-load-context $VarNameZ)))
  (= 
    (get-source-mfl (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (defaultAssertMt $M) 
      (current-source-file $F) 
      (varnames-load-context $VarNameZ)))
  (= 
    (get-source-mfl (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (defaultAssertMt $M) 
      (varnames-load-context $VarNameZ)))
;get_source_mfl(M):- (defaultAssertMt(M)->true;(atom(M)->(module_property(M,class(_)),!);(var(M),module_property(M,class(_))))).
  (= 
    (get-source-mfl $M) 
    (, 
      (fail) 
      (dtrace) 
      (if-then-else 
        (defaultAssertMt $M) 
        (set-det) 
        (if-then-else 
          (atom $M) 
          (, 
            (module-property $M 
              (class $_)) 
            (set-det)) 
          (pfcError (no-source-ref $M))))))


  (= 
    (is_source_ref1  $_) True)


  (= 
    (defaultAssertMt $M) 
    (prolog-load-context module $M))




  (= 
    (pfc-pp-db-justifications $P $Js) 
    (, 
      (show-current-source-location) 
      (must-ex (quietly-ex (, (format "~NJustifications for ~p:" (:: $P)) (pfc-pp-db-justification1 '' $Js 1))))))


  (= 
    (pfc_pp_db_justification1  $Prefix () $_) True)

  (= 
    (pfc-pp-db-justification1 $Prefix 
      (Cons  $J $Js) $N) 
    (, 
      (nl) 
      (pfc-pp-db-justifications2 $Prefix $J $N 1) 
      (is $N2 
        (+ $N 1)) 
      (pfc-pp-db-justification1 $Prefix $Js $N2))); show one justification and recurse.
;reset_shown_justs,



  (= 
    (pfc_pp_db_justifications2  $Prefix () $_ $_) True)

  (= 
    (pfc-pp-db-justifications2 $Prefix 
      (Cons  $C $Rest) $JustNo $StepNo) 
    (if-then-else 
      (nb-hasval $last-printed $C) 
      (dmsg-pretty (chasVal $C)) 
      (, 
        (if-then-else 
          (== $StepNo 1) 
          (fmt ~N~n Nil) True) 
        (with_self  
          (backward-compatibility) 
          (sformat $LP ' ~w.~p.~p' 
            (:: $Prefix $JustNo $StepNo))) 
        (nb-pushval $last-printed $LP) 
        (format "~N  ~w ~p" 
          (:: $LP $C)) 
        (ignore (loop-check (pfcWhy-sub-sub $C))) 
        (is $StepNext 
          (+ 1 $StepNo)) 
        (pfc-pp-db-justifications2 $Prefix $Rest $JustNo $StepNext))))



  (= 
    (pfcWhy-sub-sub $P) 
    (, 
      (justifications $P $Js) 
      (clear-proofs) 
      (if-then-else 
        (nb-hasval $last-printed $P) 
        (dmsg-pretty (hasVal $P)) 
        (, 
          (assertz (with_self  (t-l) (whybuffer $P $Js))) 
          (nb-getval $last-printed $LP) 
          (pfc-pp-db-justification1 $LP $Js 1) 
          (fmt ~N~n Nil))))); retractall_u(t_l:whybuffer(_,_)),



  (= 
    (nb-pushval $Name $Value) 
    (if-then-else 
      (nb-current $Name $Before) 
      (nb-setval $Name 
        (Cons  $Value $Before)) 
      (nb-setval $Name 
        (:: $Value))))

  (= 
    (nb-peekval $Name $Value) 
    (nb-current $Name 
      (Cons  $Value $Before)))

  (= 
    (nb-hasval $Name $Value) 
    (, 
      (nb-current $Name $List) 
      (member $Value $List)))

  (= 
    (nb-popval $Name $Value) 
    (if-then 
      (nb-current $Name 
        (Cons  $Value $Before)) 
      (nb-setval $Name $Before)))


  (= 
    (reset-shown-justs) 
    (, 
      (remove-all-atoms  &self 
        (:  t_l 
          (shown_why  $_))) 
      (nop (color-line red 1))))

  (= 
    (clear-proofs) 
    (, 
      (remove-all-atoms  &self 
        (:  t_l 
          (whybuffer  $P $Js))) 
      (nop (color-line cyan 1))))



  (= 
    (lookup-spft-match $A $B $C) 
    (, 
      (copy-term $A $AA) 
      (lookup-spft $A $B $C) 
      (=@= $A $AA)))


  (= 
    (lookup-spft-match-deeper $H $Fact $Trigger) 
    (, 
      (copy-term $H $HH) 
      (lookup-spft 
        (= $H $B) $Fact $Trigger) 
      (=@= $H $HH)))


  (= 
    (lookup-spft-match-first $A $B $C) 
    (, 
      (nonvar $A) 
      (set-det) 
      (no-repeats (or (lookup-spft-match $A $B $C) (lookup-spft $A $B $C)))))

  (= 
    (lookup-spft-match-first $A $B $C) 
    (lookup-spft $A $B $C))


; ;  pfc_is_info( :TermC) is semidet.
;
; PFC If Is A Info.
;

  (= 
    (pfc-is-info (, $CWC $Info)) 
    (or 
      (, 
        (atom $CWC) 
        (is-a-info $CWC)) 
      (pfc-is-info $Info)))
  (= 
    (pfc-is-info (pfc-bc-only $C)) 
    (, 
      (is-ftNonvar $C) 
      (set-det)))
  (= 
    (pfc-is-info (infoF $C)) 
    (, 
      (is-ftNonvar $C) 
      (set-det)))
  (= 
    (pfc_is_info  
      (inherit_above  $_ $_)) True)



  (= 
    (is_a_info  fail) True)
  (= 
    (is-a-info $CWC) 
    (is-pfc-chained $CWC))


  (= 
    (is_pfc_chained  cwc) True)
  (= 
    (is_pfc_chained  awc) True)
  (= 
    (is_pfc_chained  zwc) True)
  (= 
    (is_pfc_chained  fwc) True)
  (= 
    (is_pfc_chained  bwc) True)
  (= 
    (is_pfc_chained  wac) True)


  (forall 
    (is-pfc-chained $Op) 
    (assert-if-new $Op))


  (= 
    (reserved-body $B) 
    (, 
      (var $B) 
      (set-det) 
      (fail)))
  (= 
    (reserved_body  
      (attr_bind  $_)) True)
  (= 
    (reserved_body  
      (attr_bind  $_ $_)) True)
  (= 
    (reserved-body $B) 
    (reserved-body-helper $B))


  (= 
    (reserved-body-helper $B) 
    (, 
      (not (compound $B)) 
      (set-det) 
      (fail)))
  (= 
    (reserved-body-helper (, $ZAWC $_)) 
    (, 
      (atom $ZAWC) 
      (is-pfc-chained $ZAWC)))


  (= 
    (call-only-based-mfl $H 
      (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (ignore (or (predicate-property $H (imported-from $M)) (predicate-property $H (module $M)))) 
      (ignore (predicate-property $H (line-count $L))) 
      (ignore (or (source-file (with_self  $M $H) $F) (or (predicate-property $H (file $F)) (, (predicate-property $H foreign) (= $F foreign)))))))


  (= 
    (uses-call-only $H) 
    (, 
      (predicate-property $H foreign) 
      (set-det)))
  (= 
    (uses-call-only $H) 
    (, 
      (predicate-property $H $_) 
      (not (predicate-property $H interpreted)) 
      (set-det)))


  (= 
    (clause-match $H $B 
      (uses-call-only $H)) 
    (, 
      (uses-call-only $H) 
      (set-det)))
  (= 
    (clause-match $H $B $Ref) 
    (, 
      (clause-asserted $H $B $Ref) 
      (set-det)))
  (= 
    (clause-match $H $B $Ref) 
    (, 
      (or 
        (each-then 
          (, 
            (copy-term $H $HH) 
            (clause $H $B $Ref) 
            (=@= $H $HH)) True) 
        (clause $H $B $Ref)) 
      (not (reserved-body-helper $B))))


  (= 
    (find-mfl $C $MFL) 
    (lookup-spft-match $C $MFL ax))
  (= 
    (find-mfl $C $MFL) 
    (if-then 
      (unwrap-litr0 $C $UC) 
      (if-then 
        (\== $C $UC) 
        (find-mfl $UC $MFL))))
  (= 
    (find-mfl $C $MFL) 
    (if-then-else 
      (, 
        (expand-to-hb $C $H $B) 
        (find-hb-mfl $H $B $Ref $MFL)) True 
      (, 
        (clause-match $H $B $Ref) 
        (find-hb-mfl $H $B $Ref $MFL))))


  (= 
    (find-hb-mfl $H $B $Ref 
      (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (atomic $Ref) 
      (clause-property $Ref 
        (line-count $L)) 
      (clause-property $Ref 
        (file $F)) 
      (clause-property $Ref 
        (module $M)))) 
  (= 
    (find-hb-mfl $H $B $_ 
      (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (lookup-spft-match-first 
        (= $H $B) 
        (mfl4 $VarNameZ $M $F $L) $_) 
      (set-det)))
  (= 
    (find-hb-mfl $H $B $Ref 
      (mfl4 $VarNameZ $M $F $L)) 
    (, 
      (lookup-spft-match-first $H 
        (mfl4 $VarNameZ $M $F $L) $_) 
      (ground $B)))
  (= 
    (find-hb-mfl $H $B 
      (uses-call-only $H) $MFL) 
    (, 
      (set-det) 
      (call-only-based-mfl $H $MFL)))


  (fixup-exports)
;:- current_MeTTa_flag(pfc_shared_module,BaseKB),fixup_module_exports_into(BaseKB).
  (fixup-module-exports-into system)


  (= 
    (mpred-rule-hb $C $_) 
    (, 
      (not (compound $C)) 
      (set-det) 
      (fail)))
  (= 
    (mpred-rule-hb 
      (= $H $B) $H $B) 
    (set-det))
  (= 
    (mpred-rule-hb 
      (<- $H $B) $H $B) 
    (set-det))
  (= 
    (mpred-rule-hb 
      (==> $B $H) $H $B) 
    (set-det))
  (= 
    (mpred-rule-hb 
      (==> $H) $H True) 
    (set-det))
  (= 
    (mpred-rule-hb 
      (<==> $HB1 $HB2) 
      (, $H1 $H2) 
      (, $B1 $B2)) 
    (, 
      (set-det) 
      (or 
        (mpred-rule-hb 
          (==> $HB1 $HB2) $H2 $B2) 
        (mpred-rule-hb 
          (==> $HB2 $HB1) $H1 $B1))))


  (module-transparent (/ get-assertion-head-arg 3))

  (= 
    (get-assertion-head-arg $N $P $E) 
    (, 
      (get-assertion-head-unnegated $P $PP) 
      (set-det) 
      (arg $N $PP $E)))


  (= 
    (get-assertion-head-unnegated $P $PP) 
    (, 
      (mpred-rule-hb $P $H $_) 
      (if-then-else 
        (pfc-unnegate $H $PP) True 
        (== $H $PP)))) 

  (= 
    (replace-arg $Q $N $NEW $R) 
    (, 
      (duplicate-term $Q $R) 
      (= $Q $R) 
      (nb-setarg $N $R $NEW)))

;; if_missing_mask( +Q, ?R, ?Test) is semidet.
;
; If Missing Mask.
;


  (= 
    (if-missing-mask 
      (with_self  $M $Q) 
      (with_self  $M $R) 
      (with_self  $M $Test)) 
    (, 
      (nonvar $Q) 
      (set-det) 
      (if-missing-mask $Q $R $Test)))
  (= 
    (if-missing-mask $Q 
      (~ $Q) 
      (not $Q)) 
    (, 
      (not (is-ftCompound $Q)) 
      (set-det)))

;if_missing_mask(ISA, ~ ISA, \+ ISA):- functor(ISA,F,1),(F==tSwim;call_u(functorDeclares(F))),!.
  (= 
    (if-missing-mask $HB $RO $TestO) 
    (, 
      (once (mpred-rule-hb $HB $H $B)) 
      (\== $B True) 
      (\== $HB $H) 
      (set-det) 
      (if-missing-mask $H $R $TestO) 
      (subst $HB $H $R $RO)))

  (= 
    (if-missing-mask $ISA $ISA 
      (not $ISA)) 
    (, 
      (functor $ISA $F 1) 
      (set-det))); (F==tSwim;call_u(functorDeclares(F))),!.

  (= 
    (if-missing-mask $Q $R $Test) 
    (, 
      (which-missing-argnum $Q $N) 
      (if-missing-n-mask $Q $N $R $Test) 
      (set-det)))

  (= 
    (if_missing_mask  $ISA 
      (~  $ISA) 
      (\+  $ISA)) True)

;; if_missing_n_mask( +Q, ?N, ?R, ?Test) is semidet.
;
; If Missing Mask.
;

  (= 
    (if-missing-n-mask $Q $N $R $Test) 
    (, 
      (get-assertion-head-arg $N $Q $Was) 
      (if-then-else 
        (nonvar $R) 
        (, 
          (which-missing-argnum $R $RN) 
          (get-assertion-head-arg $RN $R $NEW)) 
        (replace-arg $Q $N $NEW $R)) 
      (set-det) 
      (= $Test 
        (with_self  
          (dif) 
          (dif $Was $NEW)))))


  (= 
    (which-missing-argnum $Q $N) 
    (, 
      (compound $Q) 
      (not (compound-name-arity $Q $_ 0)) 
      (must (, (acyclic-term $Q) (is-ftCompound $Q) (get-functor $Q $F $A))) 
      (\= $F t) 
      (if-then-else 
        (call-u (singleValuedInArg $F $N)) True 
        (which-missing-argnum $Q $F $A $N))))/*
Old version
if_missing_mask(Q,N,R,dif:dif(Was,NEW)):- 
 must((is_ftNonvar(Q),acyclic_term(Q),acyclic_term(R),functor(Q,F,A),functor(R,F,A))),
  (singleValuedInArg(F,N) -> 
    (get_assertion_head_arg(N,Q,Was),replace_arg(Q,N,NEW,R));
    ((get_assertion_head_arg(N,Q,Was),is_ftNonvar(Was)) -> replace_arg(Q,N,NEW,R);
        (N=A,get_assertion_head_arg(N,Q,Was),replace_arg(Q,N,NEW,R)))).
*/
;; which_missing_argnum( +VALUE1, ?VALUE2) is semidet.
;
; Which Missing Argnum.
;


  (= 
    (which-missing-argnum $_ $_ 1 $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (which-missing-argnum $Q $F $A $N) 
    (, 
      (between $A 1 $N) 
      (get-assertion-head-arg $N $Q $Was) 
      (is-ftNonvar $Was)))


  (set-prolog-flag pfc-term-expansion False)

  (multifile (with_self  (system) (/ term-expansion 4)))

  (= 
    (with_self  
      (system) 
      (term-expansion $I $S0 $O $S1)) 
    (if-then 
      (, 
        (not (current-prolog-flag pfc-term-expansion False)) 
        (or 
          (not (not (, (source-location $File $_) (atom-concat $_ .pfc.pl $File)))) 
          (current-prolog-flag pfc-term-expansion True))) 
      (if-then 
        (prolog-load-context term $T) 
        (if-then 
          (== $T $I) 
          (if-then 
            (pfc-term-expansion $I $O) 
            (if-then 
              (\=@= $I $O) 
              (, 
                (= $S0 $S1) 
                (fbugio (--> $I $O)))))))));use_pfc_term_expansion, ; trace,



; :- endif.























;; is_fc_body( +P) is semidet.
;
; If Is A Forward Chaining Body.
;

  (= 
    (is-fc-body $P) 
    (has-body-atom fwc $P))

;; is_bc_body( +P) is semidet.
;
; If Is A Backchaining Body.
;

  (= 
    (is-bc-body $P) 
    (has-body-atom bwc $P))

;; is_action_body( +P) is semidet.
;
; If Is A Action Body.
;

  (= 
    (is-action-body $P) 
    (has-body-atom wac $P))



;; has_body_atom( +WAC, ?P) is semidet.
;
; Has Body Atom.
;

  (= 
    (has-body-atom $WAC $P) 
    (, 
      (call (if-then-else (== $WAC $P) True (, (is-ftCompound $P) (get-assertion-head-arg 1 $P $E) (has-body-atom $WAC $E)))) 
      (set-det)))


  (= 
    (same-functors $Head1 $Head2) 
    (, 
      (must-det (get-unnegated-functor $Head1 $F1 $A1)) 
      (must-det (get-unnegated-functor $Head2 $F2 $A2)) 
      (set-det) 
      (= $F1 $F2) 
      (= $A1 $A2)))/*
has_body_atom(WAC,P,Rest):- call(WAC==P -> Rest = true ; (is_ftCompound(P),functor(P,F,A),is_atom_body_pfa(WAC,P,F,A,Rest))).
is_atom_body_pfa(WAC,P,F,2,Rest):-get_assertion_head_arg(1,P,E),E==WAC,get_assertion_head_arg(2,P,Rest),!.
is_atom_body_pfa(WAC,P,F,2,Rest):-get_assertion_head_arg(2,P,E),E==WAC,get_assertion_head_arg(1,P,Rest),!.
*/


;; mpred_update_literal( +P, ?N, ?Q, ?R) is semidet.
;
; PFC Update Literal.
;

  (= 
    (mpred-update-literal $P $N $Q $R) 
    (, 
      (get-assertion-head-arg $N $P $UPDATE) 
      (call (replace-arg $P $N $Q_SLOT $Q)) 
      (must (call-u $Q)) 
      (update-value $Q_SLOT $UPDATE $NEW) 
      (replace-arg $Q $N $NEW $R)))


; '$spft'(MZ,5,5,5).

;; update_single_valued_arg(+Module, +P, ?N) is semidet. 
;
; Update Single Valued Argument.
;

  (module-transparent (/ update-single-valued-arg 3))


  (= 
    (update-single-valued-arg $M 
      (with_self  $M $Pred) $N) 
    (, 
      (set-det) 
      (update-single-valued-arg $M $Pred $N)))
  (= 
    (update-single-valued-arg $_ 
      (with_self  $M $Pred) $N) 
    (, 
      (set-det) 
      (update-single-valued-arg $M $Pred $N)))

  (= 
    (update-single-valued-arg world $P $N) 
    (, 
      (set-det) 
      (current-prolog-flag pfc-shared-module $BaseKB) 
      (update-single-valued-arg $BaseKB $P $N)))
  (= 
    (update-single-valued-arg $M $P $N) 
    (, 
      (ibreak) 
      (not (clause-b (mtHybrid $M))) 
      (trace) 
      (clause-b (mtHybrid $M2)) 
      (set-det) 
      (update-single-valued-arg $M2 $P $N)))

  (= 
    (update-single-valued-arg $M $P $N) 
    (, 
      (get-assertion-head-arg $N $P $UPDATE) 
      (is-relative $UPDATE) 
      (set-det) 
      (dtrace) 
      (ibreak) 
      (replace-arg $P $N $OLD $Q) 
      (must-det-l (, (clause-u $Q) (update-value $OLD $UPDATE $NEW) (not (is-relative $NEW)) (replace-arg $Q $N $NEW $R))) 
      (set-det) 
      (update-single-valued-arg $M $R $N)))


  (= 
    (update-single-valued-arg $M $P $N) 
    (call-u (must-det-l (, (call-u (mtHybrid $M)) (\= mpred-type-args $M) (\= mpred-kb-ops $M) (get-assertion-head-arg $N $P $UPDATE) (replace-arg $P $N $Q_SLOT $Q) (var $Q_SLOT) (same-functors $P $Q) (must-det-l (, (assertz (with_self  $M $P)) (doall (, (lookup-u (with_self  $M $Q) $E) (\== $UPDATE $Q_SLOT) (erase $E) (mpred-unfwc1 (with_self  $M $Q)))))))))); current_why(U),
; rtrace(attvar_op(assert_if_new,M:'$spft'(MZ,P,U,ax))),
; (call_u(P)->true;(assertz_mu(P))),


; ======================= 
; utils
; ======================= 

;; map_literals( +P, ?G) is semidet.
;
; Map Literals.
;

  (= 
    (map-literals $P $G) 
    (map-literals $P $G Nil))


;; map_literals( +VALUE1, :TermH, ?VALUE3) is semidet.
;
; Map Literals.
;
  (= 
    (map-literals $_ $H $_) 
    (, 
      (is-ftVar $H) 
      (set-det))) ; skip over it
  (= 
    (map-literals $_ Nil $_) 
    (set-det))
  (= 
    (map-literals $Pred 
      (, $H $T) $S) 
    (, 
      (set-det) 
      (apply $Pred 
        (Cons  $H $S)) 
      (map-literals $Pred $T $S)))
  (= 
    (map-literals $Pred 
      (Cons  $H $T) $S) 
    (, 
      (set-det) 
      (apply $Pred 
        (Cons  $H $S)) 
      (map-literals $Pred $T $S)))
  (= 
    (map-literals $Pred $H $S) 
    (, 
      (mpred-literal $H) 
      (must (apply $Pred (Cons  $H $S))) 
      (set-det)))
  (= 
    (map-literals $Pred $H $S) 
    (, 
      (not (is-ftCompound $H)) 
      (set-det))) ; skip over it
  (= 
    (map-literals $Pred $H $S) 
    (, 
      (=.. $H $List) 
      (set-det) 
      (map-literals $Pred $List $S) 
      (set-det)))



;; map_unless( :PRED1Test, ?Pred, ?H, ?S) is semidet.
;
; Map Unless.
;

  (= 
    (map-unless $Test $Pred $H $S) 
    (, 
      (call $Test $H) 
      (ignore (apply $Pred (Cons  $H $S))) 
      (set-det)))
  (= 
    (map-unless $Test $_ Nil $_) 
    (set-det))
  (= 
    (map-unless $Test $Pred $H $S) 
    (, 
      (not (is-ftCompound $H)) 
      (set-det))) ; skip over it
  (= 
    (map-unless $Test $Pred 
      (, $H $T) $S) 
    (, 
      (set-det) 
      (apply $Pred 
        (Cons  $H $S)) 
      (map-unless $Test $Pred $T $S)))
  (= 
    (map-unless $Test $Pred 
      (Cons  $H $T) $S) 
    (, 
      (set-det) 
      (apply $Pred 
        (Cons  $H $S)) 
      (map-unless $Test $Pred $T $S)))
  (= 
    (map-unless $Test $Pred $H $S) 
    (, 
      (=.. $H $List) 
      (set-det) 
      (map-unless $Test $Pred $List $S) 
      (set-det)))



  (meta-predicate (map-first-arg * +))
;; map_first_arg( +Pred, ?List) is semidet.
;
; PFC Maptree.
;

  (= 
    (map-first-arg $CMPred $List) 
    (, 
      (strip-module $CMPred $CM $Pred) 
      (map-first-arg $CM $Pred $List Nil)))


  (meta-predicate (map-first-arg + * + +))
;; map_first_arg( +Pred, :TermH, ?S) is semidet.
;
; PFC Maptree.
;

  (= 
    (map-first-arg $CM $Pred $H $S) 
    (, 
      (is-ftVar $H) 
      (set-det) 
      (with_self  $CM 
        (apply $Pred 
          (Cons  $H $S)))))
  (= 
    (map-first-arg $_ $_ Nil $_) 
    (set-det))
  (= 
    (map-first-arg $CM $Pred 
      (, $H $T) $S) 
    (, 
      (set-det) 
      (map-first-arg $CM $Pred $H $S) 
      (map-first-arg $CM $Pred $T $S)))
  (= 
    (map-first-arg $CM $Pred 
      (or $H $T) $S) 
    (or 
      (, 
        (set-det) 
        (map-first-arg $CM $Pred $H $S)) 
      (map-first-arg $CM $Pred $T $S)))
  (= 
    (map-first-arg $CM $Pred 
      (Cons  $H $T) $S) 
    (, 
      (set-det) 
      (with_self  $CM 
        (apply $Pred 
          (Cons  $H $S))) 
      (map-first-arg $CM $Pred $T $S)))
  (= 
    (map-first-arg $CM $Pred $H $S) 
    (with_self  $CM 
      (apply $Pred 
        (Cons  $H $S)))) 

;:- fixup_exports.

; ; :- ensure_loaded(logicmoo(util/rec_lambda)).

;example pfcVerifyMissing(mpred_isa(I,D), mpred_isa(I,C), ((mpred_isa(I,C), {D==C});-mpred_isa(I,C))). 
;example pfcVerifyMissing(mudColor(I,D), mudColor(I,C), ((mudColor(I,C), {D==C});-mudColor(I,C))). 


;; pfcVerifyMissing( +GC, ?GO, ?GO) is semidet.
;
; MeTTa Forward Chaining Verify Missing.
;

  (= 
    (pfcVerifyMissing $GC $GO 
      (or 
        (, $GO 
          { (== $D $C) }) 
        (not $GO))) 
    (, 
      (=.. $GC 
        (Cons  $F 
          (Cons  $A $Args))) 
      (append $Left 
        (:: $D) $Args) 
      (append $Left 
        (:: $C) $NewArgs) 
      (=.. $GO 
        (Cons  $F 
          (Cons  $A $NewArgs))) 
      (set-det)))

;example mpred_freeLastArg(mpred_isa(I,C),~(mpred_isa(I,C))):-is_ftNonvar(C),!.
;example mpred_freeLastArg(mpred_isa(I,C),(mpred_isa(I,F),C\=F)):-!.

;; mpred_freeLastArg( +G, ?GG) is semidet.
;
; PFC Free Last Argument.
;

  (= 
    (mpred-freeLastArg $G $GG) 
    (, 
      (=.. $G 
        (Cons  $F 
          (Cons  $A $Args))) 
      (append $Left 
        (:: $_) $Args) 
      (append $Left 
        (:: $_) $NewArgs) 
      (=.. $GG 
        (Cons  $F 
          (Cons  $A $NewArgs))) 
      (set-det)))
  (= 
    (mpred_freeLastArg  $G false) True)


;; mpred_current_op_support( +VALUE1) is semidet.
;
; PFC Current Oper. Support.
;

  (= 
    (mpred-current-op-support (, (p) (p))) 
    (set-det))


;; pfcVersion( +VALUE1) is semidet.
;
; MeTTa Forward Chaining Version.
;
;pfcVersion(6.6).


; ; :- '$set_source_module'(mpred_kb_ops).

;; correctify_support( +S, ?S) is semidet.
;
; Correctify Support.
;

  (= 
    (correctify-support $U 
      (, $U 
        (ax))) 
    (, 
      (var $U) 
      (set-det)))
  (= 
    (correctify-support 
      (, $U $U) 
      (, $U 
        (ax))) 
    (set-det))
  (= 
    (correctify-support 
      (, $S $T) 
      (, $S $T)) 
    (set-det))
  (= 
    (correctify-support 
      (, $U $UU) 
      (, $U 
        (ax))) 
    (set-det))
  (= 
    (correctify-support 
      (:: $U) $S) 
    (correctify-support $U $S))
  (= 
    (correctify_support  $U 
      (,  $U ax)) True)


;; clause_asserted_local( :TermABOX) is semidet.
;
; Clause Asserted Local. 
;

  (= 
    (clause-asserted-local $MCL) 
    (, 
      (strip-mz $MCL $MZ $CL) 
      (must (= $CL ($spft $MZ $P $Fact $Trigger))) 
      (set-det) 
      (clause-u 
        ($spft $MZ $P $Fact $Trigger) True $Ref) 
      (clause-u 
        ($spft $MZ $UP $UFact $UTrigger) True $Ref) 
      (=@= $UP $P) 
      (=@= $UFact $Fact) 
      (=@= $UTrigger $Trigger)))



;; is_already_supported( +P, ?S, ?UU) is semidet.
;
; If Is A Already Supported.
;

  (= 
    (is-already-supported $P 
      (, $S $T) 
      (, $S $T)) 
    (, 
      (clause-asserted-local ($spft $MZ $P $S $T)) 
      (set-det)))
  (= 
    (is-already-supported $P $S $UU) 
    (, 
      (clause-asserted-local ($spft $MZ $P $US $UT)) 
      (must (get-source-uu $UU)) 
      (= $UU 
        (, $US $UT))))

; TOO UNSAFE 
; is_already_supported(P,_S):- copy_term_and_varnames(P,PC),sp ftY(PC,_,_),P=@=PC,!.



  (= 
    (if-missing1 $Q) 
    (, 
      (mpred-literal-nv $Q) 
      (call-u (not (~ $Q))) 
      (if-missing-mask $Q $R $Test) 
      (set-det) 
      (lookup-u $R) $Test))



  (= 
    (mpred-run-pause) 
    (asserta (with_self  (t-l) (mpred-run-paused))))

  (= 
    (mpred-run-resume) 
    (remove-all-atoms  &self 
      (:  t_l mpred_run_paused)))


  (= 
    (fwithout-running $G) 
    (if-then-else 
      (with_self  
        (t-l) 
        (mpred-run-paused)) $G 
      (locally-tl mpred-run-pause $G)))



