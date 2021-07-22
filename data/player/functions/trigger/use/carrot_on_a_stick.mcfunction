#装備を取得
function player:load_equipments
#スキル
#メインハンド
execute if data storage item: SelectedItem.tag.Skill{Trigger:"人参棒を使用"} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag.Skill{Trigger:"人参棒を使用"} run function skill:practice/
#オフハンド
execute unless data storage item: SelectedItem.tag.Skill{Trigger:"人参棒を使用"} if data storage item: Equipments[{Slot:-106b}].tag.Skill{Trigger:"人参棒を使用"} run data modify storage item: Item set from storage item: Equipments[{Slot:-106b}]
execute unless data storage item: SelectedItem.tag.Skill{Trigger:"人参棒を使用"} if data storage item: Equipments[{Slot:-106b}].tag.Skill{Trigger:"人参棒を使用"} run function skill:practice/
#トリガーリセット
scoreboard players reset @s UseCarrotStick
