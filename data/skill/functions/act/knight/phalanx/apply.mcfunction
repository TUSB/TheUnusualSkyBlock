
### ファランクス適用

execute if score _ Level matches 1 run effect give @s minecraft:resistance 180 1
execute if score _ Level matches 2 run effect give @s minecraft:resistance 180 2
execute if score _ Level matches 3..4 run effect give @s minecraft:resistance 180 3
execute if score _ Level matches 4 run effect give @s minecraft:absorption 180 19

function makeup:skill/act/knight/phalanx/apply
