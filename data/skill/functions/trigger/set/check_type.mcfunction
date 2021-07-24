#メインハンドをストレージに保存
data modify storage item: Items set value []
data modify storage item: Items append from entity @s SelectedItem
#TUSBメモリー以外のアイテムかチェック
execute unless data storage item: Items[0] run function makeup:skill/trigger/error/no_mainhand
execute if data storage item: Items[0].tag.Skill{Type:"TUSBMemory"} run function makeup:skill/trigger/error/set_to_tusb_memory
execute if data storage item: Items[0] unless data storage item: Items[0].tag.Skill{Type:"TUSBMemory"} in area:control_area run function skill:trigger/set/check_trigger
