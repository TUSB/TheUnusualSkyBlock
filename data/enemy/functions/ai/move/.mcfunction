##移動
data remove storage mob_data: Move
#前
execute if data storage mob_data: AI.Turn[0].Move.Front run function enemy:ai/move/front
#横
execute if data storage mob_data: AI.Turn[0].Move.Side run function enemy:ai/move/side
#上下
execute if data storage mob_data: AI.Turn[0].Move.Up run function enemy:ai/move/up
#最終処理
execute in area:control_area run function enemy:ai/move/end
#返却
execute as 0-0-0-0-0 run function calc:geometry/return_marker
