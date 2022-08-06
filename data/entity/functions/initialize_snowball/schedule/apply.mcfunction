execute store success entity @s[tag=InitSnowball2] NoGravity byte 1 unless data entity @s NoGravity
tag @s[tag=InitSnowball2] remove InitSnowball
tag @s[tag=InitSnowball2] remove InitSnowball2
tag @s[tag=InitSnowball] add InitSnowball2

execute store result score _ _ run data get entity @s Motion[1] 100
scoreboard players add _ _ 3
execute store result entity @s[nbt={NoGravity:1b}] Motion[1] double 0.01 run scoreboard players get _ _

execute store result score _ _ run data get entity @s Pos[1] 100
scoreboard players add _ _ 2
execute store result entity @s[nbt=!{NoGravity:1b}] Pos[1] double 0.01 run scoreboard players get _ _
