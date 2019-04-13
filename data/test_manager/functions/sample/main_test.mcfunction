

execute store result entity 0-0-1-0-1 Pos[1] double 0.01 run scoreboard players get @s TargetID

scoreboard players set $Find Global 0
execute at 0-0-1-0-1 store success score $Find Global run data modify entity 0-0-0-0-0 Pos set from entity @e[distance=0,tag=Linker,limit=1] Item.tag.Entity.Pos


execute if score $Find Global matches 0 run data modify entity 0-0-0-0-0 Pos set from entity @s Motion
execute if score $Find Global matches 0 positioned 0.0 0.0 0.0 facing entity 0-0-0-0-0 feet positioned ^ ^ ^0.3 run tp 0-0-0-0-0 ~ ~ ~ ~ ~

execute if score $Find Global matches 1 facing entity 0-0-0-0-0 feet run tp @s ~ ~ ~ ~ ~
execute if score $Find Global matches 1 in overworld facing entity 0-0-0-0-0 feet positioned ^ ^ ^1 facing entity 0-0-0-0-0 feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.3 run tp 0-0-0-0-0 ~ ~ ~ ~ ~

data modify entity @s Motion set from entity 0-0-0-0-0 Pos



# execute at 0-0-1-0-1 store success score $Find Global run data modify entity @s Pos set from entity @e[distance=0,tag=Linker,limit=1] Item.tag.Entity.Pos
# execute facing entity @s feet positioned ^ ^ ^0.5 run tp @s ~ ~ ~ ~ ~
