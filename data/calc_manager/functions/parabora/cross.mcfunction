##############################
### check/paraboraクロス描画
##############################

# [Unused]

execute as 0-0-11-0-20 at @s facing ^ ^1 ^ run tp @s ~ ~ ~ ~ ~
execute as 0-0-11-0-21 at @s facing ^ ^-1 ^ run tp @s ~ ~ ~ ~ ~
execute if score $Dimension Global matches 0 in overworld rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] facing ^ ^ ^1 positioned ^ ^ ^0.8 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] facing ^ ^ ^1 positioned ^ ^ ^0.4 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] facing ^ ^ ^1 positioned ^ ^ ^0.2 in overworld run particle minecraft:heart ~ ~ ~ 0 0 0 0 1 force
execute if score $Dimension Global matches 0 in overworld rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] facing ^1 ^ ^ positioned ^ ^ ^0.8 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] facing ^1 ^ ^ positioned ^ ^ ^0.4 rotated as @e[x=0.0,y=2.0,z=0.0,distance=..0.1,sort=furthest,limit=2] facing ^1 ^ ^ positioned ^ ^ ^0.2 in overworld run particle minecraft:heart ~ ~ ~ 0 0 0 0 1 force
