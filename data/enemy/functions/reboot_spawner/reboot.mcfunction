
execute as @e[tag=Spawner,distance=..0.01,limit=1] run say @s

execute as @e[tag=Spawner,distance=..0.01,limit=1] at @s run data modify block ~ ~ ~ SpawnData.entity.id set from entity @s item.tag.Spawner.SpawnData.entity.id
execute as @e[tag=Spawner,distance=..0.01,limit=1] at @s run data modify block ~ ~ ~ SpawnPotentials[0].data.entity.id set from entity @s item.tag.Spawner.SpawnPotentials[0].data.entity.id
