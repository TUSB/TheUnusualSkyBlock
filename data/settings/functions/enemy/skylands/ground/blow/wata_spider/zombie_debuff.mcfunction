#Function
execute as @a[predicate=entity:player,distance=..0.5,sort=nearest,limit=1] run tag @s add NowTarget
effect give @a[tag=NowTarget,distance=..0.5] mining_fatigue 5 2
effect give @a[tag=NowTarget,distance=..0.5] slowness 5 2
effect give @a[tag=NowTarget,distance=..0.5] poison 5 6
tag @a[tag=NowTarget,distance=..4] remove NowTarget
