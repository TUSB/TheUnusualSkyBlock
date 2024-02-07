#アイテムからモブを召喚する
summon armor_stand ~ ~ ~ {Tags:[Spawn,ItemToSpawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Shoot,TriangularMan,Main,SpawnParticles],Level:19}]]}}]}
data modify entity @e[tag=ItemToSpawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities set from entity @s Item.tag.SpawnEntities
tag @e[tag=ItemToSpawn,distance=0] remove ItemToSpawn
kill @s
