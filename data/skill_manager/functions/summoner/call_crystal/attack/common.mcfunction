##############################
### クリスタル攻撃共通
##############################

execute if score @s SkillAttribute matches 61071 run scoreboard players set $BaseDamage Global 80000
execute if score @s SkillAttribute matches 61072 run scoreboard players set $BaseDamage Global 200000
execute if score @s SkillAttribute matches 61073 run scoreboard players set $BaseDamage Global 360000

tag @s remove Particle

###---演出---Start
playsound minecraft:entity.enderdragon_fireball.explode master @a ~ ~ ~ 3 0.5
###---演出---End
