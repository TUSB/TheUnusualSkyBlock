
data modify storage tusb_player: RestoreItemData append value {Items:[],RaisePoint:{Pos:[],Rotation:[],Dimension:""}}
data modify storage tusb_player: RestoreItemData[-1].Items set from entity @s Inventory
clear @s
tag @s add HasRestoreItems

data modify storage tusb_player: RestoreItemData[-1].RaisePoint.Pos set from entity @s Pos
data modify storage tusb_player: RestoreItemData[-1].RaisePoint.Rotation set from entity @s Rotation
data modify storage tusb_player: RestoreItemData[-1].RaisePoint.Dimension set from entity @s Dimension

tellraw @s {"translate":"インベントリと位置情報を保存しました。","color":"green"}
function makeup:skill/act/common/restore_item/save
