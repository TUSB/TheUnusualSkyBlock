#Function
execute as @a[predicate=entity:player,distance=..3] unless entity @s[tag=Curse] run tag @s add NowTarget
effect give @a[tag=NowTarget,distance=..3] invisibility 10 7 true
playsound minecraft:entity.wither.spawn hostile @a[tag=NowTarget,distance=..3] ~ ~ ~ 0.5 1.75
tag @a[tag=NowTarget,distance=..3] remove NowTarget
