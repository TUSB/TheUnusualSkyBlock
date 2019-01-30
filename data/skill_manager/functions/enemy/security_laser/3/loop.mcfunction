##############################
### セキュリティレーザーループ
##############################

particle minecraft:end_rod ~ ~ ~ 0 0 0 0 4 force @a[distance=..30]
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0 4 force @a[distance=..30]
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 4 force @a[distance=..30]
tp @s ^ ^ ^1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=0,dz=0,tag=!Applied] at @s run function skill_manager:enemy/security_laser/3/damage_apply
scoreboard players remove $LoopCount Global 1
execute positioned as @s align xyz unless block ~0.5 ~0.5 ~0.5 #skill_manager:transparent_block run scoreboard players set $LoopCount Global -1
execute if score $LoopCount Global matches 0.. at @s run function skill_manager:enemy/security_laser/3/loop
