#Function
# 前進
    execute at @s run tp @s ^ ^ ^1.5 ~ ~
    execute at @s unless block ^ ^ ^0.25 #main:no_collision run data modify storage mob_data: Tags append value "Garbage"
    execute at @s unless block ^ ^ ^0.5 #main:no_collision run data modify storage mob_data: Tags append value "Garbage"
    execute at @s unless block ^ ^ ^0.75 #main:no_collision run data modify storage mob_data: Tags append value "Garbage"
    execute at @s unless block ^ ^ ^1 #main:no_collision run data modify storage mob_data: Tags append value "Garbage"
    execute at @s unless block ^ ^ ^1.25 #main:no_collision run data modify storage mob_data: Tags append value "Garbage"
    execute at @s unless block ^ ^ ^1.5 #main:no_collision run data modify storage mob_data: Tags append value "Garbage"
    execute at @s unless block ^ ^ ^0.25 #main:no_collision on passengers run tag @s add Garbage
    execute at @s unless block ^ ^ ^0.5 #main:no_collision on passengers run tag @s add Garbage
    execute at @s unless block ^ ^ ^0.75 #main:no_collision on passengers run tag @s add Garbage
    execute at @s unless block ^ ^ ^1 #main:no_collision on passengers run tag @s add Garbage
    execute at @s unless block ^ ^ ^1.25 #main:no_collision on passengers run tag @s add Garbage
    execute at @s unless block ^ ^ ^1.5 #main:no_collision on passengers run tag @s add Garbage
