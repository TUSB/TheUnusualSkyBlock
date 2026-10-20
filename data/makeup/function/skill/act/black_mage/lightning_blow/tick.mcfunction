#> makeup:skill/act/black_mage/lightning_blow/tick

# ライトニングブロー演出用

execute if score @s LightningBlow matches ..2500 rotated ~ 0 positioned ^-0.3 ^1.2 ^0.4 run particle minecraft:dust{color:[1f,1f,0f],scale:1.0f} ~ ~ ~ 0.06 0.3 0.06 0 2 force @a[tag=ShowParticles]
execute if score @s LightningBlow matches 2501..5000 rotated ~ 0 positioned ^-0.3 ^1.4 ^0.4 run particle minecraft:dust{color:[1.3f,1f,0f],scale:1.0f} ~ ~ ~ 0.06 0.3 0.06 0 2 force @a[tag=ShowParticles]
execute if score @s LightningBlow matches 5001.. rotated ~ 0 positioned ^-0.3 ^1.2 ^0.4 run particle minecraft:dust{color:[1.3f,1f,0f],scale:1.0f} ~ ~ ~ 0.06 0.3 0.06 0 2 force @a[tag=ShowParticles]
execute if score @s LightningBlow matches 5001.. rotated ~ 0 positioned ^-0.3 ^1.2 ^0.4 run particle minecraft:dust{color:[0.8f,0f,1f],scale:0.6f} ~ ~ ~ 0.15 0.4 0.15 0 2 force @a[tag=ShowParticles]
