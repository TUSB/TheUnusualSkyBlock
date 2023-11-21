clear @s #item:all{tutorial_item:true}
give @s iron_sword{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/gold_nugget/element/1
give @s iron_pickaxe{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/gold_nugget/double_break/1
give @s iron_helmet{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/gold_nugget/dragon_scale/1
give @s carrot_on_a_stick{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/gold_nugget/mystery/2
execute as @e[type=item,distance=0] run data merge entity @s {PickupDelay:0s,Item:{tag:{tutorial_item:true}}}
