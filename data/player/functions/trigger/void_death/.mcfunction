### 奈落死：Y-64以下、voidディメンション、呪詛
#インベントリをoh_my_datに保存、消去
function oh_my_dat:please
data modify storage item: Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems
execute as @e[type=item,distance=..10,nbt={Age:0s}] run data modify storage item: Items append from entity @s Item
execute if data storage item: Items[3000] run function player:trigger/void_death/delete_loop
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems set from storage item: Items
kill @e[type=item,distance=..10,nbt={Age:0s}]

#TODO: カジュアルモード keepInventory=trueのとき
#clear @s
