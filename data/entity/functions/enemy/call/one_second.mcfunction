function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

###Skillsのcall(1秒間隔
data modify storage mob_data: Call set from storage mob_data: AI.Call
function entity:enemy/call/call
