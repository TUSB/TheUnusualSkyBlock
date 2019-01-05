tag @s add Camera
#撮影用ポージング
execute positioned ^16 ^ ^4 run tag @e[tag=Mob,distance=..16] add PosingRight
execute positioned ^16 ^ ^4 run tag @e[tag=Mob,distance=..16] add Posing

execute positioned ^-16 ^ ^4 run tag @e[tag=Mob,distance=..16] add PosingLeft
execute positioned ^-16 ^ ^4 run tag @e[tag=Mob,distance=..16] add Posing

execute as @e[tag=PosingRight,limit=1,sort=nearest] positioned as @s as @e[tag=Mob,distance=..1] at @a[tag=Camera] rotated ~ 0 run tp @s ^1.1 ^ ^3 ~-215 0
execute as @e[tag=PosingLeft,limit=1,sort=nearest] positioned as @s as @e[tag=Mob,distance=..1] at @a[tag=Camera] rotated ~ 0 run tp @s ^-1.1 ^ ^3 ~215 0

execute as @e[tag=Posing] positioned as @s as @e[tag=Mob,distance=..1] run data merge entity @s {Tags:[Mob],NoAI:1b}

tag @s remove Camera
tag @e[tag=Posing] remove Posing
tag @e[tag=PosingRight] remove PosingRight
tag @e[tag=PosingLeft] remove PosingLeft