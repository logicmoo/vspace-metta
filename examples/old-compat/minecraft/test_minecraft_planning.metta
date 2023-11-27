(: in-inventory (-> $a Bool))
(: craft (-> $obj $where $comp Any))
(: mine (-> $obj $tool Any))

(: wood Any)
(= (wood) (mine spruce-tree hand))

(: four-planks Any)
(= (four-planks) (craft four-planks inventory (wood)))

(: pack-planks (-> Int Any))
(= (pack-planks $n) (if (> $n 0) (allof (four-planks) (pack-planks (- $n 4))) nop))

(: crafting-table Any)
(= (crafting-table) (craft crafting-table inventory (pack-planks 4)))

(: stick Any)
(= (stick) (craft stick inventory (pack-planks 2)))

(: pack-sticks (-> Int Any))
(= (pack-sticks $n) (if (> $n 0) (allof (stick) (pack-sticks (- $n 1))) nop))

(: wooden-pickaxe Any)
(= (wooden-pickaxe) (craft wooden-pickaxe crafting-table (allof (pack-planks 3) (pack-sticks 2))))

(: cobblestone Any)
(= (cobblestone) (mine cobble-ore wooden-pickaxe))

(: pack-cobblestones (-> Int Any))
(= (pack-cobblestones $n) (if (> $n 0) (allof (cobblestone) (pack-cobblestones (- $n 1))) nop))

(: stone-pickaxe Any)
(= (stone-pickaxe) (craft stone-pickaxe crafting-table (allof (pack-cobblestones 3) (pack-sticks 2))))

!(assertEqual (in-inventory wooden-pickaxe) False)
!(wooden-pickaxe)
!(assertEqual (in-inventory four-planks) True)
!(assertEqual (in-inventory crafting-table) True)
!(assertEqual (in-inventory wooden-pickaxe) True)

