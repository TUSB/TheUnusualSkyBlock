#Function
## エセ慣性つきで減速移動
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute if score _ _ matches 6 run scoreboard players set # Calc 8
execute if score _ _ matches 5 run scoreboard players set # Calc 6
execute if score _ _ matches 4 run scoreboard players set # Calc 4
execute if score _ _ matches 3 run scoreboard players set # Calc 3
execute if score _ _ matches 2 run scoreboard players set # Calc 2
execute if score _ _ matches 1 run scoreboard players set # Calc 1
function settings:enemy/skylands/boss/shoot/zedra/ai_move1_re
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick
execute if score _ _ matches 1 run function settings:enemy/skylands/boss/shoot/zedra/ai_move1_finish
