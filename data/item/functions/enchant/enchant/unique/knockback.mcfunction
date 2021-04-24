#剣ならKnockback 弓ならPunchを付与
execute if predicate settings:item/enchant/item/sword run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:knockback"
execute if predicate settings:item/enchant/item/bow run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:punch"
