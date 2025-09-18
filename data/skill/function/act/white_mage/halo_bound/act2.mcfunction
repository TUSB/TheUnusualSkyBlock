#> skill:act/white_mage/halo_bound/act2
#
# ヘイローバウンド終了

# ダメージをロード
function skill:damage/load

# ダメージ付与
execute as @e[tag=Enemy,distance=..2] run function skill:damage/apply/

# デバフ付与
execute as @e[tag=Enemy,distance=..2] at @s run function effect:enemy_debuff/fear/apply

# 演出
function makeup:skill/act/white_mage/halo_bound/act2
