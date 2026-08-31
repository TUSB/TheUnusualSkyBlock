#> makeup:skill/act/black_mage/eclipse_flame/hit
#
# エクリプスフレイム着弾時演出
particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,1],scale:2} ~ ~ ~ 0.5 0.5 0.5 2 5 force @a[tag=ShowParticles]
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 100 force
playsound minecraft:entity.wither.shoot player @a[distance=..32] ~ ~ ~ 3 0.6
playsound minecraft:entity.generic.explode player @a[distance=..32] ~ ~ ~ 3 1
