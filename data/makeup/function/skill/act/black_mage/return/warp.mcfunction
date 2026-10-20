#> makeup:skill/act/black_mage/return/warp

execute positioned as @s run playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 1
execute positioned as @s run playsound minecraft:entity.firework_rocket.launch player @a[distance=..16] ~ ~ ~ 1 0
execute positioned as @s run particle minecraft:firework ~ ~6 ~ 0.2 5 0.2 0 50 force
