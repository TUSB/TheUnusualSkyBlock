#> job:level_up/loop

scoreboard players operation @s Exp -= @s RequiredExp
scoreboard players add @s Level 1
function job:status/required_exp

execute if score @s Exp >= @s RequiredExp run function job:level_up/loop
