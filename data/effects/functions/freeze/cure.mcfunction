
### 凍結 解除

scoreboard players reset @s FreezeTimer
tag @s remove Freeze
tag @e[tag=Freeze,distance=..5] add Garbage
function makeup:effects/freeze/cure
