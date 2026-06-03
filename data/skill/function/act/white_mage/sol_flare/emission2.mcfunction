#> skill:act/white_mage/sol_flare/emission2
#
# ソルフレア放射 5~10s
scoreboard players reset @s SolFlareCharge
attribute @s minecraft:movement_speed modifier remove 536f-6c4-66c-617-265

# ダメージ
execute store result storage skill: damage.magic int 1 run scoreboard players get @s SolFlare
execute positioned ^ ^ ^5 rotated 0 0 as @e[tag=Enemy,distance=..5] run function skill:damage/apply/
# 火だるまを付与
execute positioned ^ ^ ^5 rotated 0 0 as @e[tag=Enemy,distance=..5] run function effect:enemy_debuff/burn/apply

# 演出
execute positioned ^ ^ ^5 rotated 0 0 run function makeup:skill/act/white_mage/sol_flare/emission2
