function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI
data modify storage mob_data: CallList set from storage mob_data: AI.Initial
function enemy:ai/call/execute/
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI