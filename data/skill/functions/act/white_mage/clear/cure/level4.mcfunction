##############################
### 状態異常回復レベル４
##############################

### 死の宣告解除
execute if score @s DoomCount matches 1.. run function effects:doom/escape
### トント解除
execute if score @s TntCount matches 0.. run function effect:tnt/cure

function skill:act/white_mage/clear/cure/level3
