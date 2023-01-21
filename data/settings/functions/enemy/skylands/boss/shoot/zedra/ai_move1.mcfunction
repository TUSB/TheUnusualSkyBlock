#Function
## 移動先に向かって移動
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute if score _ _ matches 0 positioned ^ ^0.25 ^ run function settings:enemy/skylands/boss/shoot/zedra/ai_move1_particle
execute if score _ _ matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick set value 5
scoreboard players set # Calc 10
function settings:enemy/skylands/boss/shoot/zedra/ai_move1_re
function calc:geometry/tp_00000
data modify entity 0-0-0-0-0 Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos
execute at 0-0-0-0-0 if entity @s[distance=..2.5] run data modify storage mob_data: Tags append value MoveInertia
execute at 0-0-0-0-0 if entity @s[distance=..2.5] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick set value 6
execute as 0-0-0-0-0 run function calc:geometry/return_marker
