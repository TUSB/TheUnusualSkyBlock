##############################
### モブの振舞い全対象
##############################

execute as @e[type=!minecraft:player,tag=Initialized] at @s run function behaviour_manager:common/check

scoreboard players remove * QueueID 20
execute if score $_ QueueID matches ..-1 run scoreboard players set $_ QueueID 0
