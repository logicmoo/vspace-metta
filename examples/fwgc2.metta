; Initialize data space
!(bind! &data (new-space))

; Define new-entry! function
(= (new-entry! $key $value)
   (let $new-state (new-state $value)
        (add-atom &data (= (get-data $key) $new-state))
    )
)

; Populate the data space with entries manually for size 10
!(new-entry! k-0 v-0)
!(new-entry! k-1 v-1)
!(new-entry! k-2 v-2)
!(new-entry! k-3 v-3)
!(new-entry! k-4 v-4)
!(new-entry! k-5 v-5)
!(new-entry! k-6 v-6)
!(new-entry! k-7 v-7)
!(new-entry! k-8 v-8)
!(new-entry! k-9 v-9)

!(assertEqual k-0
   (let $v (new-state v-0)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-1
   (let $v (new-state v-1)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-2
   (let $v (new-state v-2)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-3
   (let $v (new-state v-3)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-4
   (let $v (new-state v-4)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-5
   (let $v (new-state v-5)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-6
   (let $v (new-state v-6)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-7
   (let $v (new-state v-7)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-8
   (let $v (new-state v-8)
    (match &data (= (get-data $x) $v) $x)))

!(assertEqual k-9
   (let $v (new-state v-9)
    (match &data (= (get-data $x) $v) $x)))

