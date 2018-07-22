##############################
### つんつん
##############################

execute if score @s ModeSkill matches 61061 run scoreboard players set $LifeTime Global 600
execute if score @s ModeSkill matches 61062 run scoreboard players set $LifeTime Global 1200
execute as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run function skill_manager:summoner/tsuntsun/apply

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
