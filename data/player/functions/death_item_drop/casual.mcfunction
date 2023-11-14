#> player:death_item_drop/casual
#
# 墓処理
#
# @within function player:death_item_drop/

# 墓の中に墓は入れません(ドロップさせる)
     data modify storage item: Items set from entity @s Inventory
     data modify storage item: Item append from storage item: Items[{tag:{Tomb:1b}}]
     execute if data storage item: Item[0] run function player:death_item_drop/tomb_drop
     clear @s stone_sword{Tomb:1b}

# 墓をドロップして内部に情報を書き入れる
     data modify storage item: Items set from entity @s Inventory
     execute if data storage item: Items[0] run function player:death_item_drop/tomb