#> makeup:skill/act/summoner/deal/act0
playsound minecraft:entity.wither.shoot player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:entity.shulker_bullet.hit player @a[distance=..32] ~ ~ ~ 1 1
playsound minecraft:entity.sheep.ambient player @a[distance=..32] ~ ~ ~ 1 0.6
playsound minecraft:entity.sheep.ambient player @a[distance=..32] ~ ~ ~ 1 1
execute as @e[distance=..30,tag=Enemy] at @s if block ~ ~-1 ~ #minecraft:wool run particle minecraft:item{item:"minecraft:white_wool"} ~ ~0.5 ~ 0 0.5 0 0.2 100 force
execute as @e[distance=..30,tag=Enemy] at @s if block ~ ~-1 ~ #minecraft:wool run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.2 15 force
