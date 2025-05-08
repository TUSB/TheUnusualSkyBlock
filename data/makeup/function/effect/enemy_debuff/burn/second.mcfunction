#> makeup:effect/enemy_debuff/burn/second
#
# 敵火だるま毎秒演出

particle minecraft:dust{color:[100000000,2,0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 1 15 force
particle flame ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
playsound minecraft:entity.player.hurt_on_fire hostile @a ~ ~ ~ 1 1
