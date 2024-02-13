# tellraw @a {"entity":"@e[tag=EnchantAEC,limit=1]","nbt":"Pos"}
execute as @e[tag=EnchantAEC] at @s if block ~ ~0.5 ~ end_portal_frame[eye=true] run setblock ~ ~0.5 ~ enchanting_table