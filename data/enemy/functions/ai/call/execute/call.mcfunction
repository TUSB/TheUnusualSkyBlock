execute unless data storage mob_data: Call.Condition run function enemy:ai/call/call
execute if data storage mob_data: Call.Condition store result storage mob_data: Success byte 1 run function enemy:ai/call/condition/fork
execute if data storage mob_data: Call.Condition if data storage mob_data: {Success:1b} run function enemy:ai/call/call
