#0-0-0-0-1の実行座標を変化させ、最後にその地点で実行
function calc:geometry/tp_00001
data modify storage mob_data: SettingsList set from storage mob_data: Call.Settings
data modify storage mob_data: SettingsList append value {}
execute if data storage mob_data: SettingsList[{Global:1b}] run data modify storage mob_data: SettingsList[-1].Global set value 1b
function enemy:ai/call/settings/

execute as 0-0-0-0-1 run function calc:geometry/return_marker
