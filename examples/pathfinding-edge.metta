; Pathfinding using a simple graph
; Graph is represented as facts: (= (edge A B) True) means there''s an one-way edge from A to B.

(: edge (-> Symbol Symbol Bool))
(= (edge a b) True)
(= (edge b c) True)
(= (edge c d) True)
(= (edge b e) True)
(= (edge e f) True)
(= (edge g h) True)

;a -> b -> c -> d
;     \
;      e -> f

; Pathfinding rule
(: path (-> Symbol Symbol Bool))
; was base case, node to itself
(= (path $x $x) True)
(= (path $x $y) (and (edge $x $z) (path $z $y))) ; recursive case

; Pathfinding tests
!(assertEqual (path a b) True)
!(assertEqual (path a c) True)
!(assertEqual (path a d) True)
!(assertEqual (path a f) True)
!(assertEqual (path b e) True)
!(assertEqual (path e f) True)

; Should be only one dirrection
;!(assertEqual (path f a) False)
; Not asserted
;!(assertEqual (edge a g) False)
; Not Connected
;!(assertEqual (path a g) False)

