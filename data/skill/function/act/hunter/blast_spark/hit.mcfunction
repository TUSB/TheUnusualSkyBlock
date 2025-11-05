#> skill:act/hunter/blast_spark/hit
#
# ブラストスパークヒット

# ダメージをロード
function skill:damage/load

execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0] run execute at @a[scores={Age=1..},limit=1,sort=nearest] positioned ~ ~-10 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1.50 run function calc:throw_projectile/

# デバフ
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0] run function effect:enemy_debuff/electrification/apply

# ダメージ付与
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0] run function skill:damage/apply/
