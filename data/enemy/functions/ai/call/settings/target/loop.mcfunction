execute unless data storage mob_data: Target{IgnoreBlocks:1b} anchored eyes unless block ^ ^ ^ #main:no_collision run scoreboard players set _ Calc 0
scoreboard players remove _ Calc 1
execute if entity @s[distance=..0.5] run function enemy:ai/call/settings/target/find
execute if score _ Calc matches 1.. if score @s _ matches 0 positioned ^ ^ ^0.5 run function enemy:ai/call/settings/target/loop