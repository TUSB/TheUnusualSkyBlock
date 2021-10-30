#Conditionによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Condition run function enemy:ai/exit/condition
#Timeによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Time run function enemy:ai/exit/time
#Loopによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Loop{Current:0} run function enemy:ai/exit/loop
#ChangeTurnによるexit
execute if data storage mob_data: AI.Turn[0].Exit.ChangeTurn run function enemy:ai/exit/change_turn
