
execute store result score _ Random run function calc:radom
execute store result score _ Ret run data get storage mob_data: AI.Turn[0].Skill[0].highInterval
execute store result score _ Calc run data get storage mob_data: AI.Turn[0].Skill[0].lowInterval
scoreboard players operation _ Ret -= _ Calc
scoreboard players add _ Ret 1
scoreboard players operation _ Random %= _ Ret
scoreboard players operation _ Random += _ Calc