##############################
### サモンＢ時間経過
##############################

effect give @a[distance=..10] minecraft:mining_fatigue 1 127
execute if entity @s[nbt={PortalCooldown:0}] unless entity @e[distance=..0.01,tag=SummonedBlock,nbt=!{PortalCooldown:0}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:white_wool
execute if entity @s[nbt={PortalCooldown:0}] unless entity @e[distance=..0.01,tag=SummonedBlock,nbt=!{PortalCooldown:0}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ender_chest
kill @s[nbt={PortalCooldown:0}]
