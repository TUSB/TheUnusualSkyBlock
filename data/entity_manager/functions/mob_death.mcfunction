##############################
### 敵死亡時処理
##############################

### Garbage付与
tag @s add Garbage
### 敵討伐時処理
function calc_manager:get/pos1
execute if score $Y1 Global matches -10000..275000 unless entity @s[tag=Animal] run function entity_manager:defeat_enemy
