#> player:death_item_drop/tomb_drop
#
# 墓をドロップさせる
#
# @within function player:death_item_drop/tomb_save

# Oh_my_dat 起動
    function #oh_my_dat:please
    data modify storage item: Item set value []
    data modify storage item: Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory
    function player:death_item_drop/tomb_drop_loop
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory
    execute on passengers run kill @s
    kill @s
