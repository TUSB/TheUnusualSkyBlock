
### クリスタル共通パーティクル&サウンド

execute rotated ~30 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~90 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~150 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~-150 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~-90 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~-30 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]

execute if entity @s[tag=Particle] run playsound minecraft:entity.drowned.ambient_water master @a ~ ~ ~ 0.15 0.5
