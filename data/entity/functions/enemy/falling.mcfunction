tag @s[nbt={OnGround:0b}] add falling
execute if data entity @s[tag=falling] {OnGround:1b} run data modify storage mob_data: Call set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Turn[0].Skills.Falling
execute if data entity @s[tag=falling] {OnGround:1b} run function entity:enemy/call
execute if data entity @s[tag=falling] {OnGround:1b} run tag @s remove falling