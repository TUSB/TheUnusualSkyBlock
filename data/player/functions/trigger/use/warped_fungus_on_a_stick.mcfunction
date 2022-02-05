#装備を取得
function player:load_equipments
#メインハンド Wearable
execute if data storage item: SelectedItem.tag{Wearable:1b} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag{Wearable:1b} run function item:wearable
#トリガーリセット
scoreboard players reset @s UseFungusStick
