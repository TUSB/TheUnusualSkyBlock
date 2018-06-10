##############################
### ピアッシングエイム適用
##############################

###矢修正
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill_manager:hunter/piercing_aim/modify

###回数消費
scoreboard players remove @s PiercingAim 1
tellraw @s[scores={PiercingAim=..0}] {"text":"ピアッシングエイムの効果が切れた","color":"yellow"}
scoreboard players reset @s[scores={PiercingAim=..0}] PiercingAim
