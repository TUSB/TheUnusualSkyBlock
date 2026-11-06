#> skill:act/hunter/kasap_trap/apply
#
# ルカナン適用
#
# @within enemy:damage/update_health

# DamageをKasapRatio/100倍
scoreboard players set _ _ 100
scoreboard players operation @s Damage *= @s KasapRatio
scoreboard players operation @s Damage /= _ _
