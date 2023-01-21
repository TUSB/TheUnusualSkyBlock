#Function
## アマスタが暫くいなければ召喚
scoreboard players operation @s ParentID = _ Calc
execute at @s run data modify entity @e[distance=..0.5,tag=ZedraHead,sort=nearest,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2002}}]
execute at @s run data modify entity @e[distance=..0.5,tag=ZedraBody,sort=nearest,limit=1] HandItems set value [{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2013}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2012}}]
execute at @s run data modify entity @e[distance=..0.5,tag=ZedraBody,sort=nearest,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2006}}]
tag @s add GoSign
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn
