##############################
### モーションをエンティティにロードする
##############################

scoreboard players remove @s MotionY 10
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ
