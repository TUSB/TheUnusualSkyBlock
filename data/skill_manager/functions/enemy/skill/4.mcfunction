##############################
### 敵スキル４つ目
##############################

### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/blink/3
### Swim補正
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/4
### スキル詰め合わせ
execute if entity @s[tag=SkillBox] run function skill_manager:enemy/heal/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
