##############################
### アイシングレイ召喚 - Event  
##############################

scoreboard players set $LoopCount Global 20
execute rotate as @s run function skill_manager:enemy/icing_ray/1/loop
tag @a[tag=Applied] remove Applied
