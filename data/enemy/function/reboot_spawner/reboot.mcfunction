#> enemy:reboot_spawner/reboot
execute as @e[tag=Spawner,distance=..0.01,limit=1] at @s run data modify block ~ ~ ~ SpawnData.entity.id set from entity @s item.components."minecraft:custom_data".Spawner.SpawnData.entity.id
execute as @e[tag=Spawner,distance=..0.01,limit=1] at @s run data modify block ~ ~ ~ SpawnPotentials[0].data.entity.id set from entity @s item.components."minecraft:custom_data".Spawner.SpawnPotentials[0].data.entity.id
