; Pathfinding using a simple graph
; Graph is represented as facts: (= (edge A B) True) means there's an edge from A to B.
(= (edge a b) True)
(= (edge b c) True)
(= (edge c d) True)
(= (edge b e) True)
(= (edge e f) True)

; Pathfinding rule
(= (path $x $y) True) ; base case, node to itself
(= (path $x $y) (and (edge $x $z) (path $z $y))) ; recursive case


; Pathfinding tests
!(assertEqual (path a b) True)
!(assertEqual (path a c) True)
!(assertEqual (path a d) True)
!(assertEqual (path a f) True)
!(assertEqual (path b e) True)
!(assertEqual (path e f) True)
!(assertEqual (path d f) False)


