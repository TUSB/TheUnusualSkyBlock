data modify storage mob_data: Success set value 1b
execute if data storage mob_data: Call.Condition store result storage mob_data: Success byte 1 run function enemy:ai/call/condition/logic/
execute if data storage mob_data: {Success:1b} if data storage mob_data: Call.Settings run function enemy:ai/call/settings/init
execute if data storage mob_data: {Success:1b} unless data storage mob_data: Call.Settings run function enemy:ai/call/execute/record_pos
