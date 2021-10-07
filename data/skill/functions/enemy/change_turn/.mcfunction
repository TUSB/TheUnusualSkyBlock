execute if data storage mob_data: Call.Loop run function skill:enemy/change_turn/loop
execute if data storage mob_data: Call.Random run function skill:enemy/change_turn/random
#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
