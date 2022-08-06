
particle minecraft:block minecraft:ice ~ ~ ~ 0.3 0.3 0.3 1 10 force
execute as @a[distance=..32] run stopsound @s master minecraft:block.glass.break
execute as @a[distance=..32] at @s run playsound minecraft:block.glass.break master @s ~ ~64 ~ 8 0.5
