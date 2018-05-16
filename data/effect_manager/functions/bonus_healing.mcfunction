##############################
### 討伐ボーナス回復
##############################

###ボーナス付与
effect give @a minecraft:regeneration 10 5

###カウントリセット
function calc_manager:update_random
scoreboard players operation $Healing Count = $Random Global
scoreboard players operation $Healing Count %= $100 Const
scoreboard players add $Healing Count 50
