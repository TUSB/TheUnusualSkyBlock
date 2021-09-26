execute if data storage mob_data: Target{Block:0b} anchored eyes unless block ^ ^ ^ air run scoreboard players set _ Calc 0
scoreboard players remove _ Calc 1
execute store success score _ _ run tag @a[gamemode=!creative,gamemode=!spectator,distance=..0.5,sort=nearest,limit=1] add Target
execute if score _ Calc matches 1.. if score _ _ matches 0 positioned ^ ^ ^0.5 run function enemy:ai/target/player
