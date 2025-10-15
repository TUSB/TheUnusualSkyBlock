clear @s #item:all{tutorial_item:true}
give @s wooden_pickaxe{tutorial_item:true}
give @s stone_pickaxe{tutorial_item:true}
give @s iron_pickaxe{tutorial_item:true}
give @s golden_pickaxe{tutorial_item:true}
give @s diamond_pickaxe{tutorial_item:true}
give @s netherite_pickaxe{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/gold_nugget/double_break/8
execute as @e[type=item,distance=0] run data merge entity @s {PickupDelay:0s,Item:{tag:{tutorial_item:true},Count:6b}}