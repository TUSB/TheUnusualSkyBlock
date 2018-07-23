##############################
### ぽんぽん
##############################

execute if score @s ModeSkill matches 61041 as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run effect give @s minecraft:instant_health 1 3
execute if score @s ModeSkill matches 61042 as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run effect give @s minecraft:instant_health 1 4
execute if score @s ModeSkill matches 61043 as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s run effect give @s minecraft:instant_health 1 5

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
execute as @e[distance=..15,team=Friendly,type=!minecraft:player] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:heart ~ ~ ~ 0.1 0.1 0.1 0 10 force
###---演出---End

replaceitem entity @e[distance=..15,team=Friendly,type=!minecraft:player] armor.feet minecraft:leather_boots{AttributeModifiers:[{AttributeName:"generic.followRange",Amount:-1d,Operation:2,UUIDMost:1l,UUIDLeast:1l,Slot:feet}]}
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add Assault
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add DelayedTask

execute as @e[distance=..15,team=Friendly,type=!minecraft:player] run tp @s @e[distance=..15,tag=Mob,sort=nearest,limit=1]
