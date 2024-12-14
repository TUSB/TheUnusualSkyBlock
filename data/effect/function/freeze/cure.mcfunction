#> effect:freeze/cure
### 凍結 解除

scoreboard players reset @s FreezeTimer
tag @s remove Freeze
tag @s remove Unmoved
tag @e[type=!player,tag=Freeze,distance=..5] add Garbage
function makeup:effects/freeze/cure
