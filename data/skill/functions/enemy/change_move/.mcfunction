execute if data storage mob_data: Call.Front run function skill:enemy/change_move/front
execute if data storage mob_data: Call.Side run function skill:enemy/change_move/side
execute if data storage mob_data: Call.Up run function skill:enemy/change_move/up
#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
