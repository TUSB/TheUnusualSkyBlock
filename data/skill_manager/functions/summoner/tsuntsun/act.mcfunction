##############################
### つんつん
##############################

execute if score @s ModeSkill matches 61061 run scoreboard players set $LifeTime Global 1800
execute if score @s ModeSkill matches 61062 run scoreboard players set $LifeTime Global 3600
execute as @e[distance=..15,team=Friendly,type=!minecraft:player,tag=!Sicced] at @s run function skill_manager:summoner/tsuntsun/apply

###---演出---Start
playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.cat.hiss master @a[distance=..16] ~ ~ ~ 0.6 1
playsound minecraft:entity.wolf.growl master @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:entity.phantom.swoop master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.phantom.swoop master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.phantom.swoop master @a[distance=..16] ~ ~ ~ 1 2
###---演出---End
