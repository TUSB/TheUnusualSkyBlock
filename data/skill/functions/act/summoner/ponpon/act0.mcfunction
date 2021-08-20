##############################
### ぽんぽん
##############################

execute if score _ Level matches 1 run effect give @e[distance=..15,team=Friendly,type=!minecraft:player] minecraft:instant_health 1 3
execute if score _ Level matches 2 run effect give @e[distance=..15,team=Friendly,type=!minecraft:player] minecraft:instant_health 1 4
execute if score _ Level matches 3 run effect give @e[distance=..15,team=Friendly,type=!minecraft:player] minecraft:instant_health 1 5

#演出
function makeup:skill/act/summoner/ponpon/act0

#TODO: replaceitem -> item
item replace entity @e[distance=..15,team=Friendly,type=!minecraft:player] armor.feet with minecraft:leather_boots{AttributeModifiers:[{AttributeName:"generic.follow_range",Amount:-1d,Operation:2,UUID:[I;24,0,11,11],Slot:feet}]}
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add Assault
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add DelayedTask

execute positioned as @e[distance=..15,tag=Mob,sort=nearest,limit=1] run tp @e[distance=..15,team=Friendly,type=!minecraft:player] ~ ~ ~
