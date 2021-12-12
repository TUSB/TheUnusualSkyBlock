### 奈落死：Y-64以下、voidディメンション、呪詛
#インベントリをoh_my_datに保存、消去
function oh_my_dat:please
execute as @e[type=item,distance=..10,nbt={Age:0s}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems append from entity @s Item
kill @e[type=item,distance=..10,nbt={Age:0s}]
clear @s
