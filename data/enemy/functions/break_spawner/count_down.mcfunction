#setblock ~ ~ ~ spawner{SpawnCount:0,SpawnRange:0,Delay:2147483647,RequiredPlayerRange:0,SpawnData:{id:"minecraft:marker"}} replace
setblock ~ ~ ~ lodestone replace

execute in area:control_area run data modify block 2 3 2 Text1 set value '{"score":{"name":"_","objective":"_"}}'
summon area_effect_cloud ~ ~0.5 ~ {Tags:[ShowSpawnerHealth],Duration:10,CustomNameVisible:1b}
execute positioned ~ ~0.5 ~ as @e[tag=ShowSpawnerHealth,distance=..0.01] in area:control_area run data modify entity @s CustomName set from block 2 3 2 Text1
