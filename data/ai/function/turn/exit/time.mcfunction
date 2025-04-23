#Timeによるexit
execute if score @s AI_ExitTime matches ..0 run function ai:exit/exit
execute if data storage mob_data: AI.Turn[-1].Exit{TimeCount:0} run data modify storage mob_data: AI.Turn[-1].Exit.TimeCount set from storage mob_data: AI.Turn[-1].Exit.Time
