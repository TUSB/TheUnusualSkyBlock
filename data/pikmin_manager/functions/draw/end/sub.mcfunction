##############################
### check/paraboraサブルーチン
##############################

execute if score $ParaboraFlag Local matches 1 at 0-0-0-0-31 facing entity 0-0-0-0-30 feet positioned as 0-0-0-0-32 positioned ^ ^ ^2048 facing entity 0-0-0-0-31 feet positioned ^ ^ ^2048 positioned ~ ~0.3 ~ in the_end run function pikmin_manager:draw/sub2

# particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute as 0-0-0-0-31 at @s run tp @s ^ ^ ^0.5 ~ ~
execute as 0-0-0-0-32 at @s run tp @s ^ ^ ^0.5 ~ ~
