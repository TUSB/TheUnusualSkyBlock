

execute store result entity 0-0-1-0-1 Pos[1] double 0.01 run scoreboard players get @s ID

execute at 0-0-1-0-1 run data modify entity @e[distance=0,tag=Linker,limit=1] Item.tag.Entity set from entity @s
