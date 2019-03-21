##############################
### アイシングレイ ループ
##############################

particle minecraft:end_rod ~ ~ ~ 0.01 0.01 0.01 0 2 force @a[distance=..30,tag=ShowParticles]
particle minecraft:dolphin ~ ~ ~ 0.11 0.11 0.11 0 30 force @a[distance=..30,tag=ShowParticles]
tp @s ^ ^ ^1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=0,dz=0,tag=!Applied] at @s run function skill_manager:enemy/icing_ray/1/damage_apply
scoreboard players remove $LoopCount Global 1
execute positioned as @s align xyz unless block ~0.5 ~0.5 ~0.5 #skill_manager:transparent_block run scoreboard players set $LoopCount Global -1
execute if score $LoopCount Global matches 0.. at @s run function skill_manager:enemy/icing_ray/1/loop
