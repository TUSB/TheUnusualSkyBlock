execute unless data storage mob_data: Target{IgnoreBlocks:1b} anchored eyes unless block ^ ^ ^ air run scoreboard players set _ Calc 0
scoreboard players remove _ Calc 1
execute store success score @s _ at @e[tag=Mob,tag=!NonTarget,distance=..0.5,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute if score _ Calc matches 1.. if score @s _ matches 0 positioned ^ ^ ^0.5 run function enemy:ai/call/settings/target/enemy
