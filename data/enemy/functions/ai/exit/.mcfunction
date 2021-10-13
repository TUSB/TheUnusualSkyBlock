#Targetによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Half facing entity 0-0-0-0-2 feet positioned ^ ^ ^0.003 rotated as @s run function enemy:ai/exit/half
#Timeによるexit
execute if data storage mob_data: AI.Turn[0].Exit.Time run function enemy:ai/exit/time
#ChangeTurnによるexit
execute if data storage mob_data: AI.Turn[0].Exit.ChangeTurn run function enemy:ai/exit/change_turn
