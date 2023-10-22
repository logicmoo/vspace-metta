;; Import List
!(import! &self List.metta)


;; Test insert
!( "============ Test insert ============\n")
!(assertEqual (insert 1 Nil) (Cons 1 Nil))
!(assertEqual (insert 2 (insert 1 Nil)) (Cons 1 (Cons 2 Nil)))
!(assertEqual (insert 3 (insert 2 (insert 1 Nil))) (Cons 1 (Cons 2 (Cons 3 Nil))))

;; Test sort
!( "============ Test sort ============\n")
!(assertEqual (sort (Cons 1 Nil)) (Cons 1 Nil))
!(assertEqual (sort (Cons 2 (Cons 1 Nil))) (Cons 1 (Cons 2 Nil)))
!(assertEqual (sort (Cons 3 (Cons 1 (Cons 2 Nil)))) (Cons 1 (Cons 2 (Cons 3 Nil))))

;; Test elem
!( "============ Test elem ============\n")
!(assertEqual (elem 1 (Cons 3 (Cons 1 (Cons 2 Nil)))) True)
!(assertEqual (elem 5 (Cons 3 (Cons 1 (Cons 2 Nil)))) False)

;; Test uniq
!( "============ Test uniq ============\n")
!(assertEqual (uniq (Cons 2 (Cons 3 (Cons 1 (Cons 2 Nil))))) (Cons 2 (Cons 3 (Cons 1 Nil))))
!(assertEqual (uniq (Cons 2 (Cons 3 (Cons 3 (Cons 2 Nil))))) (Cons 2 (Cons 3 Nil)))

;; Test insert_uniq
!( "============ Test insert_uniq ============\n")
!(assertEqual (insert_uniq 2 (insert_uniq 1 Nil)) (Cons 1 (Cons 2 Nil)))
!(assertEqual (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 Nil))) (Cons 1 (Cons 2 (Cons 3 Nil))))
!(assertEqual (insert_uniq 2 (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 Nil)))) (Cons 1 (Cons 2 (Cons 3 Nil))))

