summon item ~ ~ ~ {Item:{id:"stick",Count:1b,tag:{CustomModelData:1}},Motion:[0d,0.2d,0d]}
data modify entity @e[type=item,distance=0,limit=1] Item set from entity @s Item
item replace entity @s container.0 with air