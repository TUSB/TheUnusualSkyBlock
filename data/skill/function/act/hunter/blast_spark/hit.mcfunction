#> skill:act/hunter/blast_spark/hit
#
# ブラストスパークヒット

execute at @a[scores={Age=1..},limit=1,sort=nearest] positioned ~ ~-10 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1.50 run function calc:throw_projectile/

# デバフ
function effect:enemy_debuff/electrification/apply
