
function oh_my_dat:please
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

#復活地点調整 レイズ処理を利用
data modify storage tusb_player: Raise set from storage tusb_player: RestoreItem.RaisePoint

tag @s add Raising

# 蘇生先tpエンティティ召喚
execute at @s run summon marker ~ ~ ~ {Tags:[RaiseTP]}

# 蘇生先tp
# 非読み込みチャンク内では @s で呼び出す。
execute as @e[tag=RaiseTP] run function skill:act/white_mage/araise/raise_tp_pos

# ディメンション移動
# この後座標は移動後のものにするので、今後は全て at @s
execute at @s run function skill:act/white_mage/araise/raise_tp_dimension

#タグ削除
tag @s remove Raising

tellraw @s {"translate":"インベントリと位置情報を復元しました。","color":"green"}
function makeup:skill/act/common/restore_item/return
