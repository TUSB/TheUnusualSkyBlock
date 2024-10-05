data modify storage item: InstantInventory set from entity @s Inventory

#RecoverHP
execute if data storage item: InstantInventory[].tag.InstantEffect.RecoverHP run function item:instant_item/recover_hp
#RecoverMP
execute if data storage item: InstantInventory[].tag.InstantEffect.RecoverMP run function item:instant_item/recover_mp
#RecoverHB
execute if data storage item: InstantInventory[].tag.InstantEffect.RecoverHB run function item:instant_item/recover_hb

data remove storage item: InstantInventory
clear @s mushroom_stew{InstantEffect:{}}
clear @s #item:stained_glass_pane{InstantEffect:{}}
#トリガー解除
advancement revoke @s only item:instant_item
