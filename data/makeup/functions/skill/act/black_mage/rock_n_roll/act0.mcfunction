
execute as @e[tag=Initializing] positioned as @s run particle minecraft:block minecraft:granite ~ ~1.2 ~ 0.8 0.8 0.8 1 50 force
execute as @e[tag=Initializing] positioned as @s run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 1 2 force
execute as @e[tag=Initializing] positioned as @s run particle minecraft:angry_villager ~ ~ ~ 0.6 0.6 0.6 1 5 force
execute as @e[tag=Initializing] positioned as @s run particle minecraft:dragon_breath ~ ~0.1 ~ 0 0 0 0.08 15 force
playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 1 1
