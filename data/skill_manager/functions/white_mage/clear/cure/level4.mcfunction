##############################
### 状態異常回復レベル４
##############################

### 死の宣告解除
execute if score @s DoomCount matches 0.. run function effect_manager:doom/escape
### トント解除
execute if score @s TntCount matches 0.. run function effect_manager:tnt/cure

function skill_manager:white_mage/clear/cure/level3
