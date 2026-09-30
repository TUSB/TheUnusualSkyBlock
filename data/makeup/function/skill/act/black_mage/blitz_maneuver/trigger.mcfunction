#> makeup:skill/act/black_mage/blitz_maneuver/trigger
#
# ブリッツマニューバトリガー演出
playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:item.trident.riptide_3 player @a[distance=..16] ~ ~ ~ 1 1.1
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 1 2
execute as @e[limit=5,sort=random] rotated as @s rotated ~ 0 run particle minecraft:dust_color_transition{from_color:[0.75,0.75,1.0],to_color:[0.0,0.0,1.0],scale:2} ^ ^0.5 ^3 2 0 0 1 10 force
execute as @e[limit=5,sort=random] rotated as @s rotated ~ 0 run particle minecraft:dust_color_transition{from_color:[0.75,0.75,1.0],to_color:[0.0,0.0,1.0],scale:2} ^ ^2 ^3 0 2 0 1 10 force
execute as @e[limit=5,sort=random] rotated as @s rotated ~ 0 run particle minecraft:dust_color_transition{from_color:[0.75,0.75,1.0],to_color:[0.0,0.0,1.0],scale:2} ^ ^0.5 ^3 0 0 2 1 10 force
