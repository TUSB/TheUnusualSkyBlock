#0-0-0-0-1の実行座標を変化させ、最後にその地点で実行
function calc:geometry/tp_00001
data modify storage mob_data: SettingsList set from storage mob_data: Call.Settings
function enemy:ai/call/settings/

execute if score 00000000-0000-0000-0000-000000000002 _ matches 1 at 0-0-0-0-1 run function enemy:ai/call/call
execute as 0-0-0-0-1 run function calc:geometry/return_marker
