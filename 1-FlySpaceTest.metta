!(extend-py! metta_vspace)
!(extend-py! flyspace)

! flyspace ; hyperon.runner.MeTTa object (`flyspace` is registered 'manually' now)
! metta_vspace ; just a symbol, because `metta_vspace` extension doesn't 'register itself', but it could be possible to automate this


!(flyspace::flyspace-main)

!(flyspace::fact 5) ; 120

!(flyspace::self-from-self) ; content

!(match &self ($x content) $x) ; []

; this returns `some` meaning that `content` from this scripts
; is not distinguished from `content` symbol in `flyspace`
!(match flyspace::&self ($x content) $x)

! flyspace::content ; it is turned in OperationAtom, but it is not executed
! (flyspace::content) ; its execution results in unreduced `(content)`
; the following doesn't work (it might be ok, but semantics of :: is weird overall)
!(match flyspace::&self ($x flyspace::content) $x)

; both work, so :: doesn't separate "namespaces" precisely
!(flyspace::call_func fact 6)
!(flyspace::call_func flyspace::fact 6)






!(flyspace::fact 5) ; 120

!(flyspace::test-nondeterministic-foreign)


!(fb.test-nondeterministic-foreign)


!(flyspace::self-from-self) ; content

!(match &self ($x content) $x) ; []

; this returns `some` meaning that `content` from this scripts
; is not distinguished from `content` symbol in `flyspace`
;!(match flyspace::&self ($x content) $x)

! flyspace::content ; it is turned in OperationAtom, but it is not executed
! (flyspace::content) ; its execution results in unreduced `(content)`
; the following doesn't work (it might be ok, but semantics of :: is weird overall)
;!(match flyspace::&self ($x flyspace::content) $x)

; both work, so :: doesn't separate "namespaces" precisely
!(flyspace::call_func fact 6)
!(flyspace::call_func flyspace::fact 6)


!(match &self $ $)
