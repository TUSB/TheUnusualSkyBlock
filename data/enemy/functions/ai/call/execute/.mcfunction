execute if data storage mob_data: CallList[{Execute:"All"}] run function enemy:ai/call/execute/all
execute if data storage mob_data: CallList[{Execute:"Random"}] run function enemy:ai/call/execute/random
execute unless data storage mob_data: CallList[0].Execute run data modify storage mob_data: Call set from storage mob_data: CallList[0]

execute unless data storage mob_data: Call.Condition run function enemy:ai/call/call
execute if data storage mob_data: Call.Condition store result storage mob_data: Success byte 1 run function enemy:ai/call/condition/fork
execute if data storage mob_data: Call.Condition if data storage mob_data: {Success:1b} run function enemy:ai/call/call
