##############################
### からくりマスター接近向き補正
##############################

###ターゲット探索
execute positioned as @e[tag=ActivePuppet,limit=1] run tp @e[distance=0,tag=ActivePuppet,limit=1] ~ ~ ~ facing entity @s
execute store result score $SeekFlag PuppetScore if entity @e[distance=2.5..,tag=ActivePuppet,limit=1] run tag @s add ActiveTarget
