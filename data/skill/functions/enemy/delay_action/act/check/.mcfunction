###ohmydat確認
function oh_my_dat:please
###List移行
data modify storage mob_data: DelayAction set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayAction
###反転
data modify storage calc: Array.reverse.Input set from storage mob_data: DelayAction
function calc:array/reverse/
data modify storage mob_data: CheckingAction set from storage calc: Array.reverse.Output
###Loop
execute if data storage mob_data: CheckingAction[0] run function skill:enemy/delay_action/act/check/loop
data modify storage mob_data: DelayAction set from storage mob_data: CheckedAction
###DelayActionのソートをする
###Executed:1bのついた要素だけ位置を調整する
execute if data storage mob_data: DelayAction[0] run function skill:enemy/delay_action/act/sort/
###次の詠唱Tick更新
execute if data storage mob_data: DelayAction[0] store result score @s NextActionTick run data get storage mob_data: DelayAction[0].NextAction
execute unless data storage mob_data: DelayAction[0] run scoreboard players reset @s NextActionTick
scoreboard players reset @s ActionTick
###Ohmydatに保存
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayAction
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayAction set from storage mob_data: DelayAction

execute unless score @s NextActionTick matches 1.. run function skill:enemy/delay_action/act/bit_drop


###一時的に保存したデータの破棄
data remove storage mob_data: DelayAction
data remove storage mob_data: SortingActionData
data remove storage mob_data: ExecutingAction
data remove storage mob_data: CheckingAction
data remove storage mob_data: CheckedAction