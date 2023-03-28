#Exit成功フラグを落とす
data modify storage mob_data: Exit set value 0b
#現在のターンスキルにCallOnExitがあるか保存
execute store success storage mob_data: CallOnExit byte 1 run data get storage mob_data: AI.Turn[0].Skill[0].Call[{CallOnExit:1b}]
#ChangeTurnによるexit
execute if data storage mob_data: AI.Turn[0].Exit.ChangeTurn run function enemy:ai/exit/change_turn
#Conditionによるexit
execute if data storage mob_data: {Exit:0b} if data storage mob_data: AI.Turn[0].Exit.Condition run function enemy:ai/exit/condition
#Loopによるexit
execute if data storage mob_data: {Exit:0b} if data storage mob_data: AI.Turn[0].Exit.Loop{Current:0} run function enemy:ai/exit/loop
#Timeによるexit
execute if data storage mob_data: {Exit:0b} if data storage mob_data: AI.Turn[0].Exit.Time run function enemy:ai/exit/time
