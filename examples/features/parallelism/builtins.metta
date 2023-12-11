; Define is-even predicate

(: is-even (-> Number Bool))
(= (is-even $X) (== (mod $X 2) 0))

(:  incr (-> (MonadicState Number) Number))
(= (incr $var)
   (superpose
           ((do (change-state! $var (+ 1 (get-state $var))))
               (get-state $var))))

; Using concurrent-forall
(: double (-> Number Number))
(= (example-concurrent-forall)
    (superpose
     ((bind! &odds (new-state 0))
       (bind! &evens (new-state 0))
        (concurrent-forall! (between 1 10 $X)
                      (if (is-even $X) (incr &evens) (incr &odds)))
      (print! ( "odds=" (get-state &odds) " evens="  (get-state &evens))))))

; Using concurrent-forall with options
(= (example-concurrent-forall-options)
    (let*
      (($Options (max-threads! 4)) ; Limiting to 4 threads
       ($odds (new-state 0))
       ($evens (new-state 0)))
       (, (concurrent-forall! (between! 1 10 $X)
                      (if (is-even $X) (incr $evens) (incr $odds)) $Options)
         (print! ("odds=" (get-state $odds) " evens="  (get-state $evens))))))


; Using concurrent-and
(= (example-concurrent-and)
    (concurrent-and! (is-even 4) (is-even 6)))

; Using concurrent-and with options
(= (example-concurrent-and-options)
    (let $Options (max_threads 2) ; Limiting to 2 threads
     (concurrent-and! (is-even 4) (is-even 6) $Options)))



(: double (-> Number Number))
; Define double predicate
(= (double $X) (* $X 2))

; Using concurrent-maplist
(= (example-concurrent-maplist)
    (let $Doubled (concurrent-maplist! double (1 2 3 4 5))
       (print! $Doubled)))

; Using concurrent-maplist with options
(= (example-concurrent-maplist-options)
    (let $Options (max_threads 3) ; Limiting to 3 threads
     (, (concurrent-maplist! double (1 2 3 4 5) $Doubled $Options)
        (print! $Doubled))))



!(example-concurrent-forall)

!(example-concurrent-forall-options)


!(example-concurrent-and)

!(example-concurrent-and-options)


!(example-concurrent-maplist)

!(example-concurrent-maplist-options)