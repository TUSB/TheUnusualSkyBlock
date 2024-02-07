#Timeによるexit
execute store result storage mob_data: AI.Turn[0].Exit.TimeCount int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.TimeCount 1
execute if data storage mob_data: AI.Turn[0].Exit{TimeCount:0} run function enemy:ai/exit/exit
execute if data storage mob_data: AI.Turn[-1].Exit{TimeCount:0} run data modify storage mob_data: AI.Turn[-1].Exit.TimeCount set from storage mob_data: AI.Turn[-1].Exit.Time
