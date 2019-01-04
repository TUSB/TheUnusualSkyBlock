##############################
### レーザー予告線召喚 - Event  
##############################

execute anchored eyes run particle minecraft:flame ^ ^ ^1 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^2 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^3 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^4 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^5 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^6 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^7 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^8 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^9 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^10 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^11 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^12 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^13 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^14 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^15 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^16 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^17 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^18 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^19 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^20 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^21 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^22 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^23 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^24 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^25 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^26 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^27 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^28 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^29 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^30 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^31 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^32 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^32 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^34 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^35 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^36 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^37 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^38 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^39 0 0 0 0 10
execute anchored eyes run particle minecraft:flame ^ ^ ^40 0 0 0 0 10
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["CallOnFin","Event","Laser","CooldownRequired","FaceToPlayer"],Duration:600,Radius:0f,Particle:"minecraft:block minecraft:air",PortalCooldown:5s}
execute as @e[tag=FaceToPlayer,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator]
tag @e[tag=FaceToPlayer,limit=1] remove FaceToPlayer
