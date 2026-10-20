
### クリスタルLight支援

function makeup:skill/act/summoner/call_crystal_enhance/light

function makeup:skill/act/summoner/call_crystal_enhance/common

execute if score @s Level matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:regeneration 120 1
execute if score @s Level matches 202 run effect give @e[distance=..10,team=Friendly] minecraft:glowing 120 127
execute if score @s Level matches 202..203 as @e[distance=..10,team=Friendly] run function skill:act/white_mage/clear/cure/level3
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:regeneration 240 2
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:glowing 240 127
