#Execute If|Random時
#先頭にGlobalコンディションがあれば適用
data modify storage mob_data: Call set from storage mob_data: CallList[0]
function enemy:ai/call/condition/logic/
data remove storage mob_data: CallList[0].Condition[{Global:1b}]
