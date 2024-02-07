#> player:death_item_drop/
#
# 死亡時のアイテムドロップ処理
#
# @within function player:trigger/death

# ピクニック/デバッグ : KeepInventory
# カジュアル : KeepInventoryだが墓をドロップ
# エキスパート : NotKeepInventory
# なお呪詛の場合は異なる処理となる

# ピクニック処理(呪詛)
    execute if data storage main: difficult{world:"picnic"} if entity @s[tag=Curse,tag=!Raise] run function player:death_item_drop/casual_curse

# カジュアル処理(Not 呪詛)
    execute if data storage main: difficult{world:"casual"} if entity @s[tag=!Curse,tag=!Raise] run function player:death_item_drop/casual

# カジュアル処理(呪詛)
    execute if data storage main: difficult{world:"casual"} if entity @s[tag=Curse,tag=!Raise] run function player:death_item_drop/casual_curse

# エキスパート(呪詛)
    execute if data storage main: difficult{world:"expert"} if entity @s[tag=Curse,tag=!Raise] run function player:death_item_drop/expert_curse