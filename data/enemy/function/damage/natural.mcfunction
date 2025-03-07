#> enemy:damage/natural
# 外的要因の自然ダメージ

# ダメージをHPへ反映
function enemy:damage/update_health

#HitDamage付与
tag @s add HitDamageTaken

# 物理属性の被弾フラグ
tag @s add ReceivedPhysicalDamage
