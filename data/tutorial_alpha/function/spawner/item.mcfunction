#> tutorial_alpha:spawner/item

clear @s *[custom_data~{tutorial_item:true}]
give @s wooden_pickaxe[custom_data={tutorial_item:true}]
give @s stone_pickaxe[custom_data={tutorial_item:true}]
give @s iron_pickaxe[custom_data={tutorial_item:true}]
give @s golden_pickaxe[custom_data={tutorial_item:true}]
give @s diamond_pickaxe[custom_data={tutorial_item:true}]
give @s netherite_pickaxe[custom_data={tutorial_item:true}]
loot spawn ~ ~ ~ loot item:item/gold_nugget/double_break/8
execute as @e[type=item,distance=0] run data merge entity @s {PickupDelay:0s,Item:{components:{"minecraft:custom_data":{tutorial_item:true}},count:6}}
