tag @s[nbt={OnGround:0b}] add falling
execute if data entity @s[tag=falling] {OnGround:1b} run data modify storage mob_data: Call set from storage mob_data: AI.Turn[0].Skills.Falling
execute if data entity @s[tag=falling] {OnGround:1b} run function entity:enemy/call/call
execute if data entity @s[tag=falling] {OnGround:1b} run tag @s remove falling
