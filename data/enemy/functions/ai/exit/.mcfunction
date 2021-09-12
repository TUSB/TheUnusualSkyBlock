#Targetによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Half run function enemy:ai/exit/half
#Timeによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Time run function enemy:ai/exit/time
