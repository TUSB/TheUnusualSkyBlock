clear @s #item:all{tutorial_item:true}
give @s carrot_on_a_stick{tutorial_item:true}
give @s carrot_on_a_stick{tutorial_item:true}
give @s carrot_on_a_stick{tutorial_item:true}
give @s stone_sword{tutorial_item:true}
give @s stone_sword{tutorial_item:true}
give @s stone_sword{tutorial_item:true}
give @s stone_axe{tutorial_item:true}
give @s shield{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/carrot_on_a_stick/ether
data merge entity @e[type=item,distance=0,limit=1] {PickupDelay:0s,Item:{tag:{tutorial_item:true}}}
