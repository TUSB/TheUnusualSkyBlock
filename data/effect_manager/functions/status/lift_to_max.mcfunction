##############################
### 最大ステータスにする
##############################

function effect_manager:status/modify_max
scoreboard players operation @s MP = @s MPMax
effect give @s minecraft:instant_health 1 10
