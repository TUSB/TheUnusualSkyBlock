
### クリスタルDark支援

function makeup:skill/act/summoner/call_crystal_enhance/dark

function makeup:skill/act/summoner/call_crystal_enhance/common

execute if score @s Level matches 201 run scoreboard players set _ ManaRefresh 301
execute if score @s Level matches 202 run scoreboard players set _ ManaRefresh 601
execute if score @s Level matches 203 run scoreboard players set _ ManaRefresh 901
execute if score @s Level matches 201..209 run scoreboard players operation @a[distance=..10] ManaRefresh > _ ManaRefresh

execute if score @s Level matches 202..203 run effect give @a[distance=..10] minecraft:saturation 5 1
execute if score @s Level matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:night_vision 60 127
execute if score @s Level matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:night_vision 180 127
