##############################
### エンティティ維持
##############################

execute store result entity @s Pos[1] double 0.001 run data get entity @s Passengers[0].Pos[1] 1000
execute at @s as @e[distance=..0.01,tag=Cargo] run data merge entity @s {PortalCooldown:40,Age:0}
tp @s ~ ~ ~
