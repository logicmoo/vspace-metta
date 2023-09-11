!(extend-py! metta_learner)

;!(memoize fibonacci)

(= (fibonacci  0 0) True)
(= (fibonacci  1 1) True)
(= (fibonacci  $N1 $N4)
     (sequential
	(>   $N1 1)
	(is  $N2 (+  $N1 -1))
	(is  $N3 (+  $N1 -2))
	(fibonacci  $N2 $N5)
	(fibonacci  $N3 $N6)
	(is  $N4 (+  $N5 $N6))))

;!(print (fibonacci 1 $What))


!(metta_learner::vspace-main)

