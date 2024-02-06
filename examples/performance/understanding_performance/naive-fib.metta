;; Takes Rust MeTTa  10.166 seconds
;; Takes HVM   Regular   0.0009 seconds
;; Takes Rust  Regular   0.0009 seconds
;; Takes MeTTaLog   Regular   15.017 seconds
;; Takes MeTTaLog   Tableing   0.017 seconds

;;; !(pragma! tabling true)

 (=
  (fib $n)
  (if
    (== $n 0) 0
    (if
      (== $n 1) 1
      (+
        (fib
          (- $n 1))
        (fib
          (- $n 2))))))


!(fib 20)

!(fib 50)


