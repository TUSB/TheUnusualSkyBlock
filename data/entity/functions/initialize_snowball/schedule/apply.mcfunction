execute store success entity @s[tag=InitDamageSnowball2] NoGravity byte 1 unless data entity @s NoGravity
tag @s[tag=InitDamageSnowball2] remove InitDamageSnowball
tag @s[tag=InitDamageSnowball2] remove InitDamageSnowball2
tag @s[tag=InitDamageSnowball] add InitDamageSnowball2

execute store result score _ _ run data get entity @s Motion[1] 1000
scoreboard players add _ _ 29
execute store result entity @s[nbt={NoGravity:1b}] Motion[1] double 0.001 run scoreboard players get _ _
execute at @s run tp @s[nbt=!{NoGravity:1b}] ~ ~0.1 ~
