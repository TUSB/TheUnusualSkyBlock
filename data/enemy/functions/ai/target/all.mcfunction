execute unless data storage mob_data: Target{IgnoreBlocks:1b} anchored eyes unless block ^ ^ ^ air run scoreboard players set _ Calc 0
scoreboard players remove _ Calc 1
execute store success score @s _ at @e[predicate=entity:all_mob,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute if score _ Calc matches 1.. if score @s _ matches 0 positioned ^ ^ ^0.5 run function enemy:ai/target/all

