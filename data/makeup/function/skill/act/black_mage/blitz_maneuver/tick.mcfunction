#> makeup:skill/act/black_mage/blitz_maneuver/tick
#
# ブリッツマニューバ毎tick演出
execute rotated as @e[limit=1,sort=random] rotated ~ 0 run particle minecraft:dust_color_transition{from_color:[1.0,1.0,0.0],to_color:[0.0,1.0,0.0],scale:1.5} ^ ^0.2 ^2.5 1 0 0 1 4 force @a[tag=ShowParticles]
execute rotated as @e[limit=1,sort=random] rotated ~ 0 run particle minecraft:dust_color_transition{from_color:[1.0,1.0,0.0],to_color:[0.0,1.0,0.0],scale:1.5} ^ ^0.2 ^2.5 0 0 1 1 4 force @a[tag=ShowParticles]
