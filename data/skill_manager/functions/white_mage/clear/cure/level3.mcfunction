##############################
### 状態異常回復レベル３
##############################

### 炎消し
setblock ~ ~1 ~ minecraft:water[level=7] keep
### 死の宣告解除
function calc_manager:update_random
scoreboard players operation $Random Global %= $10 Const
execute if score $Random Global matches 0 run effect give @s minecraft:invisibility 1 71

function skill_manager:white_mage/clear/cure/level2
