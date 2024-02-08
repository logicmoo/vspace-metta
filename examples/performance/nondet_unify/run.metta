



(= (run $F)
  (run current-output $F))

(= (run $S $F)
  (, 
    (compile-programs) 
    (format $S '~p~t~18| ~t~w~25| ~t~w~32|~n' 
      (:: Program Time GC)) 
    (format $S ~`=t~32|~n Nil) 
    (= $Total
      (total 0 0 0)) 
    (forall 
      (program $P $N $F) 
      (run-program $P $N $S $Total)) 
    (= $Total
      (total $Count $Time $GC)) 
    (is $AvgT 
      (/ $Time $Count)) 
    (is $AvgGC 
      (/ $GC $Count)) 
    (format $S '~t~w~18| ~t~3f~25| ~t~3f~32|~n' 
      (:: average $AvgT $AvgGC))))





(= (compile-programs)
  (, 
    (style-check (- singleton)) 
    (forall 
      (program $P $_458834) 
      (load-files (with_self  $P 
        (bench $P)) 
        (:: 
          (silent True) 
          (if changed))))))


(= (run-program $Program $N $S $Total)
  (, 
    (ntimes $Program $N $Time $GC) 
    (set-det) 
    (add 1 $Total 1) 
    (add 2 $Total $Time) 
    (add 3 $Total $GC) 
    (format $S '~p~t~18| ~t~3f~25| ~t~3f~32|~n' 
      (:: $Program $Time $GC))))


(= (add $Arg $Term $Time)
  (, 
    (arg $Arg $Term $T0) 
    (is $T 
      (+ $T0 $Time)) 
    (nb-setarg $Arg $Term $T)))





(= (get-performance-stats $GC $T)
  (, 
    (statistics gctime $GC) 
    (statistics cputime $T))); SWI-MeTTa




(= (get-performance-stats $GC $T)
  (, 
    (statistics garbage-collection 
      (:: $_480306 $_480326 $TGC)) 
    (statistics cputime 
      (:: $TT $_480448)) 
    (is $GC 
      (/ $TGC 1000)) 
    (is $T 
      (/ $TT 1000))))




(= (ntimes $M $N $T $GC)
  (, 
    (get-performance-stats $GC0 $T0) 
    (ntimes $M $N) 
    (get-performance-stats $GC1 $T1) 
    (ntimes-dummy $N) 
    (get-performance-stats $GC2 $T2) 
    (is $T 
      (- 
        (- $T1 $T0) 
        (- $T2 $T1))) 
    (is $GC 
      (- 
        (- $GC1 $GC0) 
        (- $GC2 $GC1)))))

(= (ntimes $_496114 $N)
  (, 
    (=:= $N 0) 
    (set-det)))
(= (ntimes $M $N)
  (, 
    (not-not-top $M) 
    (set-det) 
    (is $N1 
      (- $N 1)) 
    (ntimes $M $N1)))


(= (ntimes-dummy $N)
  (, 
    (=:= $N 0) 
    (set-det)))
(= (ntimes-dummy $N)
  (, 
    (not-not-dummy) 
    (set-det) 
    (is $N1 
      (- $N 1)) 
    (ntimes-dummy $N1)))


(= (not-not-top $M)
  (, 
    (not-top $M) 
    (set-det) 
    (fail)))
(= (not_not_top  $_514656)
  True)


(= (not-top $M)
  (, (with_self  $M 
    (top)) 
    (set-det) 
    (fail)))
(= (not_top  $_518830)
  True)


(= (not-not-dummy)
  (, 
    (not-dummy) 
    (set-det) 
    (fail)))
(= not_not_dummy
  True)


(= (not-dummy)
  (, 
    (dummy) 
    (set-det) 
    (fail)))
(= not_dummy
  True)


(= dummy
  True)

;;	tune_counts
;
;	Write the program/2 table below, tuning all counts such that the
;	test runs for about 1 second.


(= (tune-counts)
  (forall 
    (program $P $_17536) 
    (, 
      (tune-count $P $C) 
      (format ~q.~n 
        (:: (program $P $C))))))


(= (tune-count $Program $Count)
  (, 
    (between 1 100 $I) 
    (is $C 
      (<< 1 $I)) 
    (ntimes $Program $C $T $_22634) 
    (> $T 0.5) 
    (set-det) 
    (is $Count 
      (round (* $C (/ 1 $T))))))


(= (program $P $N $F)
  (, 
    (program $P $N0) 
    (is $N 
      (max 1 
        (round (* $N0 $F))))))

;;	program(?Program, ?Times)
;
;	Times are tuned on Jan 24, 2010, using SWI-MeTTa 5.9.7 on
;	AMD 5400+ (gcc 4.4.1; AMD64 mode)

(= (program  boyer 8)
  True)
(= (program  browse 7)
  True)
(= (program  chat_parser 46)
  True)
(= (program  crypt 868)
  True)
(= (program  fast_mu 4819)
  True)
(= (program  flatten 8275)
  True)
(= (program  meta_qsort 966)
  True)
(= (program  mu 6827)
  True)
(= (program  nreverse 11378)
  True)
(= (program  poly_10 105)
  True)
(= (program  prover 6400)
  True)
(= (program  qsort 8445)
  True)
(= (program  queens_8 63)
  True)
(= (program  query 1219)
  True)
(= (program  reducer 164)
  True)
(= (program  sendmore 44)
  True)
(= (program  simple_analyzer 320)
  True)
(= (program  tak 35)
  True)
(= (program  zebra 166)
  True)


		 
/*******************************
		 *	    INTERLEAVED		*
		 *******************************/



(= (run-interleaved $F)
  (, 
    (compile-programs) 
    (findall 
      (- $N $P) 
      (program $P $N $F) $Pairs) 
    (phrase 
      (seq-interleaved $Pairs) $Sequence) 
    (seq-clause $Sequence $Body) (remove-all-atoms  &self rni) 
    (assert (= (rni)
  $Body) $Ref) 
    (garbage-collect) 
    (time rni) 
    (erase $Ref)))


(= (-->  (seq_interleaved  Nil) !)
  True)
(= (-->  (seq_interleaved  $Pairs) (,  (seq_interleaved  $Pairs $Rest) (seq_interleaved  $Rest)))
  True)

(= (-->  (seq_interleaved  Nil Nil) Nil)
  True)
(= (-->  (seq_interleaved  ([|]  (-  1 $P) $T0) $T) (,  ! (,  ($P) (seq_interleaved  $T0 $T))))
  True)
(= (-->  (seq_interleaved  ([|]  (-  $N $P) $T0) ([|]  (-  $N1 $P) $T)) (,  ($P) (,  {(is  $N1 (-  $N 1)) } (seq_interleaved  $T0 $T))))
  True)


(= (seq_clause  Nil true)
  True)
(= (seq-clause (Cons  $H $T) (, (not (not (with_self  $H (top)))) $G))
  (seq-clause $T $G))


(= (run-non-interleaved $F)
  (, 
    (compile-programs) 
    (findall 
      (- $N $P) 
      (program $P $N $F) $Pairs) 
    (phrase 
      (seq-non-interleaved $Pairs) $Sequence) 
    (seq-clause $Sequence $Body) 
    (assert (= (rni)
  $Body) $Ref) 
    (garbage-collect) 
    (time rni) 
    (erase $Ref)))


(= (-->  (seq_non_interleaved  Nil) Nil)
  True)
(= (-->  (seq_non_interleaved  ([|]  (-  0 $_84164) $T)) (,  ! (seq_non_interleaved  $T)))
  True)
(= (-->  (seq_non_interleaved  ([|]  (-  $N $P) $T)) (,  ($P) (,  {(is  $N1 (-  $N 1)) } (seq_non_interleaved  ([|]  (-  $N1 $P) $T)))))
  True)

