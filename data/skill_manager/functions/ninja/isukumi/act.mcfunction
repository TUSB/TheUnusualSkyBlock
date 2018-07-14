##############################
### 居縮発動
##############################

###---演出---Start
playsound minecraft:item.trident.throw master @a[distance=..16] ~ ~ ~ 2 1.4
playsound minecraft:item.trident.throw master @a[distance=..16] ~ ~ ~ 2 1.8
###---演出---End

execute positioned ~ ~1.51 ~ run kill @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1]

execute if score @s ModeSkill matches 21051 run scoreboard players set $MinValue Global 5
execute if score @s ModeSkill matches 21052 run scoreboard players set $MinValue Global 10
execute if score @s ModeSkill matches 21053 run scoreboard players set $MinValue Global 20

execute positioned ^ ^ ^-1 run function calc_manager:get/angle2
execute as @e[distance=..48,tag=Mob,tag=!NoAI] run function skill_manager:ninja/isukumi/calc
