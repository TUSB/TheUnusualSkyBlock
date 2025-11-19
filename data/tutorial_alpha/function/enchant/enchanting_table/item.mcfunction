#> tutorial_alpha:enchant/enchanting_table/item

clear @s *[custom_data~{tutorial_item:true}]
give @s iron_sword[custom_data={tutorial_item:true}]
loot spawn ~ ~ ~ loot item:item/gold_nugget/element/1
give @s iron_pickaxe[custom_data={tutorial_item:true}]
loot spawn ~ ~ ~ loot item:item/gold_nugget/double_break/1
give @s iron_helmet[custom_data={tutorial_item:true}]
loot spawn ~ ~ ~ loot item:item/gold_nugget/dragon_scale/1
give @s carrot_on_a_stick[custom_data={tutorial_item:true}]
loot spawn ~ ~ ~ loot item:item/gold_nugget/mystery/2
execute as @e[type=item,distance=0] run data merge entity @s {PickupDelay:0s,Item:{components:{"minecraft:custom_data":{tutorial_item:true}}}}
