#> makeup:effect/enemy_debuff/curse/finalize
#
# 呪蝕死亡演出
playsound entity.zoglin.hurt hostile @a ~ ~ ~ 1 0.5
particle minecraft:sculk_charge{roll:0} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
particle minecraft:block{block_state:{Name:"minecraft:sculk_sensor",Properties:{}}} ~ ~1 ~ 0 0 0 1 30
particle minecraft:sculk_soul ~ ~ ~ 0.3 0.3 0.5 0.1 10 force
