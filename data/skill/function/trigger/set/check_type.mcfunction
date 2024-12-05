#> skill:trigger/set/check_type
#メインハンドをストレージに保存
data remove storage item: Item
data modify storage item: Item set from entity @s SelectedItem
#TUSBメモリー以外のアイテムかチェック
execute unless data storage item: Item run function makeup:skill/trigger/error/no_mainhand
execute if data storage item: Item.tag.Skill{Type:"TUSBMemory"} run function makeup:skill/trigger/error/set_to_tusb_memory
execute if data storage item: Item unless data storage item: Item.tag.Skill{Type:"TUSBMemory"} in area:control_area run function skill:trigger/set/check_trigger
