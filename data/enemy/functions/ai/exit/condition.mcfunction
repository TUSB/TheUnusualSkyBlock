#Conditionによるexit
data modify storage mob_data: Call.Condition set from storage mob_data: AI.Turn[0].Exit.Condition
execute store result storage mob_data: Success byte 1 run function enemy:ai/call/condition/logic/
execute if data storage mob_data: {Success:1b} run function enemy:ai/exit/exit
