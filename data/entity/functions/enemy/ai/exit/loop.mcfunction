#Loopによるexit
execute if data storage mob_data: AI.Turn[0].Exit{LoopCount:0} run data modify storage mob_data: AI.Turn[0].Exit.LoopCount set from storage mob_data: AI.Turn[0].Exit.Loop
execute if data storage mob_data: AI.Turn[0].Exit{LoopCount:0} run function entity:enemy/ai/exit/exit
