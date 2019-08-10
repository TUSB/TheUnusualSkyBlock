##############################
### 敵スキルチェック
##############################

scoreboard players remove @s SkillTimer 1
execute if score @s SkillTimer matches ..0 run function skill_manager:enemy/main
