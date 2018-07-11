##############################
### 状態異常回復レベル３
##############################

### 死の宣告解除
function calc_manager:update_random
scoreboard players operation $Random Global %= $10 Const
execute if score $Random Global matches 0 if score @s DoomCount matches 0.. run function effect_manager:doom/escape
### やけど解除
execute if score @s BurnCount matches 0.. run function effect_manager:burn/cure
### 病気解除
execute if score @s VirusCount matches 0.. run function effect_manager:virus/cure
### 混乱解除
execute if score @s ConfuseCount matches 0.. run function effect_manager:confuse/cure
### 呪詛解除
execute if entity @s[tag=Curse] run function effect_manager:curse/cure
### 恐怖解除
execute if score @s TerrorLevel matches 0.. run function effect_manager:terror/cure

function skill_manager:white_mage/clear/cure/level2
