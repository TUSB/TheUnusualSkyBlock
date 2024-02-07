#Y0～255に収まるよう3通りに分岐
execute as @a[tag=InteractGrindstone] at @s if entity @s[y=-8,dy=10] run function item:grindstone/y0_2
execute as @a[tag=InteractGrindstone] at @s if entity @s[y=3,dy=311] run function item:grindstone/y3_313
execute as @a[tag=InteractGrindstone] at @s if entity @s[y=314,dy=10] run function item:grindstone/y314_319
tag @a[tag=InteractGrindstone] remove InteractGrindstone
