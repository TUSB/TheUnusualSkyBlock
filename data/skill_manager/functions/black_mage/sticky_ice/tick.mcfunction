##############################
### スティッキーアイス処理
##############################

execute unless block ~ ~ ~ minecraft:cobweb run kill @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:string"},Age:0s}]
execute unless block ~ ~ ~ minecraft:cobweb run kill @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:string"},Age:1s}]
execute unless block ~ ~ ~ minecraft:cobweb run kill @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:cobweb"},Age:0s}]
execute unless block ~ ~ ~ minecraft:cobweb run kill @s

execute if entity @s[nbt={Time:600}] unless entity @e[distance=..0.01,nbt=!{Time:600}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cobweb
kill @s[nbt={PortalCooldown:0}]

###---演出---Start
execute if entity @s[type=minecraft:falling_block] run particle minecraft:item minecraft:cobweb ~ ~0.5 ~ 0.5 0.5 0.5 0.03 2 force
###---演出---End
