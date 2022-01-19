data modify entity @s ArmorItems[3].tag set from storage mob_data: Call
scoreboard players operation @s Level = _ Level
#向きを合わせる
tp @s ~ ~ ~ ~ ~
execute if data storage mob_data: Call.Speed run function skill:enemy/spawn/set_distance
