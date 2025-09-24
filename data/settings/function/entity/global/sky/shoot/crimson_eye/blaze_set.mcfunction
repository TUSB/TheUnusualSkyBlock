#Function
# 追尾線を確定させるためここでTP
    execute unless entity @a[predicate=entity:player,distance=..16] run data modify storage mob_data: Tags append value "Garbage"
    execute if entity @a[predicate=entity:player,distance=..16] facing entity @a[predicate=entity:player,distance=..16,sort=nearest,limit=1] eyes run tp @s ^ ^ ^ ~ ~
    playsound block.anvil.land hostile @a[distance=..16] ~ ~ ~ 0.75 2 0.1
    playsound block.anvil.land hostile @a[distance=..16] ~ ~ ~ 0.75 1.995 0.1
