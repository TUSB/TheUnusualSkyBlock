# ピクニックのとき、生前持っていたアイテムはその場に返却
data modify storage item: Items set from entity @s Inventory
data remove storage item: Items[].Slot
function skill:act/common/restore_item/restore/picnic/loop
