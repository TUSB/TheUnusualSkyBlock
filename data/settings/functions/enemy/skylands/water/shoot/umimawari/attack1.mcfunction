#Function
execute as @a[predicate=entity:player,distance=..1,sort=nearest,limit=1] run tag @s add NowTarget
data modify storage mob_data: Call.Name set from entity @s CustomName
execute at @s if block ~ ~ ~ #block:no_collision as @a[tag=NowTarget] run function settings:enemy/skylands/water/shoot/umimawari/attack2
tag @a[tag=NowTarget] remove NowTarget
