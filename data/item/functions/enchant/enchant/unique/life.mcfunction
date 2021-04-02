#AttributeModifiersを作成
execute unless data storage item: Items[{Slot:4b}].tag.AttributeModifiers run data modify storage item: Items[{Slot:4b}].tag.AttributeModifiers set value []
execute if predicate settings:item/enchant/item/shield run data modify storage item: Enchant.AttributeModifiers set value [{AttributeName:"generic.max_health",Name:"エンチャント",Operation:0,UUID:[I;11,0,100,3],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"エンチャント",Operation:0,UUID:[I;12,0,100,3],Slot:"offhand"}]
execute if predicate settings:item/enchant/item/helmet run data modify storage item: Enchant.AttributeModifiers set value [{AttributeName:"generic.max_health",Name:"エンチャント",Operation:0,UUID:[I;21,0,100,3],Slot:"helmet"}]
execute if predicate settings:item/enchant/item/chestplate run data modify storage item: Enchant.AttributeModifiers set value [{AttributeName:"generic.max_health",Name:"エンチャント",Operation:0,UUID:[I;22,0,100,3],Slot:"chest"}]
execute if predicate settings:item/enchant/item/leggings run data modify storage item: Enchant.AttributeModifiers set value [{AttributeName:"generic.max_health",Name:"エンチャント",Operation:0,UUID:[I;23,0,100,3],Slot:"legs"}]
execute if predicate settings:item/enchant/item/boots run data modify storage item: Enchant.AttributeModifiers set value [{AttributeName:"generic.max_health",Name:"エンチャント",Operation:0,UUID:[I;24,0,100,3],Slot:"feet"}]
#Amountを取得、代入
data modify storage item: Enchant.Level set from storage item: Enchant.Item.tag.Enchantments[0].lvl
function settings:item/enchant/value/life
execute store result storage item: Enchant.AttributeModifiers[].Amount double 1 run function item:enchant/enchant/get_value
data modify storage item: Items[{Slot:4b}].tag.AttributeModifiers append from storage item: Enchant.AttributeModifiers[]
