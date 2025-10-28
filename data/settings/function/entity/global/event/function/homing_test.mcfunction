#Function
execute facing entity @a[gamemode=!creative,gamemode=!spectator,sort=nearest,limit=1] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 facing entity @s feet facing ^ ^ ^-1 positioned as @s run function smart_motion:core/tp
