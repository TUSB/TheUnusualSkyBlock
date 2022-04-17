data modify entity @s ArmorItems[3].tag set from storage mob_data: Call
data modify entity @s ArmorItems[3].tag.CustomModelData set value 1
scoreboard players operation @s Level = _ Level
#向きを合わせる
tp @s ~ ~ ~ ~ ~
