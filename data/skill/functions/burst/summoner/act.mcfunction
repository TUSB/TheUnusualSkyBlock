
execute store result score _ _ run function calc:random
scoreboard players set _ Calc 5
scoreboard players operation _ _ %= _ Calc

#付与する弱点をランダムに選択
execute if score _ _ matches 0 run tag @s add BurstWeek.Fire
execute if score _ _ matches 1 run tag @s add BurstWeek.Ice
execute if score _ _ matches 2 run tag @s add BurstWeek.Lightning
execute if score _ _ matches 3 run tag @s add BurstWeek.Light
execute if score _ _ matches 4 run tag @s add BurstWeek.Dark
