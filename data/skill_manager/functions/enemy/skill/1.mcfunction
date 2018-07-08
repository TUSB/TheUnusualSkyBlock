##############################
### 敵スキル１つ目
##############################

### 深淵様
execute if entity @s[tag=Shinen] run function skill_manager:enemy/shinen/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
