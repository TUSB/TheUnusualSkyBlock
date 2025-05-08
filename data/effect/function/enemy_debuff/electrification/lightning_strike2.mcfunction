#> effect:enemy_debuff/electrification/lightning_strike2
#
# 敵帯電強化落雷処理

data modify storage entity: damage set value {unreasonable:500}
execute as @e[tag=Enemy,distance=..3] run function entity:damage/apply/

execute run function makeup:effect/enemy_debuff/electrification/lightning_strike2
