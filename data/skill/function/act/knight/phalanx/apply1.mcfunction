
### ファランクス適用

execute if score _ Level matches 1 run effect give @s minecraft:resistance 20 0
execute if score _ Level matches 2 run effect give @s minecraft:resistance 20 1
execute if score _ Level matches 3 run effect give @s minecraft:resistance 20 2
execute if score _ Level matches 4 run effect give @s minecraft:resistance 20 3
execute if score _ Level matches 4 run effect give @s minecraft:health_boost 20 19

function makeup:skill/act/knight/phalanx/apply
