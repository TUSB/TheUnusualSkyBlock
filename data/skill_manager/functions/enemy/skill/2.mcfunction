##############################
### 敵スキル２つ目
##############################

### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/blink/1
### Swim補正
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/2
### リレイズ
execute if entity @s[tag=Reraise] run function skill_manager:enemy/reraise/1
### スキル詰め合わせ
execute if entity @s[tag=SkillBox] run function skill_manager:enemy/blink/1
### 魔弾の射手
execute if entity @s[tag=Shooter,tag=!DontMove] run function skill_manager:enemy/shooter/skill/1/start
### 発生確率0%セット
scoreboard players reset $Threshold Global
