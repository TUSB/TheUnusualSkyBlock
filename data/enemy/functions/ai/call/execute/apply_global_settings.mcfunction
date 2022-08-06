#先頭にGlobal Settingsあれば適用
data modify storage mob_data: Call set from storage mob_data: CallList[0]
data remove storage mob_data: CallList[0].Settings
function enemy:ai/call/settings/init
