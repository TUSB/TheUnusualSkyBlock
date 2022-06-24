
function oh_my_dat:plase
data modify storage tusb_player: RestoreItemData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData

execute if score @s RestoreItem matches 1 run function skill:act/common/restore_item/save
execute if score @s RestoreItem matches 2 run function skill:act/common/restore_item/return/

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData set from storage tusb_player: RestoreItemData

schedule clear skill:act/common/restore_item/schedule/select
schedule clear skill:act/common/restore_item/schedule/select_end
tag @a remove SelectRestoreItem
