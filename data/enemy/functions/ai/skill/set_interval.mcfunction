execute store result score _ Ret run function calc:random
execute store result score _ Random run data get storage mob_data: AI.Turn[0].Skill[0].Interval.Max
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Skill[0].Interval.Min
scoreboard players operation _ Random -= _ Calc
scoreboard players add _ Random 1
scoreboard players operation _ Ret %= _ Random
return run scoreboard players operation _ Ret += _ Calc
