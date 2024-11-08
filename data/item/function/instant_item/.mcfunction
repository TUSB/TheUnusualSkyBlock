#> item:instant_item/
data modify storage item: InstantInventory set from entity @s Inventory

#RecoverHP
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect.RecoverHP run function item:instant_item/recover_hp
#RecoverMP
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect.RecoverMP run function item:instant_item/recover_mp
#RecoverHB
execute if data storage item: InstantInventory[].components."minecraft:custom_data".InstantEffect.RecoverHB run function item:instant_item/recover_hb

data remove storage item: InstantInventory
clear @s *[minecraft:custom_data~{InstantEffect:{}}]
#トリガー解除
advancement revoke @s only item:instant_item
