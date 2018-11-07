##############################
### サモンＢ時間経過
##############################

effect give @a[distance=..10] minecraft:mining_fatigue 1 127
execute if entity @s[nbt={PortalCooldown:0}] unless entity @e[distance=..0.01,tag=SummonedBlock,nbt=!{PortalCooldown:0}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:white_wool
execute if entity @s[nbt={PortalCooldown:0}] unless entity @e[distance=..0.01,tag=SummonedBlock,nbt=!{PortalCooldown:0}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ender_chest
execute if entity @s[type=minecraft:falling_block,nbt={Time:600}] unless entity @e[type=minecraft:falling_block,distance=..0.01,tag=SummonedBlock,nbt=!{Time:600}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cobweb
kill @s[nbt={PortalCooldown:0}]

###---演出---Start
### スティッキーアイス
execute if entity @s[type=minecraft:falling_block] run particle minecraft:item minecraft:cobweb ~ ~0.5 ~ 0.5 0.5 0.5 0.03 2 force
###---演出---End
