execute unless data storage mob_data: Target{IgnoreBlocks:1b} anchored eyes unless block ^ ^ ^ air run scoreboard players set _ Calc 0
scoreboard players remove _ Calc 1
execute store success score 0-0-0-0-2 _ at @e[distance=..0.5,limit=1,sort=nearest] run function calc:geometry/tp_00002
execute if score _ Calc matches 1.. if score 0-0-0-0-2 _ matches 0 positioned ^ ^ ^0.5 run function enemy:ai/target/player
