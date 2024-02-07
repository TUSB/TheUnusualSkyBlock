#Function
execute as @a[predicate=entity:player,distance=..3.5] run tag @s add NowTarget
effect give @a[tag=NowTarget,distance=..3.5] mining_fatigue 5 1
effect give @a[tag=NowTarget,distance=..3.5] slowness 5 1
effect give @a[tag=NowTarget,distance=..3.5] poison 10 4
tag @a[tag=NowTarget,distance=..3.5] remove NowTarget
