##############################
### レーザー召喚 - Event  
##############################

execute anchored eyes run particle minecraft:end_rod ^ ^ ^1 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^2 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^3 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^4 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^6 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^7 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^8 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^9 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^10 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^12 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^13 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^14 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^15 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^16 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^17 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^18 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^19 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^20 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^21 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^22 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^23 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^24 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^25 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^26 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^27 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^28 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^29 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^30 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^31 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^32 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^32 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^34 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^35 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^36 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^37 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^38 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^39 0 0 0 0 10
execute anchored eyes run particle minecraft:end_rod ^ ^ ^40 0 0 0 0 10
tag @s add Shooter
execute positioned ^ ^ ^10.1 as @a[gamemode=!creative,gamemode=!spectator,distance=..40] positioned as @s positioned ^ ^ ^1000 facing entity @e[tag=Shooter,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add SteaveLaserTarget
effect give @a[tag=SteaveLaserTarget] instant_damage 20 1
tag @s remove Shooter
tag @e[tag=SteaveLaserTarget] remove SteaveLaserTarget
playsound minecraft:entity.wither.death master @a[distance=..40] ~ ~ ~ 10 2
