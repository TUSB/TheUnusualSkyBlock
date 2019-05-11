##############################
### ターゲット解除
##############################

### タグ剥奪
tag @s remove HasTarget

### 移動速度戻す
execute store result entity @s Attributes[{Name:"generic.movementSpeed"}].Base double 0.0001 run scoreboard players get @s MovementSpeed
