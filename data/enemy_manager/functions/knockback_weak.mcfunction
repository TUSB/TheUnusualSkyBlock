##############################
### 基点中心ほぼ水平ノックバック
##############################

execute facing entity @s feet rotated ~ 0 run function calc_manager:get/direction1
scoreboard players set $M Global -100
function calc_manager:multiply/pos1
scoreboard players set $Y1 Global 300
function calc_manager:set/motion1
