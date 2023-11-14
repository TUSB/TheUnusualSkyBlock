#> player:save_inventory
#
# インベントリの内容を保存する
#
# @within function player:tick

# Oh_My_Datを起動
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryData set from entity @s Inventory