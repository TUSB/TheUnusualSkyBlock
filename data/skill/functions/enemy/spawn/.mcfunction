summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]}
execute if data storage mob_data: Call.CountRange run function skill:enemy/spawn/count_range
scoreboard players operation _ Level = @s Level
execute if data storage mob_data: Call{IsChild:1b} run function skill:enemy/spawn/child
execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
