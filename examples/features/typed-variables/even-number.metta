

(: is-even (-> Number Bool))
(= (is-even $X) (== (% $X 2) 0))

(= (fail-not-even $v) (if (is-even $v) () (empty)))

!(superpose
    (case (freeze! $even fail-not-even) ())
       (asserEqual
             (let $even (superpose (1 2 3 4 5 6)) $even)
             (superpose (2 4 6))))

