#> makeup:skill/act/black_mage/meteor_strike/explosion
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 3 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.3 50 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.6 50 force
particle minecraft:flame ~ ~ ~ 0 0 0 1.0 50 force
particle minecraft:dust{color:[100f,0f,-1f],scale:4.0f} ~ ~ ~ 3.5 3 3.5 1 40 force
playsound minecraft:entity.generic.explode player @a[distance=..32] ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode player @a[distance=..32] ~ ~ ~ 2 0.7
playsound minecraft:entity.generic.explode player @a[distance=..32] ~ ~ ~ 3 0.9
