#HPを回復
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:血吸"}].lvl
function settings:item/enchant/value/life_leech
execute store result score @s HealthHealing run function item:enchant/enchant/get_value
#演出
function makeup:skill/enchant/life_leech
