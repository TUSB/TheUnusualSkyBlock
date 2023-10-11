#Function
# メッセージ（一度きりの予定）
    execute unless data storage mob_data: Global.SilverColony run tellraw @a[distance=..64] {"translate":"とあるスポナーが破壊できるようになった。","color":"light_purple","bold":true}
    # data modify storage mob_data: Global.SilverColony set value 1b
# スポナー破壊処理
    execute in area:skylands positioned -133 157 -684 run forceload add ~ ~
    execute in area:skylands positioned -133 157 -684 run fill ~ ~ ~ ~ ~ ~ air replace barrier
    execute in area:skylands positioned -133 157 -684 run playsound block.glass.break master @a ~0.5 ~0.5 ~0.5 2 0 0
    execute in area:skylands run forceload remove all
