#> makeup:skill/act/black_mage/meteor_strike/tick_damage
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 0 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.3 50 force
particle minecraft:dust{color:[100f,0f,-1f],scale:4.0f} ~ ~ ~ 3 2.5 3 1 20 force
playsound minecraft:entity.generic.explode player @a[distance=..32] ~ ~ ~ 3 1.1
