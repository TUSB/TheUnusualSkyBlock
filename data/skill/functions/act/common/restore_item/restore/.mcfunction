
function #oh_my_dat:please
data modify storage tusb_player: RestoreItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData[-1]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData[-1]

# オフハンド
data remove storage item: Item
data modify storage item: Item set from storage tusb_player: RestoreItem.Items[{Slot:-106b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:-106b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s weapon.offhand from block 2 2 2 container.0

#装備
data remove storage item: Item
data modify storage item: Item set from storage tusb_player: RestoreItem.Items[{Slot:100b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:100b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.feet from block 2 2 2 container.0
data remove storage item: Item
data modify storage item: Item set from storage tusb_player: RestoreItem.Items[{Slot:101b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:101b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.legs from block 2 2 2 container.0
data remove storage item: Item
data modify storage item: Item set from storage tusb_player: RestoreItem.Items[{Slot:102b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:102b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.chest from block 2 2 2 container.0
data remove storage item: Item
data modify storage item: Item set from storage tusb_player: RestoreItem.Items[{Slot:103b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:103b}]
data modify storage item: Item.Slot set value 0b
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s armor.head from block 2 2 2 container.0

#ホットバー
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:0b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:1b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:2b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:3b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:4b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:5b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:6b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:7b}]
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[{Slot:8b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:0b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:1b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:2b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:3b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:4b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:5b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:6b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:7b}]
data remove storage tusb_player: RestoreItem.Items[{Slot:8b}]
loot replace entity @s hotbar.0 9 mine 2 2 2 debug_stick

#インベントリ
data modify block 2 2 2 Items set value []
function skill:act/common/restore_item/restore/inventory
loot replace entity @s inventory.0 27 mine 2 2 2 debug_stick

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData[-1] run tag @s remove HasRestoreItems

#復活地点調整 AnywhereTeleport処理を利用
data modify storage anywhere: at set from storage tusb_player: RestoreItem.RaisePoint
execute at @s run function #anywhere:tp

tellraw @s {"translate":"インベントリと位置情報を復元しました。","color":"green"}
execute at @s run function makeup:skill/act/common/restore_item/return
