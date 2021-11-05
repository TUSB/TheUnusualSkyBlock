#順番にすべて実行
data modify storage mob_data: Call set from storage mob_data: CallList[0]
function enemy:ai/call/execute/call

data remove storage mob_data: CallList[0]
execute if data storage mob_data: CallList[0] run function enemy:ai/call/execute/all
