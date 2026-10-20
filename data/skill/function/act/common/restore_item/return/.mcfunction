
data modify storage tusb_player: RestoreItem set from storage tusb_player: RestoreItemData[-1]
data remove storage tusb_player: RestoreItem.Items[].Slot
function skill:act/common/restore_item/return/loop
data remove storage tusb_player: RestoreItemData[-1]

execute unless data storage tusb_player: RestoreItemData[-1] run tag @s remove HasRestoreItems

tellraw @s {"translate":"アイテムを返却しました。","color":"green"}
function makeup:skill/act/common/restore_item/return
