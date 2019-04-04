




scoreboard players add @s EclipseRadius 2

execute store result score $Y1 Global run data get entity @s Pos[1] 100
scoreboard players operation $Y1 Global += @s EclipseRadius
execute store result entity @s Pos[1] double 0.01 run scoreboard players get $Y1 Global

execute rotated as @s rotated ~000 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~120 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~240 ~-00 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~000 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~120 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~240 ~-22 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~000 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~120 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~240 ~-44 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~000 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~120 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute rotated as @s rotated ~240 ~-66 positioned ^ ^ ^2048 facing entity @s feet positioned ^ ^ ^2048 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force

tp @s ~ ~ ~ ~10 ~-1
tp @s[x_rotation=-90..68] ~ ~ ~ ~ 89
