##############################
### 敵スキル５つ目
##############################

### Swim補正
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/5
### スキル詰め合わせ
execute if entity @s[tag=SkillBox] run function skill_manager:enemy/call/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
