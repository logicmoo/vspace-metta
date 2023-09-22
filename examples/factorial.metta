




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; functional recursive factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (factorial 0) 1)
(= (factorial $n) (* $n (factorial (- $n 1))))

;;!(assertEqual (factorial 0) 1)
;;!(assertEqual (factorial 1) 1)
;;!(assertEqual (factorial 4) 24)
;;!(assertEqual (factorial 5) 120)
;;!(assertEqual (factorial 10) 3628800)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; functional tail-recursive factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (factorial-tailrec $n) (factorial-tailrec-helper $n 1))
(= (factorial-tailrec-helper 0 $acc) $acc)
(= (factorial-tailrec-helper $n $acc) (factorial-tailrec-helper (- $n 1) (* $n $acc)))

;;!(assertEqual (factorial-tailrec 0) 1)
;;!(assertEqual (factorial-tailrec 1) 1)
;;!(assertEqual (factorial-tailrec 4) 24)
;;!(assertEqual (factorial-tailrec 5) 120)
;;!(assertEqual (factorial-tailrec 10) 3628800)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; functional factorial using accumulators
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (factorial-acc $n) (factorial-acc-helper $n 1))
(= (factorial-acc-helper 0 $acc) $acc)
(= (factorial-acc-helper $n $acc) (factorial-acc-helper (- $n 1) (* $n $acc)))

;;!(assertEqual (factorial-acc 0) 1)
;;!(assertEqual (factorial-acc 1) 1)
;;!(assertEqual (factorial-acc 4) 24)
;;!(assertEqual (factorial-acc 5) 120)
;;!(assertEqual (factorial-acc 10) 3628800)












(= (is $x $x) true)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; logical recursive factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (practorial 0 1) true)
(= (practorial $n $out)
   (and (> $n 0)
      (is $f2 (- $n 1))
      (practorial $f2 $r)
      (is $out (* $n $r))))

;;!(assertTrue (practorial 0 1))
;;!(assertTrue (practorial 1 1))
;;!(assertTrue (practorial 4 24))
;;!(assertTrue (practorial 5 120))
;;!(assertTrue (practorial 10) 3628800)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; logical tail-recursive factorial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (practorial-tailrec $f $rout) (practorial-tailrec-helper $f 1 $rout))
(= (practorial-tailrec-helper 0 $h $h) true)
(= (practorial-tailrec-helper $n1 $f $rout)
   (and (> $n1 0)
      (is $x (* $f $n1))
      (is $f2 (- $n1 1))
      (practorial-tailrec-helper $f2 $x $rout)))

;;!(assertTrue (practorial-tailrec 0 1))
;;!(assertTrue (practorial-tailrec 1 1))
;;!(assertTrue (practorial-tailrec 4 24))
;;!(assertTrue (practorial-tailrec 5 120))
;;!(assertTrue (practorial-tailrec 10) 3628800)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; logical factorial using accumulators
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(= (practorial-acc $f $accout) (practorial-acc-helper $f 1 $accout))
(= (practorial-acc-helper 0 $accout $accout) true)
(= (practorial-acc-helper $n $f $accout)
   (and (> $n 0)
      (is $x (* $f $n))
      (is $f1 (- $n 1))
      (practorial-acc-helper $f1 $x $accout)))

;;!(assertTrue (practorial-acc 0 1))
;;!(assertTrue (practorial-acc 1 1))
;;!(assertTrue (practorial-acc 4 24))
;;!(assertTrue (practorial-acc 5 120))
;;!(assertTrue (practorial-acc 10) 3628800)

