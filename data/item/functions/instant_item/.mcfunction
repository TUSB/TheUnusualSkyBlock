data modify storage item: Inventory set from entity @s Inventory

#RecoverHP
execute if data storage item: Inventory[].tag.InstantEffect.RecoverHP run function item:instant_item/recover_hp
#RecoverMP
execute if data storage item: Inventory[].tag.InstantEffect.RecoverMP run function item:instant_item/recover_mp
#RecoverBP
execute if data storage item: Inventory[].tag.InstantEffect.RecoverBP run function item:instant_item/recover_bp

data remove storage item: Inventory
clear @s mushroom_stew{InstantEffect:{}}
#トリガー解除
advancement revoke @s only item:instant_item
