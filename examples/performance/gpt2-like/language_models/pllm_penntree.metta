
!(encoding iso-latin-1)


!(module pllm Nil)



; :- include(weightless_pllm).


(pllm-preds (:: (/ training 3) (/ is-word 1) (/ is-word 2) (/ ngram 5) (/ ngram 6) (/ trigram 3) (/ trigram 4) (/ tok-split 3) (/ tok-split 4) (with-self  tmp (/ buffer-training 2))))


(= (declare-preds $X)
  (, 
  (dynamic $X) (multifile $X)))


!(, 
  (pllm-preds $L) (maplist declare-preds $L))



; :- ensure_loaded(trains_trigrams).
!(ensure-loaded utils-pllm)


!(ensure-loaded (library logicmoo-nlu))


!(ensure-loaded (library (/ logicmoo-nlu parser-link-grammar)))



;compile_corpus:- functor(P,ngram,6), predicate_property(P,number_of_clauses(N)),N>2.

(= compile-corpus
  compile-corpus-in-mem)


(= recompile-corpus
  (, 
  (pllm-preds $L) (maplist abolish $L) (maplist declare-preds $L) compile-corpus-in-mem))


(= compile-corpus-in-mem
  (, train-from-corpus compute-corpus-extents 
  (nop retrain-from-trigrams) !))


(corpus-stat corpus-training) (corpus-stat corpus-nodes) (corpus-stat corpus-node-overlap)
(corpus-stat corpus-unique-toks) (corpus-stat corpus-total-toks) 
(corpus-stat corpus-convos)


(= (set-last-oc $OC)
  (nb-setval last-oc $OC))

(= (get-last-oc $OC)
  (nb-current last-oc $OC))

;train_from_corpus:- training(_,string,_),!,forall(training(XX,string,Val),add_training_str(XX,Val)).

(= train-from-corpus
  (train-from-corpus (library ../self-dialogue-corpus/train-from.txt)))

(= (train-from-corpus $Path)
  (, 
  (debugln (:: "reading corpus..." $Path)) (setup-call-cleanup (must (absolute-file-name $Path $File (:: (access read)))) (time (, (open $File read $In) (forall (corpus-stat $Stat) (set-flag $Stat 0)) (set-flag file-line 0) repeat (if-then-else (at-end-of-stream $In) ! (, (inc-flag file-line) (read-line-to-string $In $Str) (get-flag file-line $X) (add-training $X $Str) fail)) (forall (corpus-stat $Stat) (, (get-flag $Stat $Value) (debugln (= ($VAR Stat)
  ($VAR Value))))))) save-training)))


!(add-history load-training)



(= load-training
  (, 
  (pllm-preds $L) (maplist load-training $L)))
(= (load-training (/ $F $A))
  (, 
  (atomic-list-concat 
    (:: done- $F - $A .pl) $File) 
      (if-then-else 
        (exists-file $File) (ensure-loaded $File) True)))


(= save-training
  (, 
  (pllm-preds $L) (maplist save-training $L)))
(= (save-training (/ $F $A))
  (, 
  (atomic-list-concat 
    (:: done- $F - $A .pl) $File) 
      (tell $File) (writeln !(encoding iso-latin-1)) (listing (/ $F $A)) told))% functor(P,F,A),forall(P,(writeq(P),writeln('.'))),




(= (save-stat $G)
  (, 
  (if-then-else 
    (not $G) (add-atom  &self $G) True) (nop (, (writeq $G) (writeln .)))))


(use-extent is-word 1) (use-extent tok-split 3) (use-extent trigram 3) (use-extent ngram 5)

(= compute-corpus-extents
  (, 
  (debugln "compute corpus extents...") (time (forall (use-extent $F $A) (compute-extent $F $A)))))



(= (min-of $X $Y $X)
  (, 
  (< $X $Y) !)) (min-of $_290428 $Y $Y)

(= (max-of $X $Y $X)
  (, 
  (> $X $Y) !)) (max-of $_292684 $Y $Y)

(= (inc-flag $F)
  (flag $F $X 
  (+ $X 1)))

(= (compute-extent $F $A)
  (, 
  (functor $NGram $F $A) 
    (is $A2 
      (+ $A 1)) 
        (functor $NGram2 $F $A2) 
          (dynamic $NGram2) (set-flag total-fa 0) (set-flag min-fa 999999999) (set-flag max-fa 0) (forall $NGram (, (ngram-val $NGram $NN) (flag total-fa $Total (+ $Total $NN)) (get-flag min-fa $Min) (min-of $Min $NN $NewMin) (set-flag min-fa $NewMin) (get-flag max-fa $Max) (max-of $Max $NN $NewMax) (set-flag max-fa $NewMax) (append-term $NGram $NN $NGramStat) (save-stat $NGramStat))) (get-flag total-fa $Total) (get-flag min-fa $Min) (get-flag max-fa $Max) (predicate-property $NGram (number-of-clauses $Insts)) (max-of $Insts 1 $Insts1) (is $Mean (round (/ $Total $Insts1))) (is $High (+ (/ (- $Max $Mean) 2) $Mean)) (is $Low (+ (/ (- $Mean $Min) 2) $Min)) (set-flag med-high-fa $High) (set-flag med-low-fa $Low) (nop (, (set-flag above-mean-fa 0) (set-flag above-med-high-fa 0) (set-flag num-min-fa 0) (set-flag below-mean-fa 0) (set-flag below-med-low-fa 0) (append-term $NGram $NN $NGramStatN) (forall $NGramStatN (, (ignore (, (= ($VAR NN)
  ($VAR Min)) (inc-flag num-min-fa))) (ignore (, (> $NN $High) (inc-flag above-med-high-fa))) (ignore (, (< $NN $Low) (inc-flag below-med-low-fa))) (if-then-else (=< $NN $Mean) (inc-flag below-mean-fa) (inc-flag above-mean-fa)))) (get-flag num-min-fa $NEMin) (get-flag above-med-high-fa $NAMedHi) (get-flag below-mean-fa $NBMean) (get-flag above-mean-fa $NAMean) (get-flag below-med-low-fa $NBMedLo) (is $NAMeanNAMedHi (- $NAMean $NAMedHi)) (is $NBMeanNBMedLo (- $NBMean $NBMedLo)) (is $NBMedLoNEMin (- $NBMedLo $NEMin)) !)) (= ($VAR Props)
  (::       (= (if-then min min)
  ($VAR NEMin)) 
              (= (if-then min low)
  ($VAR NBMedLoNEMin)) 
                (= (if-then low mean)
  ($VAR NBMeanNBMedLo)) 
                  (= (if-then mean high)
  ($VAR NAMeanNAMedHi)) 
                    (= (if-then high max)
  ($VAR NAMedHi))     (= ---------
  ------------)         (= (if-then min max)
  ($VAR Insts)) nl        (= min
  ($VAR Min))               (= low
  ($VAR Low))                 (= mean
  ($VAR Mean))                  (= high
  ($VAR High))                    (= max
  ($VAR Max))                       (= total
  ($VAR Total)))) (maplist (save-extents $F $A) $Props) (debugln (:: (extent-props (/ $F $A)) $Props)) !))% avoid division by zero
% adds 20 seconds and is not yet used



(= (save-extents $_349702 $_349704 (= $_349670
  x))
  !)
(= (save-extents $F $A (= ($VAR X)
  ($VAR Y)))
  (, ! 
  (add-atom  &self 
    (extent-props  $F $A $X $Y)))) 
(= (save-extents $_355152 $_355154 $_355156)
  !)


(= (ngram-val $NGram $NN)
  (, 
  (ngram-key $NGram $Key) 
    (get-flag $Key $NN)))


(= (ngram-inc $NGram)
  (ngram-inc $NGram $NN))
(= (ngram-inc $NGram $NN)
  (, 
  (ngram-key $NGram $Key) 
    (flag $Key $NN 
      (+ $NN 1))))


(= (ngram-key (tok-split $O $_362406 $_362408) $O)
  !)
(= (ngram-key (is-word $O) $O)
  !)
(= (ngram-key (trigram $A $B $C) $Key)
  (, ! 
  (join-text 
    (:: $A $B $C) $Key)))
(= (ngram-key (ngram $Loc $A $B $C $D $_367932) $Key)
  (, ! 
  (ngram-key 
    (ngram $Loc $A $B $C $D) $Key)))
(= (ngram-key (ngram $Loc (oc $_370742) $B $C (oc $_370808)) $Key)
  (, ! 
  (join-text 
    (:: oc $B $C oc) $Key)))
(= (ngram-key (ngram $Loc (oc $_374212) $A $B $C) $Key)
  (, ! 
  (join-text 
    (:: oc $A $B $C) $Key)))
(= (ngram-key (ngram $Loc $A $B $C (oc $_377348)) $Key)
  (, ! 
  (join-text 
    (:: $A $B $C oc) $Key)))
(= (ngram-key (ngram $Loc $A $B $C $D) $Key)
  (join-text 
  (:: $A $B $C $D) $Key))


(= (join-text $List $Key)
  (atomic-list-concat $List ',' $Key))


(= save-corpus-stats
  (time (, 
          (tell plm.pl) 
	  (write "\r\n :- style-check(- discontiguous).\r\n :- X= (is-word/2,ngram/6),\r\n    dynamic(X),multifile(X). \n") 
	  (listing (:: (/ is-word 2) (/ ngram 6))) told)))


(= qcompile-corpus
  (, save-corpus-stats 
  (debugln "Compiling now...") (time (with-self  pllm (qcompile plm))) (debugln "Loading now...") (time (with-self  pllm (ensure-loaded plm))) (debugln "Corpus Ready")))



(= (add-training $X $Str)
  (, 
  (flag speech-act $A 
    (+ $A 1)) 
      (get-flag corpus-convos $Z) 
        (is $XX 
          (+ 
            (+ 
              (* 
                (+ $Z 1) 100000000000) 
                  (* $A 10000000)) $X)) 
                    (add-training-str $XX $Str)))


(= (add-training-str $XX "XXXXXXXXXXX")
  (, 
  (= ($VAR C)
  100000000000) 
    (is $Buffer 
      (+ 
        (* 
          (floor (/ $XX $C)) $C) 9911111111111)) (ignore (add-conversation-training $Buffer)) (inc-flag corpus-convos) ! (set-flag speech-act 1)))
(= (add-training-str $XX $Str)
  (, 
  (is 1 
    (mod $XX 2)) ! 
      (add-training-said said "Al" $XX $Str) !)) 
(= (add-training-str $XX $Str)
  (, 
  (add-training-said said "Jo" $XX $Str) !)) 


(= (add-training-said $_410198 $_410200 $_410202 Nil)
  !)
(= (add-training-said $Says $PERSON $XX $Str)
  (, 
  (string $Str) (tokenize-atom $Str $Toks) ! (pretok $Toks $PreToks) (add-training-said $Says $PERSON $XX $PreToks)))
(= (add-training-said $Says $PERSON $XX $Toks)
  (, 
  (append $Left 
    (:: .) $Toks) ! (add-training-said $Says $PERSON $XX $Left)))
(= (add-training-said $Says $PERSON $XX $Toks)
  (, 
  (append $Left 
    (Cons  $LE $Right) $Toks) 
    (\== $Right Nil) 
      (member $LE 
        (:: . ?)) 
          (append $Left 
            (:: $LE) $Said) ! (add-training-said $Says $PERSON $XX $Said) (add-training-said $Says $PERSON $XX $Right)))
(= (add-training-said said $PERSON $XX $Toks)
  (, 
  (append $Left 
    (:: ?) $Toks) ! (add-training-said asks $PERSON $XX $Left)))
(= (add-training-said $Says $PERSON $XX $Toks)
  (, 
  (if-then-else 
    (== $Says asks) 
      (= ($VAR J)
  ?)    (= ($VAR J)
  .))     (atomics-to-string $Toks " " $Str) 
            (atomics-to-string 
              (:: $Str $J) "" $StrP) 
                (sformat $S " ~w ~w, ~q " 
                  (:: $PERSON $Says $StrP)) 
                    (= ($VAR BB)
  (with-self tmp      (buffer-training $XX $S))) 
                      (add-atom  &self $BB) 
                      (wdmsg $BB)))

 

(= (assert-training $XX $P $Parse)
  (, 
  (assert-if-new (training $XX $P $Parse)) (dmsg (training $XX $P $Parse)) (save-training (/ training 3))))


(= (do-training $XX $Str $F2)
  (, 
  (training $XX $F2 $_440284) !))
(= (do-training $XX $Str $F2)
  (, 
  (catch 
    (call $F2 $Str $Result) $E 
      (, dumpSt 
        (format "%~~~~~ ERROR: ~p~n" 
          (:: (--> $E (call $F2 $Str $Result))))) fail) ! (assert-training $XX $F2 $Result) !))



(= (add-conversation-training $XX)
  (, 
  (wots $Str 
    (forall 
      (remove-atom  &self 
        (:  tmp 
          (buffer-training  $_446994 $S))) 
      (, 
        (write  : ) (writeln $S)))) (assert-training $XX convo $Str) (do-training $XX $Str text-to-best-tree)))



(= (all-letters $X)
  (not (, (upcase-atom $X $U) (downcase-atom $X $U))))
 ;tokenize_atom(Str,Toks),
 ;maplist(downcase_atom,Toks,TokList),pretok(TokList,PreToks),!,
 ;assert_training(XX,tokenize_atom,PreToks),



(= (add-training-toks $_454780 Nil)
  !)
(= (add-training-toks $X (:: $A))
  (, ! 
  (add-training-toks $X 
    (:: $A .))))
(= (add-training-toks $XX $PreToks)
  (, 
  (maplist 
    (add-occurs is-word) $PreToks) (inc-flag corpus-training) (add-ngrams except-symbols trigram 3 skip $PreToks) (dbltok oc $PreToks $ReToks) ! (is $XX1 (+ $XX 1)) (append (Cons  (oc $XX) $ReToks) (:: (oc $XX1)) $Grams) ! (add-ngrams except-none ngram 4 $XX $Grams)))


(= (add-ngrams $Except $F $N $Loc $Grams)
  (, 
  (length $NGram $N) 
    (append $NGram $_465756 $Mid) 
      (forall 
        (append $_465846 $Mid $Grams) 
          (assert-ngram $Except $F $Loc $NGram))))


(except-none $_469186)

(= (assert-ngram $Except $F $Loc $List)
  (, 
  (or 
    (== $Except except-none) 
      (maplist $Except $List)) ! 
        (if-then-else 
          (== $Loc skip) 
            (=.. $W 
              (Cons  $F $List)) 
              (=.. $W 
                (Cons  $F 
                  (Cons  $Loc $List)))) 
                (ngram-inc $W $X) 
                  (if-then-else 
                    (== $Loc skip) 
                      (if-then-else 
                        (not $W) (add-atom  &self $W) True) (add-atom  &self $W)) (if-then-else (= ($VAR X)
  0) (inc-flag corpus-nodes) (inc-flag corpus-node-overlap)) !))


(= (add-occurs $F $Tok)
  (, 
  (=.. $P 
    (:: $F $Tok)) 
      (ignore (, (not $P) (add-atom  &self $P) (inc-flag corpus-unique-toks))) (ngram-inc $P) (inc-flag corpus-total-toks)))


(= (except-symbols $X)
  (not (, (upcase-atom $X $U) (downcase-atom $X $U))))


(pretok Nil Nil)
(= (pretok (:: .) Nil)
  !)
(= (pretok (Cons  $X (Cons  $X (Cons  $X $Nxt))) $O)
  (, ! 
  (atomic-list-concat 
    (:: $X $X $X) , $Y) 
      (pretok 
        (Cons  $Y $Nxt) $O)))
(= (pretok (Cons  $A (Cons  - (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (atomic-list-concat 
    (:: $A $S) - $F) ! 
      (pretok $Grams $ReTok)))
(= (pretok (Cons  $A (Cons  ' (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (all-letters $A) (all-letters $S) (atomic-list-concat (:: $A $S) ' $F) ! (pretok $Grams $ReTok)))
(= (pretok (Cons  $A (Cons  � (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (all-letters $A) (all-letters $S) (atomic-list-concat (:: $A $S) ' $F) ! (pretok $Grams $ReTok)))
(= (pretok (Cons  $A (Cons  ` (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (all-letters $A) (all-letters $S) (atomic-list-concat (:: $A $S) ' $F) ! (pretok $Grams $ReTok)))
(= (pretok (Cons  ! $Grams) $ReTok)
  (pretok 
  (Cons  . $Grams) $ReTok))
(= (pretok (Cons  $S $Grams) (Cons  $S $ReTok))
  (pretok $Grams $ReTok))

; dbltok(_,X,X):-!.

(= (dbltok oc Nil Nil)
  !)
(= (dbltok $Pre Nil (:: $PS))
  (, ! 
  (atoms-join $Pre oc $PS)))
(= (dbltok $Pre (Cons  $S $Grams) (Cons  $PS $ReTok))
  (, 
  (atoms-join $Pre $S $PS) 
    (dbltok $S $Grams $ReTok)))


(= (atoms-join $A $B $O)
  (, 
  (tok-split $O $A $B) ! 
    (ngram-inc (tok-split $O $A $B))))
(= (atoms-join $A $B $O)
  (, 
  (atomic-list-concat 
    (:: $A $B) : $O) ! 
      (add-atom  &self 
        (tok-split  $O $A $B)) 
      (ngram-inc (tok-split $O $A $B))))

; @TODO use average 
;as_good(T,X):- is_word(T,X),(Nxt>500->X=0;X is 500-Nxt).
;ngram_rate(A,B,C,D,N,NN):- ngram(Loc,A,B,C,D,N), maplist(as_good,[A,B,C,D],Num), sumlist(Num,NN).


(= (add-blanks $N $S $Slotted)
  (, 
  (not (is-list $S)) ! (add-blanks $N (:: $S) $Slotted)))
(= (add-blanks $_11896 Nil Nil)
  !)

(= (add-blanks $N (Cons  $A (Cons  $B $Sent)) (Cons  $O $Slotted))
  (, 
  (tok-split $O $A $B) ! 
    (add-blanks $N $Sent $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) (Cons  $O $Slotted))
  (, 
  (not (not (tok-split $_16198 $S $_16202))) ! (tok-split $O $S $_16338) (add-blanks $N $Sent $Slotted)))
(= (add-blanks $N (Cons  $O $Sent) (Cons  $O $Slotted))
  (, 
  (atom $O) (tok-split $O $_20182 $_20184) ! (add-blanks $N $Sent $Slotted)))

(= (add-blanks $N (Cons  (len $S) $Sent) $Slotted)
  (, 
  (integer $S) (length $L $S) ! (add-blanks $N $Sent $Mid) (append $L $Mid $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) (Cons  $A $Slotted))
  (, 
  (string $S) (atom-string $A $S) ! (add-blanks $N $Sent $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) $Slotted)
  (, 
  (var $S) ! (between 1 $N $L) (add-blanks $N (Cons  (- 1 $L) $Sent) $Slotted)))
(= (add-blanks $N (Cons  (- $Lo $Hi) $Sent) $Slotted)
  (, 
  (or 
    (integer $Lo) (integer $Hi)) ! (between $Lo $Hi $L) (length $S $L) (add-blanks $N $Sent $Mid) (append $S $Mid $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) $Slotted)
  (, 
  (is-list $S) ! (flatten $S $SL) (append $SL $Sent $SLSent) ! (add-blanks $N $SLSent $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) $Slotted)
  (, 
  (atom $S) (into-mw $S $SL) ! (append $SL $Sent $SLSent) ! (add-blanks $N $SLSent $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) (Cons  $S $Slotted))
  (add-blanks $N $Sent $Slotted))


(= (into-mw $S $SL)
  (, 
  (into-mw0 $S $SL) 
    (\== $SL 
      (:: $S)) !))

(= (into-mw0 $S $SL)
  (, 
  (atomic-list-concat 
    (Cons  $M 
      (Cons  $_50894 $_50896)) : $S) ! 
    (into-mw0 $M $SL)))
(= (into-mw0 $S $SL)
  (atomic-list-concat $SL , $S))
(= (into-mw0 $S $SL)
  (atomic-list-concat $SL " " $S))
(= (into-mw0 $S $SL)
  (atomic-list-concat $SL - $S))


(= (loc-dists $Loc1 $Loc2 $NN)
  (is $NN 
  (abs (- $Loc1 $Loc2))))
(= (loc-dists $Loc1 $Loc2 $Loc3 $NN)
  (is $NN 
  (/ 
    (+ 
      (+ 
        (abs (- $Loc1 $Loc2)) (abs (- $Loc3 $Loc2))) (abs (- $Loc1 $Loc3))) 3)))

;:- pllm:ensure_loaded(plm).
; added for conversations

(= (ngram $Loc $A (oc $X) $B $C $NN)
  (, 
  (nonvar $X) (ngram $Loc $_65476 $_65478 $A (oc $X) $_65484) (ngram $ULoc (oc $X) $B $C $_65626 $NN)))
(= (ngram $Loc $A $B (oc $X) $C $NN)
  (, 
  (nonvar $X) (ngram $Loc $_70148 $A $B (oc $X) $_70156) (ngram $ULoc (oc $X) $C $_70296 $_70298 $NN)))


(= (autoc $Sent)
  (autoc 1 $Sent))
(= (autoc $N $Sent)
  (, 
  (remove-all-atoms  &self 
    (used-cl  
      (ngram  $_76264 $_76266 $_76268 $_76270))) 
  (add-blanks $N $Sent $Slotted) 
    (no-repeats (map-sent $_76438 $Loc $Slotted)) (fmt-pllm $Slotted)))


(= (good-toks $Key $E)
  (, 
  (functor $P ngram 6) 
    (arg 6 $P $E) 
      (no-repeats $Key 
        (, $P 
          (ngram-key $P $Key)))))



!(add-history recompile-corpus)



!fixup-exports



!(dynamic (/ used-cl 1))




(= (map-sent $_91010 $_91012 $Sent)
  (, 
  (ground $Sent) !))
(= (map-sent $LR $Loc $Sent)
  (, 
  (var $Sent) (length $Sent 9) (map-sent $LR $Loc $Sent)))
(= (map-sent $LR $Loc $List)
  (, 
  (= ($VAR LR)
  lr) 
    (append $Left 
      (Cons  $X $More) $List) 
      (nonvar $X) (\== $Left Nil) ! (map-sent $LR $Loc (Cons  $X $More)) (map-sent rl $Loc $List)))
(= (map-sent $LR $Loc (Cons  $A (Cons  $B (Cons  $C (Cons  $D $More)))))
  (, 
  (some-ngram $Loc $A $B $C $D $Fire) 
    (map-sent $LR $Loc 
      (Cons  $C 
        (Cons  $D $More)))))
(= (map-sent $LR $Loc (Cons  $A (Cons  $B (Cons  $C (Cons  $D $More)))))
  (, 
  (some-ngram $Loc $A $B $C $_105144 $Fire) 
    (map-sent $LR $Loc 
      (Cons  $B 
        (Cons  $C 
          (Cons  $D $More))))))
(= (map-sent $_108770 $Loc $List)
  (, 
  (= ($VAR ABCDO)
  (:: $_108830 $_108850 $_108870 $_108890 $Occurs)) 
    (append $List $_109014 $ABCDO) 
      (apply some-ngram 
        (Cons  $Loc $ABCDO))))



(= (some-ngram $PrevLoc $A $B $C $D $N)
  (, 
  (pick-ngram $Loc $A $B $C $D $N) 
    (may-use $Loc $A $B $C $D $N)))


(= (pick-ngram $Loc $A $B $C $D $N)
  (if-then-else 
  (maplist var 
    (:: $A $B $C $D)) 
      (rnd-ngram $Loc $A $B $C $D $N) 
        (ngram $Loc $A $B $C $D $N)))


(= (rnd-ngram $Loc $A $B $C $D $N)
  (, 
  (= ($VAR G)
  (ngram $Loc $A $B $C $D $N)) 
    (predicate-property $G 
      (number-of-clauses $R)) (is $CN (+ (random $R) 1)) (nth-clause $G $CN $Ref) (clause $G $Body $Ref) $Body))



!(style-check (- singleton))



!(add-history (, (good-toks $Key $E) (> $E 20)))


!(add-history (autoc (:: music:you (len 200))))


!(add-history (autoc (:: oc music:you (len 200))))


!(add-history (autoc (:: oc:music music:you (len 200))))


!(add-history (autoc (:: music (len 200))))


!(add-history (autoc (:: (len 10) music (len 200))))




(= (may-use $Loc $_152462 $B $C $D $_152470)
  (, 
  (not (used-cl (ngram $A $B $C $D))) (assert (used-cl (ngram $A $B $C $D)) $Cl2) (undo (erase $Cl2)) !))



(= (gen6 (= (:: $A $B $C $D $E $F $G $H)
  ($VAR N)))
  (, 
  (ngram $Loc1 $E $F $G $H $Z) 
    (ngram $Loc2 $C $D $E $F $Y) 
      (ngram $Loc3 $A $B $C $D $X) 
        (is $N 
          (+ 
            (+ $X $Y) $Z))))

!fixup-exports



!(if (not (prolog-load-context reloading True)))


!load-training


!compile-corpus


!endif





