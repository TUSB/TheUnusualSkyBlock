summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,HandItems:[{id:"minecraft:stick",Count:1b},{}]}
data modify entity @e[tag=Spawn,limit=1,distance=0] HandItems[0].tag.SpawnEntities set from storage mob_data: Call.SpawnEntities
