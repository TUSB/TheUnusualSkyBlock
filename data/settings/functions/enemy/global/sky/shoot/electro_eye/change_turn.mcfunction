#Function
#AI.Turn[0].ExitにChangeTurnフラグを追加
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
#Onceを進める
execute if data storage mob_data: AI.Turn[0].Once store result storage mob_data: AI.Turn[0].Once int 0.99999 run data get storage mob_data: AI.Turn[0].Once
#乱数でターンを進める回数を保存
execute store result score _ Random run function calc:random
scoreboard players set _ _ 10
scoreboard players operation _ Random %= _ _
#近距離瞬間移動
execute if score _ Random matches ..5 run data modify storage mob_data: AI.ChangeTurn set value 1
execute if score _ Random matches 6..7 run data modify storage mob_data: AI.ChangeTurn set value 2
execute if score _ Random matches 8..9 run data modify storage mob_data: AI.ChangeTurn set value 3
#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
