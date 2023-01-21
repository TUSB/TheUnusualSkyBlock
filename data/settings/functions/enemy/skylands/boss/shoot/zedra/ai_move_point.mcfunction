#Function
## 移動先の指定
function calc:geometry/tp_00000
execute as 0-0-0-0-0 at @s unless block ~ ~ ~ #main:no_collision run function settings:enemy/skylands/boss/shoot/zedra/ai_move_point_if
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos set from entity 0-0-0-0-0 Pos
execute as 0-0-0-0-0 run function calc:geometry/return_marker
