
  (use-module (library socket))
  (use-module (library thread))


  (= 
    (call-wdet $Goal $WasDet) 
    (, 
      (call $Goal) 
      (deterministic $WasDet)))
; Helper to parse Server and Port

  (= 
    (parse-service-port $Peer $DefaultPort $Server $Port) 
    (if-then-else 
      (= $Peer 
        (with_self  $Server $Port)) True 
      (if-then-else 
        (integer $Peer) 
        (, 
          (= $Server localhost) 
          (= $Port $Peer)) 
        (, 
          (= $Server $Peer) 
          (= $Port $DefaultPort))))); Default port if none specified




  (= 
    (service-running $Alias) 
    (, 
      (thread-property $VSS $TS) 
      (= $VSS $Alias) 
      (= $TS 
        (status running)) 
      (set-det)))

; Start interpreter service with MSpace = &self

  (= 
    (start-vspace-service $Port) 
    (, 
      (current-self $MSpace) 
      (start-vspace-service $MSpace $Port)))
; see amples of using this https://github.com/logicmoo/vspace-metta/blob/main/examples/features/distributed-processing/create-server.metta
  (= 
    (start-vspace-service $MSpace $Port) 
    (, 
      (atomic-list-concat 
        (:: vspace-service $MSpace $Port) - $Alias) 
      (start-vspace-service $Alias $MSpace $Port)))

  (= 
    (start-vspace-service $Alias $Space $Port) 
    (, 
      (service-running $Alias) 
      (set-det)))
  (= 
    (start-vspace-service $Alias $MSpace $Port) 
    (thread-create 
      (run-vspace-service $MSpace $Port) $_ 
      (:: 
        (detached True) 
        (alias $Alias))))



  (dynamic (/ was-vspace-port-in-use 2))


  (= 
    (handle-port-in-use $MSpace $Port) 
    (, 
      (add-atom  &self 
        (was_vspace_port_in_use  $MSpace $Port)) 
      (is $Port100 
        (+ $Port 100)) 
      (run-vspace-service $MSpace $Port100)))



  (= 
    (run-vspace-service $MSpace $Port) 
    (catch 
      (run-vspace-service-unsafe $MSpace $Port) 
      (error 
        (socket-error eaddrinuse $_) $_) 
      (handle-port-in-use $MSpace $Port)))


  (= 
    (run-vspace-service-unsafe $MSpace $Port) 
    (, 
      (tcp-socket $Socket) 
      (tcp-bind $Socket $Port) 
      (tcp-listen $Socket 5) 
      (tcp-open-socket $Socket $ListenFd) 
      (not-compatio (fbugio (run-vspace-service $MSpace $Port))) 
      (remove-all-atoms  &self 
        (vspace_port  $_)) 
      (add-atom  &self 
        (vspace_port  $Port)) 
      (accept-vspace-connections $MSpace $ListenFd)))


  (= 
    (accept-vspace-connections $MSpace $ListenFd) 
    (, 
      (tcp-accept $ListenFd $RemoteFd $RemoteAddr) 
      (nb-setval self-space $MSpace) 
      (format 
        (atom $ThreadAlias0) peer-~w-~w-~w- 
        (:: $RemoteAddr $RemoteFd $MSpace)) 
      (gensym $ThreadAlias0 $ThreadAlias) 
      (thread-create 
        (setup-call-cleanup 
          (tcp-open-socket $RemoteFd $Stream) 
          (ignore (handle-vspace-peer $Stream)) 
          (catch 
            (close $Stream) $_ True)) $_ 
        (:: 
          (detached True) 
          (alias $ThreadAlias))) 
      (accept-vspace-connections $MSpace $ListenFd)))


  (= 
    (handle-vspace-peer $Stream) 
    (, 
      (recv-term $Stream $Goal) 
      (if-then 
        (\= $Goal end-of-file) 
        (or 
          (each-then 
            (catch 
              (call-wdet $Goal $WasDet) $Error True) 
            (if-then-else 
              (var $Error) 
              (send-term $Stream 
                (success $Goal $WasDet)) 
              (send-term $Stream 
                (error $Error)))) 
          (send-term $Stream failed))) 
      (handle-vspace-peer $Stream)))


  (= 
    (any-to-i $A $I) 
    (, 
      (integer $A) 
      (= $I $A)))
  (= 
    (any-to-i $A $I) 
    (, 
      (format 
        (atom $Ay) ~w 
        (:: $A)) 
      (atom-number $Ay $I)))
; Start the service automatically on a default port or a specified port

  (dynamic (/ vspace-port 1))

  (= 
    (get-vspace-port $Port) 
    (, 
      (current-prolog-flag argv $L) 
      (member $AA $L) 
      (atom-concat --service= $P $AA) 
      (atom-number $P $Port) 
      (set-det) 
      (set-prolog-flag port $Port)))
  (= 
    (get-vspace-port $Port) 
    (, 
      (current-prolog-flag port $P) 
      (any-to-i $P $Port) 
      (set-det)))
  (= 
    (get-vspace-port $Port) 
    (, 
      (vspace-port $Port) 
      (set-det)))
  (= 
    (get-vspace-port $Port) 
    (= $Port 3023))

  (= 
    (start-vspace-service) 
    (, 
      (is-compiling) 
      (set-det)))
  (= 
    (start-vspace-service) 
    (, 
      (get-vspace-port $Port) 
      (start-vspace-service $Port) 
      (set-det)))



; Helper to establish connection

  (= 
    (connect-to-service $HostPort $Stream) 
    (, 
      (parse-service-port $HostPort 3023 $Host $Port) 
      (tcp-socket $Socket) 
      (tcp-connect $Socket 
        (with_self  $Host $Port)) 
      (tcp-open-socket $Socket $Stream)))

; Helper to send goal and receive response

  (= 
    (send-term $Stream $MeTTa) 
    (, 
      (write-canonical $Stream $MeTTa) 
      (writeln $Stream .) 
      (flush-output $Stream)))

  (= 
    (recv-term $Stream $MeTTa) 
    (read-term $Stream $MeTTa Nil))


; Read and process the service's response

  (= 
    (read-response $Stream $Goal) 
    (, 
      (flush-output $Stream) 
      (repeat) 
      (recv-term $Stream $Response) 
      (if-then-else 
        (== $Response failed) 
        (, 
          (set-det) 
          (fail)) 
        (if-then-else 
          (= $Response 
            (error $Throw)) 
          (throw $Throw) 
          (, 
            (= $Response 
              (success $Goal $WasDet)) 
            (if-then-else 
              (== $WasDet True) 
              (set-det) True))))))

; Connects to the service and sends the goal
; ?- remote_call('localhost', member(X, [1,2,3])).

  (= 
    (remote-call $Peer $Goal) 
    (setup-call-cleanup 
      (, 
        (connect-to-service $Peer $Stream) 
        (send-term $Stream $Goal)) 
      (read-response $Stream $Goal) 
      (close $Stream)))


  (= 
    (remote-eval $Peer $MeTTa $Result) 
    (remote-call $Peer 
      (eval $MeTTa $Result)))


  (dynamic (/ remote-code 4))/*
;; Example usage (from MeTTa)

metta> !(remote-eval!  localhost (add-atom &self (A b b)))
metta> !(remote-eval!  localhost (add-atom &self (A b c)))
metta> !(remote-eval!  localhost (match &self $Code $Code))

*/
  ; Maps  MeTTa-Space and function to Service address


  (= 
    (our-address (with_self  $Host $Port)) 
    (, 
      (gethostname $Host) 
      (vspace-port $Port)))

  (= 
    (we-exist $Addr) 
    (our-address $Addr))


  (= 
    (they-exist $Addr) 
    (, 
      (our-address $Ours) 
      (diff $Addr $Ours) 
      (execute-goal (we-exist $Addr)) 
      (not (our-address $Addr))))

; tell the services that took our place about us.

  (= 
    (register-ready) 
    (, 
      (our-address $Ours) 
      (forall 
        (was-vspace-port-in-use $MSpace $Port) 
        (remote-call $Port 
          (register-remote-code $MSpace 
            (we-exist $_) True $Ours)))))

; before we terminate we should call this

  (at-halt register-gone)

  (= 
    (register-gone) 
    (, 
      (not (service-running $_)) 
      (set-det)))
  (= 
    (register-gone) 
    (ignore (, (fail) (our-address $Ours) (forall (they-exist $Addr) (remote-call $Addr (unregister-peer $Ours))))))


  (= 
    (unregister-peer $Who) 
    (forall 
      (remote-code $MSpace $EntryPoint $_ $Who) 
      (unregister-remote-code $MSpace $EntryPoint $Who)))

; Registers a predicate to a service

  (= 
    (register-remote-code $MSpace $EntryPoint $NonDet $Server) 
    (, 
      (unregister-remote-code $MSpace $EntryPoint $Server) 
      (assertz (remote-code $MSpace $EntryPoint $NonDet $Server))))

  (= 
    (unregister-remote-code $MSpace $EntryPoint $Server) 
    (remove-all-atoms  &self 
      (remote_code  $MSpace $EntryPoint $_ $Server)))




  (= 
    (execute-goal $Goal) 
    (, 
      (current-self $MSpace) 
      (execute-goal $MSpace $Goal $IsDet) 
      (if-then-else 
        (was-t $IsDet) 
        (set-det) True)))

  (= 
    (execute-goal $Self True $_) 
    (set-det))
; Meta-interpreter with cut handling
  (= 
    (execute-goal $MSpace $Goal $IsDet) 
    (, 
      (remote-code $MSpace $Goal $NonDet $Peer) 
      (if-then-else 
        (was-t $NonDet) True 
        (set-det)) 
      (remote-call $Peer 
        (execute-goal $MSpace $Goal $IsDet)))); If the goal is registered for a service, call remotely


  (= 
    (execute-goal $Self 
      (set-det) $IsDet) 
    (, 
      (set-det) 
      (= $IsDet True)))  ; Handle cuts
  (= 
    (execute-goal $Self fail $IsDet) 
    (, 
      (set-det) 
      (if-then-else 
        (was-t $IsDet) 
        (throw cut-fail) fail)))
  (= 
    (execute-goal $MSpace $Goal $_) 
    (, 
      (predicate-property $Goal 
        (number-of-clauses $_)) 
      (set-det) 
      (get-atoms  &self 
        (= $Goal $Body)) 
      (catch 
        (execute-goal $MSpace $Body $IsDet) cut-fail 
        (, 
          (set-det) 
          (fail))) 
      (if-then-else 
        (was-t $IsDet) 
        (set-det) True))); Retrieve the clause body for the goal

  (= 
    (execute-goal $MSpace 
      (call $Cond) $_) 
    (, 
      (set-det) 
      (execute-goal $MSpace $Cond $IsDet) 
      (if-then-else 
        (was-t $IsDet) 
        (set-det) True)))
  (= 
    (execute-goal $MSpace 
      (, $Cond $Then) $IsDet) 
    (, 
      (set-det) 
      (execute-goal $MSpace $Cond $IsDet) 
      (execute-goal $MSpace $Then $IsDet)))
  (= 
    (execute-goal $MSpace 
      (or $Cond $Else) $IsDet) 
    (, 
      (set-det) 
      (or 
        (execute-goal $MSpace $Cond $IsDet) 
        (execute-goal $MSpace $Else $IsDet))))
  (= 
    (execute-goal $MSpace 
      (or 
        (each-then $Cond $Then) $Else) $IsDet) 
    (, 
      (set-det) 
      (or 
        (each-then 
          (execute-goal $MSpace $Cond $IsDet) 
          (execute-goal $MSpace $Then $IsDet)) 
        (execute-goal $MSpace $Else $IsDet))))
  (= 
    (execute-goal $MSpace 
      (each-then $Cond $Then) $IsDet) 
    (, 
      (set-det) 
      (each-then 
        (execute-goal $MSpace $Cond $IsDet) 
        (execute-goal $MSpace $Then $IsDet))))
  (= 
    (execute-goal $MSpace 
      (if-then-else $Cond $Then $Else) $IsDet) 
    (, 
      (set-det) 
      (if-then-else 
        (execute-goal $MSpace $Cond $IsDet) 
        (execute-goal $MSpace $Then $IsDet) 
        (execute-goal $MSpace $Else $IsDet))))
  (= 
    (execute-goal $MSpace 
      (if-then $Cond $Then) $IsDet) 
    (, 
      (set-det) 
      (if-then 
        (execute-goal $MSpace $Cond $IsDet) 
        (execute-goal $MSpace $Then $IsDet))))
  (= 
    (execute-goal $MSpace 
      (catch $X $E $Z) $IsDet) 
    (, 
      (set-det) 
      (catch 
        (execute-goal $MSpace $X $IsDet) $E 
        (execute-goal $MSpace $Z $_))))
  (= 
    (execute-goal $MSpace 
      (findall $X $Y $Z) $_) 
    (, 
      (set-det) 
      (findall $X 
        (execute-goal $MSpace $Y $_) $Z)))
  (= 
    (execute-goal $MSpace 
      (forall $X $Y) $_) 
    (, 
      (set-det) 
      (forall 
        (execute-goal $MSpace $X $_) 
        (execute-goal $MSpace $Y $_))))
  (= 
    (execute-goal $Self $SubGoal $IsCut) 
    (, 
      (call-wdet $SubGoal $WasDet) 
      (if-then-else 
        (was-t $WasDet) 
        (set-det) True)))


  (= 
    (was-t $T) 
    (== $T True))



  (= 
    (:  ccml_nth 
      (attr_unify_hook  $Nth $Var)) True)


  (= 
    (metta-hyperpose-v0 $P2 $InList $OutList) 
    (, 
      (current-prolog-flag cpu-count $Count) 
      (length $InList $Len) 
      (length $OutList $Len) 
      (max-min $Count $Len $_ $Procs) 
      (findall 
        (thread $Goal $OutputVar) 
        (, 
          (nth1 $N $InList $InputVar) 
          (= $Goal 
            (call $P2 $InputVar $OutputVar)) 
          (put-attr $OutputVar ccml-nth $N)) $GoalsWithOutputs) 
      (separate-goals-and-outputs $GoalsWithOutputs $Goals $OutList) 
      (concurrent $Procs $Goals Nil)))


  (= 
    (separate_goals_and_outputs  () () ()) True)
  (= 
    (separate-goals-and-outputs 
      (Cons  
        (thread $Goal $OutputVar) $GoalsWithOutputs) 
      (Cons  $Goal $Goals) 
      (Cons  $OutputVar $Outputs)) 
    (separate-goals-and-outputs $GoalsWithOutputs $Goals $Outputs))





;:- use_module(library(concurrent)).

; Meta predicate that combines concurrent processing and result gathering

  (= 
    (metta-concurrent-maplist $P2 $InList $OutList) 
    (, 
      (= $InList 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (set-det) 
      (setup-call-cleanup 
        (concurrent-assert-result $P2 $InList $Tag) 
        (gather-results-in-order $Tag $InList $OutList) 
        (cleanup-results $Tag)))); only use extra threads iof 2 or more

  (= 
    (metta-concurrent-maplist $P2 $InList $OutList) 
    (maplist $P2 $InList $OutList))

; Meta predicate that combines concurrent processing and result gathering

  (= 
    (metta-hyperpose $Eq $RetType $Depth $MSpace $InList $Res) 
    (, 
      (fail) 
      (= $InList 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (set-det) 
      (setup-call-cleanup 
        (concurrent-assert-result 
          (eval-20 $Eq $RetType $Depth $MSpace) $InList $Tag) 
        (each-result-in-order $Tag $InList $Res) 
        (cleanup-results $Tag)))); only use extra threads iof 2 or more

  (= 
    (metta-hyperpose $Eq $RetType $Depth $MSpace $ArgL $Res) 
    (eval-20 $Eq $RetType $Depth $MSpace 
      (:: superpose $ArgL) $Res))


; Concurrently applies P2 to each element of InList, results are tagged with a unique identifier

  (= 
    (concurrent-assert-result $P2 $InList $Tag) 
    (, 
      (current-prolog-flag cpu-count $Count) 
      (length $InList $Len) 
      (max-min $Count $Len $_ $Procs) 
      (gensym counter $Tag) 
      (concurrent-forall 
        (nth1 $Index $InList $InputVar) 
        (assert-result-after-computation $P2 $Tag $Index $InputVar) 
        (:: (threads $Procs))))); Generate a unique identifier

    ;findall(assert_result_after_computation(P2, Tag, Index, InputVar), nth1(Index, InList, InputVar), Goals),
    ;concurrent(Procs, Goals, []).

; Asserts the output of applying P2 to Input

  (= 
    (assert-result-after-computation $P2 $Tag $Index $Input) 
    (catch 
      (or 
        (each-then 
          (call $P2 $Input $Output) 
          (add-atom  &self 
            (result  $Tag $Index $Input $Output))) 
        (add-atom  &self 
          (result  $Tag $Index $Input 
            (failed  $Tag)))) $E 
      (add-atom  &self 
        (result  $Tag $Index $Input 
          (error  $E)))))


; Gathers results in order, matching them with the corresponding inputs

  (= 
    (gather-results-in-order $Tag $InList $OrderedResults) 
    (gather-results-in-order $Tag $InList 0 $OrderedResults))


  (= 
    (use-result $IInput $RResult $Input $Result) 
    (, 
      (var $RResult) 
      (set-det) 
      (= $IInput $Input) 
      (= $Result $RResult)))
  (= 
    (use-result $IInput 
      (error $E) $Input $Result) 
    (, 
      (ignore (= $IInput $Input)) 
      (set-det) 
      (throw $E)))
  (= 
    (use-result $IInput 
      (failed $_) $Input $Result) 
    (, 
      (ignore (= $IInput $Input)) 
      (set-det) 
      (fail)))
  (= 
    (use-result $IInput $RResult $Input $Result) 
    (, 
      (= $IInput $Input) 
      (= $Result $RResult)))


  (= 
    (gather_results_in_order  $_ () $_ ()) True)
  (= 
    (gather-results-in-order $Tag 
      (Cons  $Input $RestInputs) $Index 
      (Cons  $Result $OrderedResults)) 
    (or 
      (each-then 
        (result $Tag $Index $IInput $RResult) 
        (, 
          (use-result $IInput $RResult $Input $Result) 
          (is $NextIndex 
            (+ $Index 1)) 
          (gather-results-in-order $Tag $RestInputs $NextIndex $OrderedResults))) 
      (, 
        (sleep 0.075) 
        (gather-results-in-order $Tag 
          (Cons  $Input $RestInputs) $Index 
          (Cons  $Result $OrderedResults))))); Wait for 75 milliseconds before retrying




  (= 
    (each-result-in-order $Tag $InList $OrderedResults) 
    (each-result-in-order $Tag $InList 0 $OrderedResults))
  (= 
    (each-result-in-order $_ Nil $_ $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (each-result-in-order $Tag 
      (Cons  $Input $RestInputs) $Index $Result) 
    (or 
      (each-then 
        (result $Tag $Index $IInput $RResult) 
        (or 
          (use-result $IInput $RResult $Input $Result) 
          (, 
            (is $NextIndex 
              (+ $Index 1)) 
            (each-result-in-order $Tag $RestInputs $NextIndex $Result)))) 
      (, 
        (sleep 0.075) 
        (each-result-in-order $Tag 
          (Cons  $Input $RestInputs) $Index $Result)))); Wait for 75 milliseconds before retrying



; Cleanup predicate to remove asserted results from the database

  (= 
    (cleanup-results $Tag) 
    (remove-all-atoms  &self 
      (result  $Tag $_ $_ $_)))


; :- initialization(start_vspace_service).


