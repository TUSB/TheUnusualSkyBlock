##############################
### からくり遠隔接近
##############################

###ターゲット探索
tag @e[distance=..48,tag=Mob] add TargetOption
execute positioned as @e[tag=ActivePuppet,limit=1] run tag @e[tag=TargetOption,sort=nearest,limit=1] add ActiveTarget
execute as @e[tag=ActivePuppet,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=ActiveTarget,limit=1]
execute positioned as @e[tag=ActivePuppet,limit=1] run tag @e[distance=..16,tag=ActiveTarget] remove ActiveTarget
tag @e[distance=..32,tag=TargetOption] remove TargetOption
