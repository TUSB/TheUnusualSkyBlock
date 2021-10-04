execute if data storage mob_data: Target{Block:0b} anchored eyes unless block ^ ^ ^ air run scoreboard players set _ Calc 0
scoreboard players remove _ Calc 1
execute store success score 0-0-0-0-2 _ at @e[predicate=entity:all_mob,distance=..0.5,sort=nearest,limit=1] run function calc:geometry/tp_00002
execute if score _ Calc matches 1.. if score 0-0-0-0-2 _ matches 0 positioned ^ ^ ^0.5 run function enemy:ai/target/player

