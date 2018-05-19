##############################
### からくりマスター接近
##############################

###ターゲット探索
execute positioned as @e[tag=ActivePuppet,limit=1] run tp @e[tag=ActivePuppet,limit=1] ~ ~ ~ facing entity @s
execute if entity @e[distance=2..,tag=ActivePuppet,limit=1] run tag @s add ActiveTarget
