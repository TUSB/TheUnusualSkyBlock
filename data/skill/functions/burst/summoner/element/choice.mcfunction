#付与する弱点をランダムに選択
execute store result score _ _ run function calc:random
scoreboard players set _ Calc 11
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0..1 run tag @s add BurstWeek.Fire
execute if score _ _ matches 2..3 run tag @s add BurstWeek.Ice
execute if score _ _ matches 4..5 run tag @s add BurstWeek.Lightning
execute if score _ _ matches 6..7 run tag @s add BurstWeek.Light
execute if score _ _ matches 8..9 run tag @s add BurstWeek.Dark

execute if score _ _ matches 10 run tag @s add BurstWeek.Fire
execute if score _ _ matches 10 run tag @s add BurstWeek.Ice
execute if score _ _ matches 10 run tag @s add BurstWeek.Lightning
execute if score _ _ matches 10 run tag @s add BurstWeek.Light
execute if score _ _ matches 10 run tag @s add BurstWeek.Dark
execute if score _ _ matches 10 run tag @s add BurstWeek.All
