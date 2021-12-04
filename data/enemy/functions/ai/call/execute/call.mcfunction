data modify storage mob_data: Success set value 1b
execute if data storage mob_data: Call.Condition store result storage mob_data: Success byte 1 run function enemy:ai/call/condition/logic/
execute if data storage mob_data: {Success:1b} run function enemy:ai/call/call
