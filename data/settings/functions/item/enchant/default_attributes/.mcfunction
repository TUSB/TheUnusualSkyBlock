#AttributeModifiersを作成
data modify storage item: Enchant.AttributeModifiers set value []
#Default Attribute有り
execute if predicate settings:item/enchant/item/sword run function settings:item/enchant/default_attributes/sword
execute if predicate settings:item/enchant/item/trident run function settings:item/enchant/default_attributes/trident
execute if predicate settings:item/enchant/item/axe run function settings:item/enchant/default_attributes/axe
execute if predicate settings:item/enchant/item/tool run function settings:item/enchant/default_attributes/tool
execute if predicate settings:item/enchant/item/helmet run function settings:item/enchant/default_attributes/helmet
execute if predicate settings:item/enchant/item/chestplate run function settings:item/enchant/default_attributes/chestplate
execute if predicate settings:item/enchant/item/leggings run function settings:item/enchant/default_attributes/leggings
execute if predicate settings:item/enchant/item/boots run function settings:item/enchant/default_attributes/boots
