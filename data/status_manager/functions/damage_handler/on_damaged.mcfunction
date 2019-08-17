##############################
### 全般ダメージ処理
##############################

###被ダメ時スキル
execute if entity @s[tag=SkillOnHurt,tag=!ForgotSkill] at @s run function skill_manager:enemy/skill/on_hurt

###体力更新
scoreboard players operation @s HP -= @s Damage
scoreboard players reset @s Damage
execute if score @s HP matches ..0 run function entity_manager:mob_death
