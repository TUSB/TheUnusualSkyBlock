#AttributeModifiersを作成
data modify storage item: Enchant.AttributeModifiers set value []
execute unless data storage item: Items[{Slot:4b}].tag.AttributeModifiers run function settings:item/enchant/default_attributes/
execute if predicate settings:item/enchant/item/shield run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.movement_speed",Name:"エンチャント",Operation:1,UUID:[I;11,0,2,50],Slot:"mainhand"}
execute if predicate settings:item/enchant/item/shield run data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.movement_speed",Name:"エンチャント",Operation:1,UUID:[I;12,0,2,50],Slot:"offhand"}
#Amountを取得、代入
data modify storage item: Enchant.Level set from storage item: Enchant.Item.tag.Enchantments[0].lvl
function settings:item/enchant/value/speed
execute store result storage item: Enchant.AttributeModifiers[{Name:"エンチャント"}].Amount double 0.01 run function item:enchant/enchant/get_value
data modify storage item: Items[{Slot:4b}].tag.AttributeModifiers append from storage item: Enchant.AttributeModifiers[]
