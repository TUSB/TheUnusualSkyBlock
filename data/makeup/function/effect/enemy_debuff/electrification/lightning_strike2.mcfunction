#> makeup:effect/enemy_debuff/Electrification/lightning_strike2
#
# 敵帯電強化落雷演出
say 2
particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~3 ~ 0 0.5 0 1 10 force
particle electric_spark ~ ~0.5 ~ 0.3 0.5 0.3 1 10 force
particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~ ~ 1 0 1 1 40 force
playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.3 1
