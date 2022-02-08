
### クリスタルFire支援

function makeup:skill/act/summoner/call_crystal_enhance/fire

function makeup:skill/act/summoner/call_crystal_enhance/common

execute if score @s SkillAttribute matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:fire_resistance 60 127
execute if score @s SkillAttribute matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:strength 60 6
execute if score @s SkillAttribute matches 202 run effect give @e[distance=..10,team=Friendly] minecraft:health_boost 60 7
execute if score @s SkillAttribute matches 202 run effect give @e[distance=..10,team=Friendly] minecraft:instant_health 3 1
execute if score @s SkillAttribute matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:fire_resistance 180 127
execute if score @s SkillAttribute matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:strength 180 19
execute if score @s SkillAttribute matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:health_boost 180 13
execute if score @s SkillAttribute matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:instant_health 7 1
