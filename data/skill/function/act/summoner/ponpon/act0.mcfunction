##############################
### ぽんぽん
##############################

execute if score _ Level matches 1 run effect give @e[distance=..15,team=Friendly,type=!minecraft:player] minecraft:instant_health 1 3
execute if score _ Level matches 2 run effect give @e[distance=..15,team=Friendly,type=!minecraft:player] minecraft:instant_health 1 4
execute if score _ Level matches 3 run effect give @e[distance=..15,team=Friendly,type=!minecraft:player] minecraft:instant_health 1 5

#演出
function makeup:skill/act/summoner/ponpon/act0

item replace entity @e[distance=..15,team=Friendly,type=!minecraft:player] armor.feet with minecraft:leather_boots[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:follow_range",id:"minecraft:00000018-0000-0000-0000-000b0000000b",amount:-1d,operation:"add_multiplied_total",slot:"feet"}]}]
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add Assault
tag @e[distance=..15,team=Friendly,type=!minecraft:player] add DelayedTask

execute positioned as @e[distance=..15,tag=Enemy,sort=nearest,limit=1] run tp @e[distance=..15,team=Friendly,type=!minecraft:player] ~ ~ ~
