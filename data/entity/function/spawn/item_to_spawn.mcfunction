#> entity:spawn/item_to_spawn
#アイテムからモブを召喚する
summon armor_stand ~ ~ ~ {Tags:[Spawn,ItemToSpawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,Main,SpawnParticles],Level:19}]]}}}]}
data modify entity @e[tag=ItemToSpawn,distance=0,limit=1] ArmorItems[3].components."minecraft:custom_data".SpawnEntities set from entity @s Item.components."minecraft:custom_data".SpawnEntities
tag @e[tag=ItemToSpawn,distance=0] remove ItemToSpawn
kill @s
