#MPを回復
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:魔吸"}].lvl
function settings:item/enchant/value/mana_leech
execute store result score _ _ run function item:enchant/enchant/get_value
#演出
function makeup:skill/enchant/mana_leech
