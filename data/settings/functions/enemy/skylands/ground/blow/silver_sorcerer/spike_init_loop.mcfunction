#Function
execute unless block ~ ~-1 ~ #block:no_collision run scoreboard players add # Calc 1
scoreboard players add # _ 1
execute if score # Calc matches 1 align y run tp @s ~ ~-0.375 ~ ~ ~
execute if score # Calc matches 0 if score # _ matches ..4 positioned ~ ~-1 ~ run function settings:enemy/skylands/ground/blow/silver_sorcerer/spike_init_loop
