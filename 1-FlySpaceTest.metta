!(extend-py! pyswip)
!(extend-py! pyswip.easy)
!(extend-py! pyswip.prolog)
;!(extend-py! metta_vspace)

;;! FlySpace ; hyperon.runner.MeTTa object (`r` is registered 'manually' now)
;! resolve ; just a symbol, because `resolve` extension doesn't 'register itself', but it could be possible to automate this

!(FlySpace::fact 5) ; 120

!(FlySpace::self-from-self) ; content

!(match &self ($x content) $x) ; []

; this returns `some` meaning that `content` from this scripts
; is not distinguished from `content` symbol in `r`
;!(match FlySpace::&self ($x content) $x)

! FlySpace::content ; it is turned in OperationAtom, but it is not executed
! (FlySpace::content) ; its execution results in unreduced `(content)`
; the following doesn't work (it might be ok, but semantics of :: is weird overall)
;!(match FlySpace::&self ($x FlySpace::content) $x)

; both work, so :: doesn't separate "namespaces" precisely
!(FlySpace::call_func fact 6)
!(FlySpace::call_func FlySpace::fact 6)

!(match &self $ $)
