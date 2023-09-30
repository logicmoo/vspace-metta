; Pathfinding using a simple graph
; Graph is represented as facts: (= (edge A B) True) means there''s an one-way edge from A to B.
(: edge (-> Symbol Symbol Bool))


; Pathfinding rule
(: path (-> Symbol Symbol Bool))
; was base case, node to itself
(= (path $x $x) True)
(= (path $x $y) (and (edge $x $z) (path $z $y))) ; recursive case


(= (edge a b) True)
(= (edge b c) True)
(= (edge c d) True)
(= (edge b e) True)
(= (edge e f) True)
(= (edge g h) True)

;a -> b -> c -> d
;     \
;      e -> f

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




; Pathfinding using a simple graph
; Graph is represented as one-way edge functions

(: edge-f (-> Symbol Symbol))
(= (edge-f a) b)
(= (edge-f b) c)
(= (edge-f c) d)
(= (edge-f e) f)



(= (at $x) (assertTrue $x))
(= (at-a-b) (at (== (edge-f a) b)))
!(at-a-b)
(= (a-t-a-b) (assertTrue (== (edge-f a) b)))
!(a-t-a-b)


; Pathfinding rule
(: epath-f (-> Symbol Symbol))
; recursive case
(= (epath-f $x) (epath-f (edge-f $x)))
; was base case, node to itself
(= (epath-f $x) $x)


; Pathfinding rule
(: path-f (-> Symbol Symbol))
; was base case, node to itself
(= (path-f $x) $x)
; recursive case
(= (path-f $x) (edge-f (path-f $x)))


; Present
!(assertTrue (== (edge-f a) b))
; Not present
!(assertFalse (== (edge-f a) d))

; Pathfinding tests
;!(assertTrue (== (path-f e) e))
;!(assertTrue (== (path-f a) b))
;!(assertTrue (== (path-f a) d))
; Should be only one dirrection
;!(assertFalse (== (path-f c) a))
; Not Connected
;!(assertFalse (== (path-f a) f))


; Pathfinding tests
;!(assertTrue (== (epath-f e) e))
;!(assertTrue (== (epath-f a) b))
;!(assertTrue (== (epath-f a) d))
; Should be only one dirrection
;!(assertFalse (== (epath-f c) a))
; Not Connected
;!(assertFalse (== (epath-f a) f))


