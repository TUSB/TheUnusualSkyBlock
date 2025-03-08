#> entity:projectile_hit/hurt

# ヒット処理
execute if score @s ProjectileTime matches 0.. run function entity:projectile_hit/hit

# ヒットトリガーリセット
advancement revoke @s only entity:projectile_damage
