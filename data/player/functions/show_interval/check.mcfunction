#インターバル表示

#装備を取得
function player:load_equipments
data remove storage item: Item
#メインハンド
execute if data storage item: SelectedItem.tag.Skill{ShowInterval:1b} run data modify storage item: Item set from storage item: SelectedItem
#オフハンド
execute unless data storage item: SelectedItem.tag.Skill{ShowInterval:1b} if data storage item: Equipments[{Slot:-106b}].tag.Skill{ShowInterval:1b} run data modify storage item: Item set from storage item: Equipments[{Slot:-106b}]

execute unless data storage item: Item run title @s actionbar [""]
execute if data storage item: Item run function player:show_interval/show
