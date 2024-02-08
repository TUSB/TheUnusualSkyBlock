#Function
execute as @a[predicate=entity:player,distance=..0.5,sort=nearest,limit=1] unless score @s DoomCount matches 1..31 run tag @s add NowTarget
effect give @a[tag=NowTarget,distance=..0.5] invisibility 10 1 true
playsound minecraft:entity.wither.spawn hostile @a[tag=NowTarget,distance=..0.5] ~ ~ ~ 0.5 1.75
tag @a[tag=NowTarget,distance=..0.5] remove NowTarget
