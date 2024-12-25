execute store result score _ _ run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:波動"}].lvl

#演出
function makeup:skill/enchant/elemental_damage/wave_of_element

execute if score _ _ matches 1 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..2] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 2 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..3] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 3 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..4] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 4 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..5] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 5 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..6] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 6 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..7] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 7 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..8] run function skill:enchant/wave_of_element/apply
execute if score _ _ matches 8 as @e[tag=Enemy,nbt={AbsorptionAmount:1000000f},distance=..9] run function skill:enchant/wave_of_element/apply
