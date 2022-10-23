#自身を基準に向きを固定する
scoreboard players set 0-0-0-0-2 _ 1
execute if data storage mob_data: Target{Rotation:"LeftUp"} run tp 0-0-0-0-2 ^0.01 ^0.01 ^0.01
execute if data storage mob_data: Target{Rotation:"LeftDown"} run tp 0-0-0-0-2 ^0.01 ^0.01 ^0.01
execute if data storage mob_data: Target{Rotation:"RightUp"} run tp 0-0-0-0-2 ^-0.01 ^-0.01 ^0.01
execute if data storage mob_data: Target{Rotation:"RightDown"} run tp 0-0-0-0-2 ^-0.01 ^-0.01 ^0.01
