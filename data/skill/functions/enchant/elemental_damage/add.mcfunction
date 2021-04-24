#Fire
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:炎"}].lvl
function settings:item/enchant/value/add_damage
execute store result score _ ElementFire run function item:enchant/enchant/get_value
#Cold
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:氷"}].lvl
function settings:item/enchant/value/add_damage
execute store result score _ ElementCold run function item:enchant/enchant/get_value
#Lightning
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:雷"}].lvl
function settings:item/enchant/value/add_damage
execute store result score _ ElementLightning run function item:enchant/enchant/get_value
#Light
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:光"}].lvl
function settings:item/enchant/value/add_damage
execute store result score _ ElementLight run function item:enchant/enchant/get_value
#Dark
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:闇"}].lvl
function settings:item/enchant/value/add_damage
execute store result score _ ElementDark run function item:enchant/enchant/get_value
