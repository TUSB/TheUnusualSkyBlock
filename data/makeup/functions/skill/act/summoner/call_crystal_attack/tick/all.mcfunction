
### クリスタル共通パーティクル&サウンド

# 赤石愛さんのふわふわコマンド
execute rotated ~9 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^100 rotated as @s rotated ~ 0 positioned ^ ^ ^-100 positioned ~0.5 ~0.5 ~0.5 align xyz positioned 0.0 400.0 ~ facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~ positioned 0.0 0.0 ~ positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 facing 0.0 0.0 100.0 rotated 0 ~-90 positioned 0.0 100.0 0.0 positioned ^ ^ ^-200 rotated 180 ~ positioned ^ ^ ^-200 positioned ~0.5 ~0.5 ~0.5 align xyz positioned 0.0 ~ 200.0 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 facing ~ 0.0 0.0 rotated 0 ~ positioned ~ ~ 0.0 positioned ^ ^ ^100 rotated 180 ~ positioned ^ ^ ^-100 positioned ~0.5 ~0.5 ~0.5 align xyz facing ~ 0.0 0.0 rotated 0 ~ positioned as @s positioned ^ ^ ^0.35 rotated 180 ~ positioned ^ ^ ^0.35 rotated as @s run tp @s ~ ~ ~ ~9 ~ 

execute rotated ~30 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
# execute rotated ~90 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~150 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
# execute rotated ~-150 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
execute rotated ~-90 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]
# execute rotated ~-30 0 run particle minecraft:dust 255 255 255 0.75 ^ ^1.5 ^1 0 1.25 0 0 1 force @a[tag=ShowParticles]

execute if entity @s[tag=Particle] run playsound minecraft:entity.drowned.ambient_water master @a ~ ~ ~ 0.15 0.5
