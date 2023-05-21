#oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]

# 対応表
# Casting → DelayAction
# AddingCast → AddingAction
# CastingTick → ActionTick
# NextCastingTick → NextActionTick
# SortingCastingData → SortingActionData
# ExecutingCast → ExecutingAction


data modify storage mob_data: DelayAction set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayAction


### 追加用枠

execute if data storage mob_data: Call{Tags:["Casting"]} run function skill:enemy/delay_action/append/casting/

###

data modify storage mob_data: AddingAction.Tags set from storage mob_data: Call.Tags
data modify storage mob_data: AddingAction.ExtraSettings set from storage mob_data: Call.ExtraSettings

###次の詠唱Tick更新
execute store result score _ _ run data get storage mob_data: AddingAction.NextAction
execute if score @s ActionTick matches -2147483647..2147483647 run scoreboard players operation _ _ += @s ActionTick
execute unless score @s NextActionTick matches -2147483647..2147483647 run scoreboard players operation @s NextActionTick = _ _
execute if score @s NextActionTick matches -2147483647..2147483647 run scoreboard players operation @s NextActionTick < _ _


###挿入する場所の探索
function skill:enemy/delay_action/append/search



###Ohmydatに保存
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayAction
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayAction set from storage mob_data: DelayAction



###一時的に保存したデータの破棄
data remove storage mob_data: DelayAction
data remove storage mob_data: AddingAction

#initialize
scoreboard players add @s NativeFlag 100
