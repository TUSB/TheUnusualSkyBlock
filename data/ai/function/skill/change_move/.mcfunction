#> ai:skill/change_move/
execute if data storage mob_data: Call.Front run function ai:skill/change_move/front
execute if data storage mob_data: Call.Side run function ai:skill/change_move/side
execute if data storage mob_data: Call.Up run function ai:skill/change_move/up
execute if data storage mob_data: Call.Horizontal run function ai:skill/change_move/horizontal
execute if data storage mob_data: Call.Vertical run function ai:skill/change_move/vertical

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
