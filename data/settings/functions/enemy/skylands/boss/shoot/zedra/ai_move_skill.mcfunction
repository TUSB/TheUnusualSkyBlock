#Function
## バグ対策を追加
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos set from entity @s Pos
## AI.Turn[0].ExitにChangeTurnフラグを追加
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
## 乱数を保存
execute store result score _ Random run function calc:random
scoreboard players set _ _ 5
scoreboard players operation _ Random %= _ _
## 距離によって移動スキルを決定する
function calc:geometry/tp_00002
data modify entity 0-0-0-0-2 Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos
execute as @s at 0-0-0-0-2 store result score _ _ run function calc:geometry/distance/
execute as 0-0-0-0-2 run function calc:geometry/return_marker
## 移動スキルの決定
data modify storage mob_data: AI.ChangeTurn set value 2
execute if score _ _ matches 600..3200 unless score _ Random matches 0 run data modify storage mob_data: AI.ChangeTurn set value 1
execute if score _ _ matches 600..3200 unless score _ Random matches 0 run function settings:enemy/skylands/boss/shoot/zedra/ai_move1_pre
## データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
## 滞空モーションOFF
data modify entity @s Tags set from storage mob_data: Tags
tag @s remove SkyMotion
data modify storage mob_data: Tags set from entity @s Tags
