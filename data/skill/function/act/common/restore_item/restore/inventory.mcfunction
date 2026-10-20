
execute store result score _ _ run data get storage tusb_player: RestoreItem.Items[-1].Slot
execute store result storage tusb_player: RestoreItem.Items[-1].Slot byte 1 run scoreboard players remove _ _ 9
data modify block 2 2 2 Items append from storage tusb_player: RestoreItem.Items[-1]
data remove storage tusb_player: RestoreItem.Items[-1]

execute if data storage tusb_player: RestoreItem.Items[-1] run function skill:act/common/restore_item/restore/inventory
