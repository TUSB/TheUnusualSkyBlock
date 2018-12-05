##############################
### 敵スキル２つ目
##############################

### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/blink/1
### Swim補正
#execute if entity @s[tag=Interpolator] run function skill_manager:enemy/Interpolator/2

### 発生確率0%セット
scoreboard players reset $Threshold Global
