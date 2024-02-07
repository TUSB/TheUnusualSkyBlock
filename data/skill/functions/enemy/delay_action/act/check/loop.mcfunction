###NextAction更新 "@s _"
scoreboard players set @s _ 0
execute store result score @s _ run data get storage mob_data: CheckingAction[-1].NextAction
scoreboard players operation @s _ -= @s ActionTick
###Data移動
data modify storage mob_data: ExecutingAction set from storage mob_data: CheckingAction[-1]
###Execute
execute if score @s _ matches ..0 run function skill:enemy/delay_action/act/execute/
###Dataを戻す
data modify storage mob_data: CheckingAction[-1] set from storage mob_data: ExecutingAction
data remove storage mob_data: ExecutingAction
###Shift
function skill:enemy/delay_action/act/check/shift
###Loop
execute if data storage mob_data: CheckingAction[-1] run function skill:enemy/delay_action/act/check/loop