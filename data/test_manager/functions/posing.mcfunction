execute positioned ^8 ^ ^4 run tag @e[tag=Mob,limit=1,distance=..8] add PosingRight
execute positioned ^8 ^ ^4 run tag @e[tag=Mob,limit=1,distance=..8] add Posing

execute positioned ^-8 ^ ^4 run tag @e[tag=Mob,limit=1,distance=..8] add PosingLeft
execute positioned ^-8 ^ ^4 run tag @e[tag=Mob,limit=1,distance=..8] add Posing

execute rotated ~ 0 as @e[tag=PosingRight] run tp @s ^1 ^ ^3 ~-215 0
execute rotated ~ 0 as @e[tag=PosingLeft] run tp @s ^-1 ^ ^3 ~215 0

execute as @e[tag=Posing] positioned as @s as @e[tag=Mob,distance=..1] run data merge entity @s {Tags:[Mob],NoAI:1b}