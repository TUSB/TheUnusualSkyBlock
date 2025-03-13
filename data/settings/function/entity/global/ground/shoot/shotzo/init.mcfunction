#Function
execute at @s if block ~ ~ ~ #block:no_collision unless block ~ ~-0.01 ~ #block:no_collision align y positioned ~ ~-0.01 ~ run tp @s ~ ~ ~ ~ ~
execute at @s unless block ~ ~ ~ #block:no_collision align y positioned ~ ~0.5 ~ run tp @s ~ ~ ~ ~ ~
