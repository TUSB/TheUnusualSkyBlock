execute unless data storage mob_data: CallList[0].Execute if data storage mob_data: CallList[0].Name run function enemy:ai/call/execute/all
execute if data storage mob_data: CallList[{Execute:"Random"}] run function enemy:ai/call/execute/random
execute if data storage mob_data: CallList[{Execute:"If"}] run function enemy:ai/call/execute/if
