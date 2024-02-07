#Function
execute as @a[distance=..1.5,sort=nearest,limit=1] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run loot replace entity @s weapon.offhand loot item:item/poppy/tippy_poppy
