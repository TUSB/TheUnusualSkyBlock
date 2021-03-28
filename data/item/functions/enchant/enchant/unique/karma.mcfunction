#剣ならKnockback 弓ならPunchを付与
execute if predicate settings:item/enchant/item/sword run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:looting"
execute if predicate settings:item/enchant/item/tool run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:fortune"
execute if predicate settings:item/enchant/item/fishing_rod run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:luck_of_the_sea"
