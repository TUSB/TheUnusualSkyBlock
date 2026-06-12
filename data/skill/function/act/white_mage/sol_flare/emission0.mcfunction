#> skill:act/white_mage/sol_flare/emission0
#
# ソルフレア放射 0~2.5s
scoreboard players reset @s SolFlareCharge
attribute @s minecraft:movement_speed modifier remove 536f-6c4-66c-617-265

# ストレージをリセット
data remove storage skill: damage
# ダメージ
execute store result storage skill: damage.physical int 1 run scoreboard players get @s SolFlare
execute positioned ^ ^ ^3 rotated 0 0 as @e[tag=Enemy,distance=..3] run function skill:damage/apply/
# 火だるまを付与
execute positioned ^ ^ ^3 rotated 0 0 as @e[tag=Enemy,distance=..3] run function effect:enemy_debuff/burn/apply

# 演出
execute positioned ^ ^ ^3 rotated 0 0 run function makeup:skill/act/white_mage/sol_flare/emission0
