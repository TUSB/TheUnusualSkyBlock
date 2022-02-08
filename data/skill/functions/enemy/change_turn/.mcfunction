#AI.Turn[0].ExitにChangeTurnフラグを追加
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
#AI.ChangeTurnにターンを進める回数を保存する
execute if data storage mob_data: Call.Loop run data modify storage mob_data: AI.ChangeTurn set from storage mob_data: Call.Loop
execute if data storage mob_data: Call.Set run function skill:enemy/change_turn/set
execute if data storage mob_data: Call.Random run function skill:enemy/change_turn/random
#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
