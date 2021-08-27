##############################
### 地裂斬適用
##############################

###---演出---Start
function makeup:skill/act/knight/crack_slash/tick
###---演出---End
scoreboard players operation @e[distance=..2.5,tag=Mob] Damage > @s SkillAttribute
execute as @e[distance=..2.5,tag=Mob] positioned ~ ~ ~ run function enemy_manager:knockback
