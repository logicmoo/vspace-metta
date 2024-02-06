

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
                (/ tok-split 3))) 
    (dynamic $X) (multifile $X))



!(ensure-loaded utils-pllm)





(= compile-corpus
  compile-corpus-in-mem)


(= compile-corpus-in-mem
  (, train-from-corpus compute-corpus-extents !))


(corpus-stat corpus-training) (corpus-stat corpus-nodes) (corpus-stat corpus-node-overlap)
(corpus-stat corpus-unique-toks) (corpus-stat corpus-total-toks) 
(corpus-stat sent-num) (corpus-stat corpus-convos)


(= train-from-corpus
  (, 
  (debugln "reading corpus...") (absolute-file-name (pldata corpus/self-dialogue-corpus/train-from.txt) $File (:: (access read))) (time (, (open $File read $In) (forall (corpus-stat $Stat) (set-flag $Stat 0)) (set-flag sent-num 0) repeat (if-then-else (at-end-of-stream $In) ! (, (flag sent-num $X (+ $X 1)) (read-line-to-string $In $Str) (add-training $X $Str) fail)) (forall (corpus-stat $Stat) (, (get-flag $Stat $Value) (debugln (= ($VAR Stat)
  ($VAR Value)))))))))%absolute_file_name(library('../ext/self_dialogue_corpus/train_from.txt'),File,[access(read)]),



(= (save-stat $G)
  (, 
  (add-atom  &self $G) 
  (nop (, (writeq $G) (writeln .)))))


(use-extent is-word 1) (use-extent tok-split 3) (use-extent ngram 5)

(= compute-corpus-extents
  (, 
  (debugln "compute corpus extents...") (time (forall (use-extent $F $A) (compute-extent $F $A)))))



(= (min-of $X $Y $X)
  (, 
  (< $X $Y) !)) (min-of $_167052 $Y $Y)

(= (max-of $X $Y $X)
  (, 
  (> $X $Y) !)) (max-of $_169308 $Y $Y)


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
                                    (save-stat $NGramStat))) (get-flag total-fa $Total) (get-flag min-fa $Min) (get-flag max-fa $Max) (predicate-property $NGram (number-of-clauses $Insts)) (is $Avrg (/ $Total (+ $Insts 1))) (= ($VAR Props)
  (::                                 (= insts
  ($VAR Insts))                         (= total
  ($VAR Total))                           (= min
  ($VAR Min))                               (= max
  ($VAR Max))                                 (= avrg
  ($VAR Avrg)))) (add-atom  &self (extent-props  $F $A $Props)) (debugln (:: (extent-props (/ $F $A)) $Props)) !))



(ngram-key 
  (tok-split $O $_192102 $_192104) $O)
(ngram-key 
  (is-word $O) $O)
(= (ngram-key $P $K)
  (ngram-key $P $_193734 $K))
(= (ngram-key (ngram $Loc $A $B $C $D $_195216) $T $Key)
  (, ! 
  (ngram-key 
    (ngram $Loc $A $B $C $D) $T $Key)))
(= (ngram-key (ngram $Loc (oc $_198198) $A $B $C) $T $Key)
  (, 
  (= ($VAR T)
  (sgram $A $B $C)) ! 
    (term-to-atom $T $Key)))
(= (ngram-key (ngram $Loc $A $B $C (oc $_202686)) $T $Key)
  (, 
  (= ($VAR T)
  (sgram $A $B $C)) ! 
    (term-to-atom $T $Key)))
(= (ngram-key (ngram $Loc $A $B $C $D) (:: (trigram $A $B $C $D)) $Key)
  (, ! 
  (term-to-atom 
    (:: $A $B $C) $Key)))
(= (ngram-key (trigram $A $B $C) Nil $Key)
  (term-to-atom 
  (:: $A $B $C) $Key))



(= save-corpus-stats
  (time (, (tell plm.pl) (write "\r\n :- style-check(- discontiguous).\r\n :- X= (is-word/2,ngram/6),\r\n    dynamic(X),multifile(X). \n") (listing (:: (/ is-word 2) (/ ngram 6))) told)))


(= qcompile-corpus
  (, save-corpus-stats 
  (debugln "Compiling now...") (time (with-self  pllm (qcompile plm))) (debugln "Loading now...") (time (with-self  pllm (ensure-loaded plm))) (debugln "Corpus Ready")))


(= (add-training $_222674 "XXXXXXXXXXX")
  (, 
  (flag corpus-convos $Z 
    (+ $Z 1)) 
      (is $Z10 
        (div $Z 10)) 
          (is $Y 
            (* 
              (+ $Z10 1) 100)) 
                (flag sent-num $_223148 $Y) !))% every 10 conversations will be considered "close"

(= (add-training $X $Str)
  (, 
  (flag sent-num $Y $Y) 
    (tokenize-atom $Str $Toks) 
      (maplist downcase-atom $Toks $TokList) 
        (pretok $TokList $PreToks) ! 
          (maplist 
            (add-occurs is-word) $PreToks) (dbltok oc $PreToks $ReToks) ! (append (Cons  (oc $X) $ReToks) (:: (oc $Y)) $Grams) ! (flag corpus-training $T (+ $T 1)) (add-ngrams 4 $X $Grams)))


(= (add-ngrams $N $Loc $Grams)
  (, 
  (length $NGram $N) 
    (append $NGram $_235300 $Mid) 
      (forall 
        (append $_235390 $Mid $Grams) 
          (assert-ngram ngram $Loc $NGram))))


(= (assert-ngram $P $Loc $List)
  (, 
  (=.. $W 
    (Cons  $P 
      (Cons  $Loc $List))) 
    (ngram-key $W $A) 
      (flag $A $X 
        (+ $X 1)) 
          (assert-if-new $W) (if-then-else (= ($VAR X)
  0) (flag corpus-nodes $N (+ $N 1)) (flag corpus-node-overlap $O (+ $O 1)))))


(= (add-occurs $F $Tok)
  (, 
  (=.. $P 
    (:: $F $Tok)) 
      (ignore (, (not $P) (add-atom  &self $P) (flag corpus-unique-toks $O (+ $O 1)))) (flag $Tok $X (+ $X 1)) (flag corpus-total-toks $T (+ $T 1))))


(pretok Nil Nil)
(= (pretok (:: .) Nil)
  !)
(= (pretok (:: !) Nil)
  !)
(= (pretok (Cons  $X (Cons  $X (Cons  $X $Nxt))) $O)
  (, ! 
  (atomic-list-concat 
    (:: $X $X $X) " " $Y) 
      (pretok 
        (Cons  $Y $Nxt) $O)))
(= (pretok (Cons  $A (Cons  ' (Cons  $S $Grams))) (Cons  $F $ReTok))
  (, 
  (atom-concat $A $S $F) ! 
    (pretok $Grams $ReTok)))
(= (pretok (Cons  , $Grams) $ReTok)
  (pretok $Grams $ReTok))
(= (pretok (Cons  $S $Grams) (Cons  $S $ReTok))
  (pretok $Grams $ReTok))


(= (dbltok oc $X $X)
  !)
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
  (add-blanks $N $Sent $Slotted) 
    (no-repeats (map-sent $Loc $Slotted)) (debugln $Slotted)))


(= (add-blanks $_283146 Nil Nil)
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
  (nonvar $X) (ngram $Loc $_301518 $_301520 $A (oc $X) $_301526) (ngram $ULoc (oc $X) $B $C $_301668 $NN)))
(= (ngram $Loc $A $B (oc $X) $C $NN)
  (, 
  (nonvar $X) (ngram $Loc $_306190 $A $B (oc $X) $_306198) (ngram $ULoc (oc $X) $C $_306338 $_306340 $NN)))


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



