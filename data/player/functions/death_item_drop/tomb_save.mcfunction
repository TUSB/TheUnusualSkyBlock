#> player:death_item_drop/tomb_save
#
# 墓をドロップさせる
#
# @within function player:death_item_drop/casual

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from storage item: Item[0]
data remove storage item: Item[0]
execute if data storage item: Item[0] run function player:death_item_drop/tomb_save