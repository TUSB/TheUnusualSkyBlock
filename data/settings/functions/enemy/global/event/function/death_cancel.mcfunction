#Function
data modify entity @s Tags set from storage mob_data: Tags
tag @s remove Garbage
#data remove storage mob_data: Tags
data modify storage mob_data: Tags set from entity @s Tags
data remove entity @s Tags
scoreboard players set @s HP 999
#tellraw @a {"storage":"mob_data:","nbt":"Tags"}
