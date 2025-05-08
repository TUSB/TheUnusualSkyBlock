#> effect:enemy_debuff/electrification/lightning_strike
#
# 敵帯電落雷処理

# 水に接触or雨で空に面していれば強化する
execute if predicate entity:is_in_all_water run say water
execute if predicate entity:in_all_water run return run function effect:enemy_debuff/electrification/lightning_strike2
data remove storage calc: SearchAbove
execute store result storage calc: SearchAbove.Pos int 1 run data get entity @s Pos[1]
tellraw @a {"nbt":"SearchAbove","storage":"calc:"}
execute if predicate main:weather/is_raining run say raining
execute if predicate main:weather/is_raining run function calc:geometry/search_above/
tellraw @a {"nbt":"SearchAbove","storage":"calc:"}
execute if data storage calc: {SearchAbove:{NothingAbove:1b}} run return run function effect:enemy_debuff/electrification/lightning_strike2

data modify storage entity: damage set value {unreasonable:100}
execute as @e[tag=Enemy,distance=..2] run function entity:damage/apply/

execute run function makeup:effect/enemy_debuff/electrification/lightning_strike
