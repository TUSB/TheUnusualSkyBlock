execute if score _ _ matches 1.. run scoreboard players remove _ _ 1
execute if score _ _ matches 0 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score _ _ matches 1.. positioned ^ ^ ^-1 run function entity:enemy/ai/move/rotate_loop
