##############################
### レーザー召喚 - Event  
##############################

tag @s add Shooter
execute positioned ^ ^ ^10.1 as @a[gamemode=!creative,gamemode=!spectator,distance=..40] positioned as @s positioned ^ ^ ^1000 facing entity @e[tag=Shooter,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add SteaveLaserTarget
effect give @a[tag=SteaveLaserTarget] instand_damage 20 1
tag @s remove Shooter
tag @e[tag=SteaveLaserTarget] remove SteaveLaserTarget
