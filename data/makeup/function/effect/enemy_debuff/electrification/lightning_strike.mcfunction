#> makeup:effect/enemy_debuff/Electrification/lightning_strike
#
# 敵帯電落雷演出

particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~2 ~ 0 0.5 0 1 10 force
particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~ ~ 0.5 0 0.5 1 20 force
playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
