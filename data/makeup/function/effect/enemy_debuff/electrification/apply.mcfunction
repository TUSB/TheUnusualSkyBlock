#> makeup:effect/enemy_debuff/Electrification/apply
#
# 敵帯電付与演出

particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 force
playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 2
