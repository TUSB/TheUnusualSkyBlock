execute positioned as @a[distance=..7,limit=1,sort=nearest] run loot spawn ~ ~ ~ loot item:item/carrot_on_a_stick/tusb_publicity_flyer
execute positioned as @a[distance=..7,limit=1,sort=nearest] run data merge entity @e[type=item,distance=0,limit=1] {PickupDelay:0s,Item:{tag:{tutorial_item:true}}}
