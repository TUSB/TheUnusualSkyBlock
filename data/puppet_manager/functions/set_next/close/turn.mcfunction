##############################
### からくり近接接近向き補正
##############################

###ターゲット探索
tag @e[distance=..24,tag=Mob] add TargetOption
execute as @e[tag=ActivePuppet,limit=1] at @s run function puppet_manager:set_next/close/target
tag @e[distance=..24,tag=TargetOption] remove TargetOption
