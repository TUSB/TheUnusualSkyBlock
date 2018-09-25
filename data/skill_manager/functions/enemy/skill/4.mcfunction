##############################
### 敵スキル４つ目
##############################

### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/blink/3

### 発生確率0%セット
scoreboard players reset $Threshold Global
