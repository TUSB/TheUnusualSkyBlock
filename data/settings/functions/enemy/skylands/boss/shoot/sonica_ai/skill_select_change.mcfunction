#Function
# Turnを変える
    execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Skill
# AI.Turn[0].ExitにChangeTurnフラグを追加
    data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
# ターンの決定(ランダム)
    execute store result storage mob_data: AI.ChangeTurn int 1 run scoreboard players add _ _ 1
    execute if score _ _ matches 0 run data modify storage mob_data: AI.ChangeTurn set value 1
# データを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
