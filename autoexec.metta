(Recipe Morning-shot (With-ingredient Ginger))
(Recipe Morning-shot (With-ingredient Orange))

(In-store Apple)
(In-store Banana)
(In-store Orange)

(Hate Apple)
(Hate Grape)
(Love Banana)
(Love Orange)
(Love Strawberry)

!(transform (Love $fruit) (transform (In-store $fruit)
    (join
        (Buy $fruit)
        (transform (Recipe $recipe (With-ingredient $fruit))
            (transform (Recipe $recipe (With-ingredient $ingredient))
                (Buy $ingredient)
            )
        )
    )
))


