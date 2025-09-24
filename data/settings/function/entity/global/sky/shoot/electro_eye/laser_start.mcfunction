#Function
execute store result score _ Random run function calc:random
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Rotation 
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Rotation set value 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Rotation run tp @s ~ ~ ~ ~-45 ~
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Rotation run tp @s ~ ~ ~ ~45 ~
