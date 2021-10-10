#順番にすべて実行 最後の1回はexecute/で実行
data modify storage mob_data: Call set from storage mob_data: CallList[0]
data remove storage mob_data: CallList[0]

execute if data storage mob_data: CallList[0] unless data storage mob_data: Call.Condition run function enemy:ai/call/call
execute if data storage mob_data: CallList[0] if data storage mob_data: Call.Condition run function enemy:ai/call/condition/
execute if data storage mob_data: CallList[0] run function enemy:ai/call/execute/all
