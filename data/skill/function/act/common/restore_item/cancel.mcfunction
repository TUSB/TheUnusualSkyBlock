#> skill:act/common/restore_item/cancel

tellraw @s {"translate":"リスト・アイテムはキャンセルされました"}

trigger RestoreItem set -1
scoreboard players reset @s RestoreItem
