; generated: 8 March 1990
; option(s):
;
;   meta_qsort
;
;   Ralph M. Haygood
;
;   meta-interpret Warren benchmark qsort
;
; For any meta-variable ~X~, interpret(~X~) behaves as if
;
;  interpret(~X~) :- ~X~.
;
;  Thus, for example, interpret((foo(X), bar(X), !)) behaves as if
;
;  interpret((foo(X), bar(X), !)) :- foo(X), bar(X), !.
;
;  Note that though ~X~ may contain cuts, those cuts cannot escape from
;  interpret(~X~) to effect the parent goal; interpret(!) is equivalent
;  to true.
;
;  Cuts inside ~X~ are executed according to the rule that conjunction,
;  disjunction, and if-then-else are transparent to cuts, and any other
;  form is transparent to cuts if and only if it can be macro-expanded
;  into a form involving only these three without interpret/1.  If-then
;  and negation are the only such other forms currently recognized; ( A
;  -> B) is equivalent to ( A -> B ; fail ), and \+ A is equivalent to
;  ( A -> fail ; true ).


(= (top)
  (meta-qsort))


(= (meta-qsort)
  (interpret qsort))


(= (interpret $Goal)
  (, 
    (interpret $Goal $Rest) 
    (or 
      (, 
        (nonvar $Rest) 
        (set-det) 
        (interpret $Rest)) True)))

(= (interpret $G $_28512)
  (, 
    (var $G) 
    (set-det) 
    (fail)))
(= (interpret (, $A $B) $Rest)
  (, 
    (set-det) 
    (interpret $A $Rest0) 
    (if-then-else 
      (nonvar $Rest0) 
      (= $Rest
        (, $Rest0 $B)) 
      (interpret $B $Rest))))
(= (interpret (or $A $B) $Rest)
  (, 
    (set-det) 
    (interpret-disjunction $A $B $Rest)))
(= (interpret (if-then $A $B) $Rest)
  (, 
    (set-det) 
    (interpret-disjunction 
      (if-then $A $B) fail $Rest)))
(= (interpret (not $A) $Rest)
  (, 
    (set-det) 
    (interpret-disjunction 
      (if-then $A fail) True $Rest)))
(= (interpret (set-det) True)
  (set-det))
(= (interpret $G $_51692)
  (, 
    (number $G) 
    (set-det) 
    (fail)))
(= (interpret $G $_55036)
  (, 
    (is-built-in $G) 
    (set-det) 
    (interpret-built-in $G)))
(= (interpret $G $_58760)
  (, 
    (define $G $Body) 
    (interpret $Body)))


(= (interpret-disjunction (if-then $A $B) $_61916 $Rest)
  (, 
    (interpret $A $Rest0) 
    (set-det) 
    (if-then-else 
      (nonvar $Rest0) 
      (= $Rest
        (if-then $Rest0 $B)) 
      (interpret $B $Rest))))
(= (interpret-disjunction (if-then $_68514 $_68516) $C $Rest)
  (, 
    (set-det) 
    (interpret $C $Rest)))
(= (interpret-disjunction $A $_71756 $Rest)
  (interpret $A $Rest))
(= (interpret-disjunction $_73716 $B $Rest)
  (interpret $B $Rest))


(= (is_built_in  true)
  True)
(= (is_built_in  (=<  $_76484 $_76486))
  True)


(= (interpret_built_in  true)
  True)
(= (interpret-built-in (=< $X $Y))
  (=< $X $Y))


(= (define  qsort (qsort  (27 74 17 33 94 18 46 83 65 2 32 53 28 85 99 47 28 82 6 11 55 29 39 81 90 37 10 0 66 51 7 21 85 27 31 63 75 4 95 99 11 28 61 74 18 92 40 53 59 8) $_81856 Nil))
  True)

(= (define  (qsort  ([|]  $X $L) $R $R0) (,  (partition  $L $X $L1 $L2) (,  (qsort  $L2 $R1 $R0) (qsort  $L1 $R ([|]  $X $R1)))))
  True)
(= (define  (qsort  Nil $R $R) true)
  True)

(= (define  (partition  ([|]  $X $L) $Y ([|]  $X $L1) $L2) (,  (=<  $X $Y) (,  ! (partition  $L $Y $L1 $L2))))
  True)
(= (define  (partition  ([|]  $X $L) $Y $L1 ([|]  $X $L2)) (partition  $L $Y $L1 $L2))
  True)
(= (define  (partition  Nil $_88398 Nil Nil) true)
  True)

