
### クリスタルIce支援

function makeup:skill/act/summoner/call_crystal_enhance/ice

function makeup:skill/act/summoner/call_crystal_enhance/common

execute if score _ Level matches 201..202 run effect give @e[distance=..10,team=Friendly] resistance 60 2
execute if score _ Level matches 201..202 run effect give @e[distance=..10,team=Friendly] dolphins_grace 60 1
execute if score _ Level matches 202 run effect give @e[distance=..10,team=Friendly] absorption 60 11
execute if score _ Level matches 203 run effect give @e[distance=..10,team=Friendly] resistance 180 2
execute if score _ Level matches 203 run effect give @e[distance=..10,team=Friendly] absorption 180 17
execute if score _ Level matches 203 run effect give @e[distance=..10,team=Friendly] dolphins_grace 180 4
