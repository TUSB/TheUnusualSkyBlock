##############################
### 敵スキルカウント
##############################

scoreboard players remove @s EnemySkillSpan 1
execute if score @s EnemySkillSpan matches ..0 run function skill_manager:enemy/common
