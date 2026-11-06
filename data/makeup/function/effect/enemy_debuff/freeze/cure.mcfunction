#> makeup:effect/enemy_debuff/freeze/cure
#
# 敵凍結解除演出
particle minecraft:falling_water ~ ~ ~ 0.75 0.75 0.75 1 20 force
particle minecraft:item{item:{id:packed_ice}} ~ ~ ~ 0.75 0.75 0.75 0 20 force
playsound block.glass.break hostile @a ~ ~ ~ 1 0.86
