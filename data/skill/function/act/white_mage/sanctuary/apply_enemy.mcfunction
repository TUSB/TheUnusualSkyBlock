#> skill:act/white_mage/sanctuary/apply_enemy
#
# サンクチュアリ 敵の耐性低下
tag @s add SanctuaryApplied

# 耐性低下の値を設定
execute if score _ Level matches 1 run scoreboard players set _ Calc 30
execute if score _ Level matches 2 run scoreboard players set _ Calc 50
execute if score _ Level matches 3 run scoreboard players set _ Calc 100
scoreboard players set _ _ 0

# 耐性低下処理 0未満にはならない
scoreboard players operation @s Defense -= _ Calc
scoreboard players operation @s Defense < _ _
scoreboard players operation @s MagicDefense -= _ Calc
scoreboard players operation @s MagicDefense < _ _

# 演出
execute anchored eyes run function makeup:skill/act/white_mage/sanctuary/apply_enemy
