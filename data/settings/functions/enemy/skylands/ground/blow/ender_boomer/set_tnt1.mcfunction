#Function
data modify entity @s Tags set from storage mob_data: Tags
execute unless entity @s[tag=NotBoom] run function settings:enemy/skylands/ground/blow/ender_boomer/set_tnt2
execute if entity @s[tag=NotBoom] run particle angry_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.01 10 force @a[distance=..32]
# ChangeTurn Loop:1を行う
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
data modify storage mob_data: AI.ChangeTurn set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
