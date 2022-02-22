
### クリスタルLight支援

function makeup:skill/act/summoner/call_crystal_enhance/light

function makeup:skill/act/summoner/call_crystal_enhance/common

execute if score @s Level matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:regeneration 60 2
execute if score @s Level matches 202 run effect give @e[distance=..10,team=Friendly] minecraft:glowing 60 127
execute if score @s Level matches 202..203 as @e[distance=..10,team=Friendly] run function skill:act/white_mage/clear/cure/level3
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:regeneration 180 3
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:glowing 180 127
