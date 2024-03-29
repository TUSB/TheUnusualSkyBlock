#AttributeModifiersを作成
data modify storage item: Enchant.AttributeModifiers set value []
execute unless data storage item: Items[{Slot:4b}].tag.AttributeModifiers run function settings:item/enchant/default_attributes/
execute if predicate settings:item/enchant/item/shield run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.luck",Name:"エンチャント",Operation:0,UUID:[I;11,0,2,3],Slot:"mainhand"}
execute if predicate settings:item/enchant/item/shield run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.luck",Name:"エンチャント",Operation:0,UUID:[I;12,0,2,3],Slot:"offhand"}
execute if predicate settings:item/enchant/item/helmet run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.luck",Name:"エンチャント",Operation:0,UUID:[I;21,0,2,3],Slot:"head"}
execute if predicate settings:item/enchant/item/chestplate run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.luck",Name:"エンチャント",Operation:0,UUID:[I;22,0,2,3],Slot:"chest"}
execute if predicate settings:item/enchant/item/leggings run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.luck",Name:"エンチャント",Operation:0,UUID:[I;23,0,2,3],Slot:"legs"}
execute if predicate settings:item/enchant/item/boots run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.luck",Name:"エンチャント",Operation:0,UUID:[I;24,0,2,3],Slot:"feet"}
#Amountを取得、代入
data modify storage item: Enchant.Level set from storage item: Enchant.Item.tag.Enchantments[0].lvl
function settings:item/enchant/value/mana
execute store result storage item: Enchant.AttributeModifiers[{Name:"エンチャント"}].Amount int 1 run function item:enchant/enchant/get_value
data modify storage item: Items[{Slot:4b}].tag.AttributeModifiers append from storage item: Enchant.AttributeModifiers[]
