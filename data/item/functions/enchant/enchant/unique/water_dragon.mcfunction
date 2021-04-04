#頭ならRespiration 脚ならAquaAffinity 足ならDepthStriderを付与
execute if predicate settings:item/enchant/item/helmet run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:respiration"
execute if predicate settings:item/enchant/item/leggings run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:aqua_affinity"
execute if predicate settings:item/enchant/item/boots run data modify storage item: Enchant.Item.tag.Enchantments[0].id set value "minecraft:depth_strider"
