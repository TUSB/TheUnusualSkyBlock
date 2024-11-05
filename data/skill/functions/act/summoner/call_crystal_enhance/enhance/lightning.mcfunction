
### クリスタルLightning支援

function makeup:skill/act/summoner/call_crystal_enhance/lightning

function makeup:skill/act/summoner/call_crystal_enhance/common

execute if score @s Level matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:speed 15 4
execute if score @s Level matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:conduit_power 15 3
execute if score @s Level matches 202 run effect give @e[distance=..10,team=Friendly] minecraft:haste 15 4
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:speed 30 4
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:haste 30 9
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:conduit_power 30 3
