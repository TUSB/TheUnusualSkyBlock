clear @s #item:all{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/gold_nugget/mystery/1
loot spawn ~ ~ ~ loot item:item/gold_nugget/mystery/1
loot spawn ~ ~ ~ loot item:item/gold_nugget/mystery/1
loot spawn ~ ~ ~ loot item:item/gold_nugget/mystery/1
loot spawn ~ ~ ~ loot item:item/gold_nugget/add_fire/1
loot spawn ~ ~ ~ loot item:item/gold_nugget/add_ice/1
loot spawn ~ ~ ~ loot item:item/gold_nugget/add_lightning/1
execute as @e[type=item,distance=0] run data merge entity @s {PickupDelay:0s,Item:{tag:{tutorial_item:true}}}
