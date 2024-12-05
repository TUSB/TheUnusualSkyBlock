#TUSBつきアイテムを取得
data modify storage item: TUSBM_Inventory set value []
data modify storage item: TUSBM_Inventory append from entity @s Inventory[{tag:{Skill:{Type:"TUSBMemory",Initializing:1b}}}]
#アイテムごとにループ
function item:tusb_memory/loop
#演出
function makeup:item/enchant/enchant
#リセット
data remove storage item: TUSBM_Inventory