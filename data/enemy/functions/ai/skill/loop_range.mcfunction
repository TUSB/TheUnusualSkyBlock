#Max-Max+Rangeの乱数をCurrentに代入
execute store result score _ Calc run function calc:random
execute store result score _ _ run data get storage mob_data: AI.Turn[0].Skill[0].Loop.Range
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _

execute store result score _ _ run data get storage mob_data: AI.Turn[0].Skill[0].Loop.Max
execute store result storage mob_data: AI.Turn[0].Skill[0].Loop.Current int 1 run scoreboard players operation _ Calc += _ _
say ya