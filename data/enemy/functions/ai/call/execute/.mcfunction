execute unless data storage mob_data: CallList[{Execute:"Random"}] if data storage mob_data: CallList[0] run function enemy:ai/call/execute/all
execute if data storage mob_data: CallList[{Execute:"Random"}] run function enemy:ai/call/execute/random

