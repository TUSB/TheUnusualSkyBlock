summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{id:"minecraft:stick",Count:1b},{},{},{}]}
data modify entity @e[tag=Spawn,limit=1,distance=0] ArmorItems[0].tag.SpawnEntities set from storage mob_data: Call.SpawnEntities
#向きを合わせる
tp @e[tag=Spawn,limit=1,distance=0] @s
execute if data storage mob_data: Call.Speed as @e[tag=Spawn,limit=1,distance=0] run function skill:enemy/spawn/set_distance
