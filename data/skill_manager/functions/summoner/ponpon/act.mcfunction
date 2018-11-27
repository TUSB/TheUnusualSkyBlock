##############################
### ぽんぽん
##############################

execute if score @s ModeSkill matches 61041 as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run effect give @s minecraft:instant_health 1 3
execute if score @s ModeSkill matches 61042 as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run effect give @s minecraft:instant_health 1 4
execute if score @s ModeSkill matches 61043 as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run effect give @s minecraft:instant_health 1 5

###---演出---Start
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.chicken.egg master @a[distance=..16] ~ ~ ~ 1 1
execute as @e[distance=..15,team=Friendly,type=!minecraft:player] anchored eyes at @s run particle minecraft:heart ^ ^ ^ 0.1 0.1 0.1 0 10 force @a[tag=ShowParticles]
execute as @e[distance=..15,team=Friendly,type=!minecraft:player] anchored eyes at @s run particle minecraft:happy_villager ^ ^-1 ^ 0.5 0.5 0.5 0 20 force @a[tag=ShowParticles]
###---演出---End

replaceitem entity @e[distance=..15,team=Friendly,type=!minecraft:player] armor.feet minecraft:leather_boots{AttributeModifiers:[{AttributeName:"generic.followRange",Amount:-1d,Operation:2,UUIDMost:1l,UUIDLeast:1l,Slot:feet}]}
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add Assault
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add DelayedTask

execute as @e[distance=..15,team=Friendly,type=!minecraft:player] run tp @s @e[distance=..15,tag=Mob,sort=nearest,limit=1]
