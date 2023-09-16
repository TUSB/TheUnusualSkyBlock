#Function
particle item ice ~ ~ ~ 1.25 0.1 1.25 0.75 40 force @a[distance=..32,tag=ShowParticles]
particle end_rod ~ ~ ~ 1.25 0.1 1.25 0.75 40 force @a[distance=..32,tag=ShowParticles]
particle dust 1 1 100000000 1 ~ ~ ~ 1.25 0.25 1.25 1 100 force @a[distance=..32,tag=ShowParticles]
playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.8 2 0
playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.8 1.8 0
playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.8 1.6 0
playsound block.glass.break hostile @a[distance=..32] ~ ~ ~ 0.8 1.4 0
playsound ambient.crimson_forest.shine_3 hostile @a[distance=..32] ~ ~ ~ 0.7 2 0
playsound ambient.crimson_forest.shine_3 hostile @a[distance=..32] ~ ~ ~ 0.7 1.95 0
playsound minecraft:item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2 0
execute store result storage mob_data: Call.Damage int 1 run scoreboard players get @s Attack
execute as @e[distance=..2.5,predicate=entity:friendly] if entity @s[type=player] run function settings:enemy/global/sky/shoot/sherbet_eye/dry_end1
execute as @e[distance=..2.5,predicate=entity:friendly] unless entity @s[type=player] run function settings:enemy/global/sky/shoot/sherbet_eye/dry_end2
