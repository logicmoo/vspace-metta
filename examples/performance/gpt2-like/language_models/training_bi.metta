!(encoding iso-latin-1)


!(module pllm Nil)



; :- include(weightless_pllm).

!(, 
  (= ($VAR X)
  (, 
    (/ is-word 1) 
      (/ is-word 2) 
        (/ ngram 5) 
          (/ ngram 6) 
            (/ trigram 3) 
              (/ trigram 4) 
                (/ tok-split 3) 
                  (/ tok-split 4))) 
    (dynamic $X) (multifile $X))



!(ensure-loaded trains-trigrams)


!(ensure-loaded utils-pllm)




(= compile-corpus
  compile-corpus-in-mem)


(= compile-corpus-in-mem
  (, train-from-corpus compute-corpus-extents 
  (nop retrain-from-trigrams) !))


(corpus-stat corpus-training) (corpus-stat corpus-nodes) (corpus-stat corpus-node-overlap)
(corpus-stat corpus-unique-toks) (corpus-stat corpus-total-toks) 
(corpus-stat sent-num) (corpus-stat corpus-convos)


(= (set-last-oc $OC)
  (nb-setval last-oc $OC))

(= (get-last-oc $OC)
  (nb-current last-oc $OC))


(= train-from-corpus
  (, 
  (debugln "reading corpus...") (set-last-oc (with-self  0 (with-self  0 0))) (absolute-file-name (pldata corpus/self-dialogue-corpus/train-from-topic-star-wars.txt) $File (:: (access read))) (time (, (open $File read $In) (forall (corpus-stat $Stat) (set-flag $Stat 0)) (set-flag sent-num 0) repeat (if-then-else (at-end-of-stream $In) ! (, (flag sent-num $X (+ $X 1)) (read-line-to-string $In $Str) (add-training $X $Str) fail)) (forall (corpus-stat $Stat) (, (get-flag $Stat $Value) (debugln (= ($VAR Stat)
  ($VAR Value)))))))))



(= retrain-from-trigrams
  (, 
  (debugln "retrain from trigrams...") (absolute-file-name (library ../self-dialogue-corpus/train-from.txt) $File (:: (access read))) (time (, (open $File read $In) (forall (corpus-stat $Stat) (set-flag $Stat 0)) (set-flag sent-num 0) repeat (if-then-else (at-end-of-stream $In) ! (, (flag sent-num $X (+ $X 1)) (read-line-to-string $In $Str) (add-training $X $Str) fail)) (forall (corpus-stat $Stat) (, (get-flag $Stat $Value) (debugln (= ($VAR Stat)
  ($VAR Value)))))))))



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
  (< $X $Y) !)) (min-of $_391274 $Y $Y)

(= (max-of $X $Y $X)
  (, 
  (> $X $Y) !)) (max-of $_393530 $Y $Y)

(= (inc-flag $F)
  (flag $F $X 
  (+ $X 1)))

(= (compute-extent $F $A)
  (, 
  (functor $NGram $F $A) 
    (set-flag total-fa 0) 
      (set-flag min-fa 999999999) 
        (set-flag max-fa 0) 
          (forall $NGram 
            (, 
              (ngram-key $NGram $X) 
                (get-flag $X $NN) 
                  (flag total-fa $Total 
                    (+ $Total $NN)) 
                      (get-flag min-fa $Min) 
                        (min-of $Min $NN $NewMin) 
                          (set-flag min-fa $NewMin) 
                            (get-flag max-fa $Max) 
                              (max-of $Max $NN $NewMax) 
                                (set-flag max-fa $NewMax) 
                                  (append-term $NGram $NN $NGramStat) 
                                    (save-stat $NGramStat))) (get-flag total-fa $Total) (get-flag min-fa $Min) (get-flag max-fa $Max) (predicate-property $NGram (number-of-clauses $Insts)) (max-of $Insts 1 $Insts1) (is $Mean (round (/ $Total $Insts1))) (is $High (+ (/ (- $Max $Mean) 2) $Mean)) (is $Low (+ (/ (- $Mean $Min) 2) $Min)) (set-flag med-high-fa $High) (set-flag med-low-fa $Low) (nop (, (set-flag above-mean-fa 0) (set-flag above-med-high-fa 0) (set-flag num-min-fa 0) (set-flag below-mean-fa 0) (set-flag below-med-low-fa 0) (append-term $NGram $NN $NGramStatN) (forall $NGramStatN (, (ignore (, (= ($VAR NN)
  ($VAR Min)) (inc-flag num-min-fa))) (ignore (, (> $NN $High) (inc-flag above-med-high-fa))) (ignore (, (< $NN $Low) (inc-flag below-med-low-fa))) (if-then-else (=< $NN $Mean) (inc-flag below-mean-fa) (inc-flag above-mean-fa)))) (get-flag num-min-fa $NEMin) (get-flag above-med-high-fa $NAMedHi) (get-flag below-mean-fa $NBMean) (get-flag above-mean-fa $NAMean) (get-flag below-med-low-fa $NBMedLo) (is $NAMeanNAMedHi (- $NAMean $NAMedHi)) (is $NBMeanNBMedLo (- $NBMean $NBMedLo)) (is $NBMedLoNEMin (- $NBMedLo $NEMin)) !)) (= ($VAR Props)
  (::                                 (= (if-then min min)
  ($VAR NEMin))                         (= (if-then min low)
  ($VAR NBMedLoNEMin))                    (= (if-then low mean)
  ($VAR NBMeanNBMedLo))                     (= (if-then mean high)
  ($VAR NAMeanNAMedHi))                       (= (if-then high max)
  ($VAR NAMedHi))                               (= ---------
  ------------)                                   (= (if-then min max)
  ($VAR Insts)) nl                                  (= min
  ($VAR Min))                                         (= low
  ($VAR Low))                                           (= mean
  ($VAR Mean))                                            (= high
  ($VAR High))                                              (= max
  ($VAR Max))                                                 (= total
  ($VAR Total)))) (maplist xthe-unbounds $Props) (add-atom  &self (extent-props  $F $A $Props)) (debugln (:: (extent-props (/ $F $A)) $Props)) !))% avoid division by zero
% adds 20 seconds and is not yet used



(= (xthe-unbounds $X)
  (ignore (= ($VAR X)
  (= $_450138
  x))))


(= (ngram-key (tok-split $O $_453854 $_453856) $O)
  !)
(= (ngram-key (is-word $O) $O)
  !)
(= (ngram-key (trigram $A $B $C) $Key)
  (, ! 
  (atomic-list-concat 
    (:: $A $B $C) , $Key)))
(= (ngram-key (ngram $Loc $A $B $C $D $_459468) $Key)
  (, ! 
  (ngram-key 
    (ngram $Loc $A $B $C $D) $Key)))
(= (ngram-key (ngram $Loc (oc $_462278) $B $C (oc $_462344)) $Key)
  (, ! 
  (atomic-list-concat 
    (:: oc $B $C oc) , $Key)))
(= (ngram-key (ngram $Loc (oc $_465836) $A $B $C) $Key)
  (, ! 
  (atomic-list-concat 
    (:: oc $A $B $C) , $Key)))
(= (ngram-key (ngram $Loc $A $B $C (oc $_469060)) $Key)
  (, ! 
  (atomic-list-concat 
    (:: $A $B $C oc) , $Key)))
(= (ngram-key (ngram $Loc $A $B $C $D) $Key)
  (atomic-list-concat 
  (:: $A $B $C $D) , $Key))


(= save-corpus-stats
  (time (, (tell plm.pl) (write "\r\n :- style-check(- discontiguous).\r\n :- X= (is-word/2,ngram/6),\r\n    dynamic(X),multifile(X). \n") (listing (:: (/ is-word 2) (/ ngram 6))) told)))


(= qcompile-corpus
  (, save-corpus-stats 
  (debugln "Compiling now...") (time (with-self  pllm (qcompile plm))) (debugln "Loading now...") (time (with-self  pllm (ensure-loaded plm))) (debugln "Corpus Ready")))


(= (add-training $_484500 "XXXXXXXXXXX")
  (, 
  (flag corpus-convos $Z 
    (+ $Z 1)) 
      (is $Z10 
        (div $Z 10)) 
          (set-last-oc $Z) ! (is $Y (* (+ $Z10 1) 100)) (flag sent-num $_485030 $Y) !))% every 10 conversations will be considered "close"

(= (add-training $X $Str)
  (, 
  (tokenize-atom $Str $Toks) 
    (maplist downcase-atom $Toks $TokList) 
      (pretok $TokList $PreToks) ! 
        (maplist 
          (add-occurs is-word) $PreToks) (add-training-toks $X $PreToks)))


(= (add-training-toks $_493550 Nil)
  !)
(= (add-training-toks $X (:: $A))
  (, ! 
  (add-training-toks $X 
    (:: $A .))))
(= (add-training-toks $X $PreToks)
  (, 
  (add-ngrams except-symbols trigram 3 skip $PreToks) 
    (dbltok oc $PreToks $ReToks) ! 
      (get-last-oc $LastOC) (is $NewOC (+ $X 1)) (flag corpus-training $T (+ $T 1)) (set-last-oc $NewOC) (append (Cons  (oc $LastOC) $ReToks) (:: (oc $NewOC)) $Grams) ! (add-ngrams except-none ngram 4 $X $Grams)))%get_flag(corpus_convos,B),%source_location(_,L),



(= (add-ngrams $Except $F $N $Loc $Grams)
  (, 
  (length $NGram $N) 
    (append $NGram $_505214 $Mid) 
      (forall 
        (append $_505304 $Mid $Grams) 
          (assert-ngram $Except $F $Loc $NGram))))


(except-none $_508644)

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
                (ngram-key $W $A) 
                  (flag $A $X 
                    (+ $X 1)) 
                      (if-then-else 
                        (== $Loc skip) 
                          (if-then-else 
                            (not $W) (add-atom  &self $W) True) (add-atom  &self $W)) (if-then-else (= ($VAR X)
  0) (flag corpus-nodes $N (+ $N 1)) (flag corpus-node-overlap $O (+ $O 1))) !))


(= (add-occurs $F $Tok)
  (, 
  (=.. $P 
    (:: $F $Tok)) 
      (ignore (, (not $P) (add-atom  &self $P) (flag corpus-unique-toks $O (+ $O 1)))) (flag $Tok $X (+ $X 1)) (flag corpus-total-toks $T (+ $T 1))))


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
(= (pretok (Cons  $A (Cons  ' (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (atom-concat $A $S $F) ! 
    (pretok $Grams $ReTok)))
(= (pretok (Cons  $A (Cons  � (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (atom-concat $A $S $F) ! 
    (pretok $Grams $ReTok)))
(= (pretok (Cons  $A (Cons  ` (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (atom-concat $A $S $F) ! 
    (pretok $Grams $ReTok)))
(= (pretok (Cons  , $Grams) $ReTok)
  (pretok $Grams $ReTok))
(= (pretok (Cons  - $Grams) $ReTok)
  (pretok $Grams $ReTok))
(= (pretok (Cons  $A (Cons  $B (Cons  $C $Grams))) $ReTok)
  (, 
  (trigram $A $B $C $N) 
    (> $N 40) ! 
      (ngram-key 
        (trigram $A $B $C) $Key) 
          (pretok 
            (Cons  $Key $Grams) $ReTok)))
(= (pretok (Cons  ! $Grams) $ReTok)
  (pretok 
  (Cons  . $Grams) $ReTok))
(= (pretok (Cons  $S $Grams) (Cons  $S $ReTok))
  (pretok $Grams $ReTok))


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
    (flag $O $X 
      (+ $X 1))))
(= (atoms-join $A $B $O)
  (, 
  (atomic-list-concat 
    (:: $A $B) : $O) ! 
      (add-atom  &self 
        (tok-split  $O $A $B)) 
      (flag $O $X 
        (+ $X 1))))

; @TODO use average 
;as_good(T,X):- is_word(T,X),(Nxt>500->X=0;X is 500-Nxt).
;ngram_rate(A,B,C,D,N,NN):- ngram(Loc,A,B,C,D,N), maplist(as_good,[A,B,C,D],Num), sumlist(Num,NN).


(= (autoc $Sent)
  (autoc 1 $Sent))
(= (autoc $N $Sent)
  (, 
  (remove-all-atoms  &self 
    (used-cl  
      (ngram  $_55412 $_55414 $_55416 $_55418))) 
  (add-blanks $N $Sent $Slotted) 
    (no-repeats (map-sent $Loc $Slotted)) (debugln $Slotted)))


(= (add-blanks $_59148 Nil Nil)
  !)
(= (add-blanks $N (Cons  (len $S) $Sent) $Slotted)
  (, 
  (integer $S) (length $L $S) ! (add-blanks $N $Sent $Mid) (append $L $Mid $Slotted)))
(= (add-blanks $N (Cons  $S $Sent) (Cons  $S $Slotted))
  (add-blanks $N $Sent $Slotted))
(= (add-blanks $N (Cons  $S $Sent) $Slotted)
  (, 
  (var $S) (between 2 $N $L) (length $S $L) (add-blanks $N $Sent $Mid) (append $S $Mid $Slotted)))


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
  (nonvar $X) (ngram $Loc $_77520 $_77522 $A (oc $X) $_77528) (ngram $ULoc (oc $X) $B $C $_77670 $NN)))
(= (ngram $Loc $A $B (oc $X) $C $NN)
  (, 
  (nonvar $X) (ngram $Loc $_82192 $A $B (oc $X) $_82200) (ngram $ULoc (oc $X) $C $_82340 $_82342 $NN)))


!(add-history compile-corpus)




(= (good-toks $Key $E)
  (, 
  (functor $P ngram 6) 
    (arg 6 $P $E) 
      (no-repeats $Key 
        (, $P 
          (ngram-key $P $Key)))))


!(if (not (prolog-load-context reloading True)))


!compile-corpus


!endif



!fixup-exports



