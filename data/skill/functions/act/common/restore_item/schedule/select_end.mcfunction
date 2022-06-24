
tellraw @a[tag=SelectRestoreItem] {"translate":"リスト・アイテムはキャンセルされました"}

schedule clear skill:act/common/restore_item/schedule/select
schedule clear skill:act/common/restore_item/schedule/select_end
tag @a remove SelectRestoreItem
