##############################
### 敵スキル３つ目
##############################

### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/blink/2
### Swim補正
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/3
### スキル詰め合わせ
execute if entity @s[tag=SkillBox] run function skill_manager:enemy/selfheal/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
