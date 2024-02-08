#> skill:act/common/dig_tomb/act1
#
# シュルカーボックスを使用してアイテムを入れ替える
#
# @within function skill:act/common/dig_tomb/act0

data modify storage item: Slot set from storage item: DeathInventory.Set[0].Slot
data modify storage item: Items set from storage item: DeathInventory.Set
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player
data modify storage item: DeathInventory.Set set value []