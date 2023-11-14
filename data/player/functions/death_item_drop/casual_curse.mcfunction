#> player:death_item_drop/casual_curse
#
# カジュアル時の呪詛・奈落処理
#
# @within function player:death_item_drop/

#インベントリをoh_my_datに保存、消去
    function oh_my_dat:please
    data modify storage item: Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems
    data modify storage item: Items append from entity @s Inventory
    execute if data storage item: Items[3000] run function player:trigger/void_death/delete_loop
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems set from storage item: Items
    clear @s
    execute if entity @s[tag=Curse] run function makeup:effects/curse/death
    tag @s remove Curse