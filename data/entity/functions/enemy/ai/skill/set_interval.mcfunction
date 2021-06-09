execute store result score _ Ret run function calc:random
execute store result score _ Random run data get storage mob_data: AI.Turn[0].Skill[0].highInterval
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Skill[0].lowInterval
scoreboard players operation _ Random -= _ Calc
scoreboard players add _ Random 1
scoreboard players operation _ Ret %= _ Random
scoreboard players operation _ Ret += _ Calc
