##############################
### サモンＢ：オブシディアン発動
##############################

effect give @a[distance=..10] minecraft:mining_fatigue 1 127
execute if entity @s[nbt={PortalCooldown:0}] unless entity @e[distance=..0.01,tag=Obsidian,nbt=!{PortalCooldown:0}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:obsidian
kill @s[nbt={PortalCooldown:0}]

###---演出---Start
###---演出---End
