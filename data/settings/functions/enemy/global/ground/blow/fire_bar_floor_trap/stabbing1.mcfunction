#Function
execute as @e[distance=..1.5,tag=Enemy,tag=!Trap] run tag @s add NowTarget
execute as @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] run tag @s add NowTarget
execute at @e[distance=..1.5,tag=NowTarget] run function settings:enemy/global/ground/blow/thorn_floor_trap/stabbing2
tag @e[distance=..1.5,tag=NowTarget] remove NowTarget
