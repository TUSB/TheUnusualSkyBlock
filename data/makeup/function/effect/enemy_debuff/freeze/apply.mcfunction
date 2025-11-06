#> makeup:effect/enemy_debuff/freeze/apply
#
# 敵凍結付与演出
particle dust_color_transition{from_color:[0.75,0.75,1.0],to_color:[1.0,1.0,1.0],scale:2} ~ ~ ~ 0.75 0.75 0.75 0 20 force
playsound block.glass.break hostile @a ~ ~ ~ 1 2
