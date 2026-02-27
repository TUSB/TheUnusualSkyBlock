#> skill:act/hunter/wild_flare/apply_enemy
#
# ワイルドフレア ダメージ・インターバル付与

# ダメージ・デバフを付与
function skill:damage/apply/
function effect:enemy_debuff/burn/apply

# インターバル付与
tag @s add WildFlareInterval
scoreboard players set @s WildFlareInterval 20
