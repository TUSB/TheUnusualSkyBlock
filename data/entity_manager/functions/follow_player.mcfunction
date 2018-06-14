##############################
### プレイヤーふよふよ狙い
##############################

execute at @p[nbt=!{Health:0.0f}] positioned ~ ~1.52 ~ rotated ~ 0 run function calc_manager:get/direction1

scoreboard players set $M Global 40
function calc_manager:multiply/pos1

execute if score $Y1 Global matches 1.. run scoreboard players set $Y1 Global 1
execute if score $Y1 Global matches ..-1 run scoreboard players set $Y1 Global -1

function calc_manager:update_random
scoreboard players operation $Y1 Global *= $Random Global 
scoreboard players operation $Y1 Global /= $100 Const

function calc_manager:set/motion1
