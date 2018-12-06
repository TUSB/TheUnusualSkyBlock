##############################
### 敵スキル６つ目
##############################

### Swim補正
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/6

### 発生確率0%セット
scoreboard players reset $Threshold Global
