#> ai:skill/blink/activate/decorate/tick
scoreboard players remove @s BlinkSubTimer 1

execute if score @s BlinkSubTimer matches 6 run tp @s ~0.2 ~ ~0.2
execute if score @s BlinkSubTimer matches 5 run tp @s ~ ~ ~-0.4
execute if score @s BlinkSubTimer matches 4 run tp @s ~-0.4 ~ ~
execute if score @s BlinkSubTimer matches 3 run tp @s ~ ~ ~0.4
execute if score @s BlinkSubTimer matches 2 run tp @s ~0.4 ~ ~
execute if score @s BlinkSubTimer matches 1 run tp @s ~-0.2 ~ ~-0.2
execute if score @s BlinkSubTimer matches 1..6 anchored eyes run function makeup:ai/skill/blink/activate/1

execute if score @s BlinkSubTimer matches 1 run function ai:skill/blink/activate/decorate/finalize

