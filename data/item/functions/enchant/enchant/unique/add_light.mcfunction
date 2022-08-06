#Amountを取得、代入
execute store result storage item: Enchant.Level int 1 run data get storage item: Enchant.Item.tag.Enchantments[{id:"tusb:光"}].lvl
function settings:item/enchant/value/add_damage
execute store result storage item: Items[{Slot:4b}].tag.AddDamage.Light int 1 run function item:enchant/enchant/get_value
