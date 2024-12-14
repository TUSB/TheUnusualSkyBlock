#> player:death_item_drop/
#
# 死亡時のアイテムドロップ処理
#
# @within function player:trigger/death

# ピクニック/デバッグ : KeepInventory
# カジュアル : KeepInventoryだが墓をドロップ
# エキスパート : NotKeepInventory
# なお呪詛の場合は異なる処理となる

# レイズなら中断
    execute if entity @s[tag=Raise] run return 0

# 呪詛のときの処理
    execute if entity @s[tag=Curse] run return run function player:trigger/void_death/curse

# カジュアル処理
    execute if data storage main: difficult{world:"casual"} if entity @s[tag=!Curse] run return run function player:death_item_drop/casual
