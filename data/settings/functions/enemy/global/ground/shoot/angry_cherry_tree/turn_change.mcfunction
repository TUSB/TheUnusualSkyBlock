#Function
# AI.Turn[0].ExitにChangeTurnフラグを追加
    data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
# ターンの決定(ランダム)
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 5
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0 run data modify storage mob_data: AI.ChangeTurn set value 1
    execute if score _ Random matches 1 run data modify storage mob_data: AI.ChangeTurn set value 2
    execute if score _ Random matches 2 run data modify storage mob_data: AI.ChangeTurn set value 3
    execute if score _ Random matches 3 run data modify storage mob_data: AI.ChangeTurn set value 6
    execute if score _ Random matches 4 run data modify storage mob_data: AI.ChangeTurn set value 7
# データを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
