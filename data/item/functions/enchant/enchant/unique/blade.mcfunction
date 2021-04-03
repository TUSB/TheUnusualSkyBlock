#AttributeModifiersを作成
execute unless data storage item: Items[{Slot:4b}].tag.AttributeModifiers run function settings:item/enchant/default_attributes/
data modify storage item: Enchant.AttributeModifiers append value {AttributeName:"generic.attack_damage",Name:"エンチャント",Operation:0,UUID:[I;11,0,100,2],Slot:"mainhand"}
#Amountを取得、代入
data modify storage item: Enchant.Level set from storage item: Enchant.Item.tag.Enchantments[0].lvl
function settings:item/enchant/value/add_damage
execute store result storage item: Enchant.AttributeModifiers[{Name:"エンチャント"}].Amount double 1 run function item:enchant/enchant/get_value
data modify storage item: Items[{Slot:4b}].tag.AttributeModifiers append from storage item: Enchant.AttributeModifiers[]
