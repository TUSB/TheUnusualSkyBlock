##############################
### セキュリティレーザーループ
##############################

particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 2 normal
tp @s ^ ^ ^1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=0,dz=0] at @s run function skill_manager:enemy/security_laser/1/damage_apply
scoreboard players remove $LoopCount Global 1
execute align xyz unless block ~0.5 ~0.5 ~0.5 #skill_manager:transparent_block run scoreboard players set $LoopCount Global -1
execute if score $LoopCount Global matches ..0 run function skill_manager:enemy/security_laser/1/loop