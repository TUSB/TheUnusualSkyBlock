#Function
execute unless entity @e[distance=..64,type=item_display,tag=SonicAAI] run tag @s add Garbage
data modify entity @s Tags set from storage mob_data: Tags
execute if entity @s[tag=FirstKill]
