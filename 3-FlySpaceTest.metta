
;!(extend-py! resolve)
;!(extend-py! metta_learner)

!(extend-py! metta_learner)

! metta_learner ; hyperon.runner.MeTTa object (`metta_learner` is registered 'manually' now)
! resolve ; just a symbol, because `resolve` extension doesn't 'register itself', but it could be possible to automate this

!(metta_learner::fact 5) ; 120

!(metta_learner::self-from-self) ; content

; !(match &self ($x content) $x) ; []

; this returns `some` meaning that `content` from this scripts
; is not distinguished from `content` symbol in `metta_learner`
; !(match metta_learner::&self ($x content) $x)

! metta_learner::content ; it is turned in OperationAtom, but it is not executed
! (metta_learner::content) ; its execution results in unreduced `(content)`
; the following doesn't work (it might be ok, but semantics of :: is weird overall)
;!(match metta_learner::&self ($x metta_learner::content) $x)

; both work, so :: doesn't separate "namespaces" precisely
!(metta_learner::call_func fact 6)
!(metta_learner::call_func metta_learner::fact 6)


!(extend-py! metta_learner)


; bind a bunch of numpy objects to tokens for convenience
!(bind! &x (np.vector 1 2 3))
!(bind! &y (np.array (3 2 3)))
!(bind! &m (np.array ((6 1) (7 2) (8 3))))
!(bind! &mt (np.array ((1 0 0) (0 1 0))))

; FIXME: no exception?
!(np.vector 1 "S")
; !(np.array (1 (1 2))) ; exception because of bad shape

; wrapping into a function should work
; also works automatically with python numbers
; (no need to turn 1 into np.array)
(= (np-add-1 $x) (np.add $x 1))

!(np-add-1 (np-add-1 &x)) ; [3 4 5] ; not a pattern

; could work with untyped np objects,
; although with some problems (the resulting type would be Number),
; but doesn't work, because + expects Number
!(+ &x &y)

!(== (np.add &y &x) (np.add &x &y)) ; True
!(== &x &y) ; False
!(== &x (np.vector 1 2)) ; False

! (np.add &m (np.vector 1 2)) ; ((7 3) (8 4) (9 5))
! (np.matmul &mt &m) ; ((6 1) (7 2))

! (np.add &m $x) ; will be turned into pattern

! (case (np.array (((1 1) (2 2) (3 3)) ((2 3) (3 4) (4 5))))
    (
        (($a $b $c) $b)
        (($x ($y1 $y2 $y3)) (np.add $x $y2))
    )
  )

! (case (np.vector 1 2 3)
    (
        (&x "X")
    )
  )



;!(extend-py! flyspace)

;!(let $space (new-fly-space) (add-atom &self (= (my-nspace) $space)))

;!(add-atom (my-nspace) (The user name is William))
;!(add-atom (my-nspace) (William is 26 years old))
;!(add-atom (my-nspace) (William has 2 brothers))
;!(add-atom (my-nspace) (Brothers names are Mike and Nick))
;!(add-atom (my-nspace) (Nick is 3 years older than William))
;!(add-atom (my-nspace) (Mike is 5 years younger than Nick))


; !(match (my-nspace) (What is the user name $x) $x)
; !(match (my-nspace) (How old $x is William) $x)
;!(match (my-nspace) (How old ($x) is Mike) $x)
; !(match (my-nspace) (What $x is father name) $x)
; !(match (my-nspace) (What $x is Mike age) $x