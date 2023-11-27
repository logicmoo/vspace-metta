(: in-inventory (-> $a Bool))
(: can-be-mined (-> $a Bool))
(: can-be-made (-> $a Bool))
(: mined-using (-> $a $tool Bool))
(: mined-from (-> $a $source Bool))
(: made-from (-> $a $components Bool))
(: made-at (-> $a $tool Bool))

(= (can-be-mined diamond) True)
(= (can-be-made diamond) False)
(= (diamond mined-using iron-pickaxe) True)
(= (diamond mined-from diamond-ore) True)

(= (can-be-made iron-pickaxe) True)
(= (can-be-mined iron-pickaxe) False)
(= (iron-pickaxe made-from (stick stick iron-ingot iron-ingot iron-ingot)) True)
(= (iron-pickaxe made-at crafting-table) True)

(= (can-be-made crafting-table) True)
(= (can-be-mined crafting-table) False)
(= (crafting-table made-from (pack 4 plank)) True)
(= (crafting-table made-at inventory) True)

(= (can-be-made inventory) False)
(= (can-be-mined inventory) False)

(: if (-> Bool Any Any Any))
(= (if True $then $else) $then)
(= (if False $then $else) $else)

(: make (-> $a Any))
(= (make $x) (if (and ($x made-from $comp) ($x made-at $tool))
                    (get $tool) (get $comp) (do-make $x $tool $comp) nop))

(: mine (-> $a Any))
(= (mine $x) (if (and ($x mined-using $tool) ($x mined-from $source))
                    (get $tool) (find $source) (do-mine $x $source $tool) nop))

(: get (-> $a Any))
(= (get $x) (if (and (not (in-inventory $x)) (can-be-mined $x)) (mine $x) nop))
(= (get $x) (if (and (not (in-inventory $x)) (can-be-made $x)) (make $x) nop))

!(assertEqual (in-inventory diamond) False)
!(get diamond)
!(assertEqual (in-inventory diamond) True)

