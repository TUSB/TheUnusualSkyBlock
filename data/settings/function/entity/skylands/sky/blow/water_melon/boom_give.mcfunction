#Function
execute at @a[predicate=entity:player,distance=..0.5,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot item:item/glistering_melon_slice/boom_melon_slice
execute at @a[predicate=entity:player,distance=..0.5,sort=nearest,limit=1] run data merge entity @n[type=item,distance=0] {PickupDelay:0s}
