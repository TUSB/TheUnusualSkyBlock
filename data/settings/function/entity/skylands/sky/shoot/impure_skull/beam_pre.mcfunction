#Function
execute facing entity @a[predicate=entity:player,sort=nearest,limit=1] eyes run tp @s ^ ^ ^ ~ ~
data modify entity @s NoAI set value true
