#TUSBつきアイテムを取得
data modify storage item: Inventory set value []
data modify storage item: Inventory append from entity @s Inventory[{tag:{Skill:{Type:"TUSBMemory",Initializing:1b}}}]
#アイテムごとにループ
function item:tusb_memory/loop
#演出
function makeup:item/enchant/enchant
