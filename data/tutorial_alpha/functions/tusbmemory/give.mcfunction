clear @s #item:all{tutorial_item:true}
loot spawn ~ ~ ~ loot item:item/carrot_on_a_stick/tusb_publicity_flyer
data merge entity @e[type=item,distance=0,limit=1] {PickupDelay:0s,Item:{tag:{tutorial_item:true}}}
