#> skill:act/hunter/wild_flare/apply
#
# ワイルドフレア ダメージ付与
#
# @within function skill:act/hunter/wild_flare/tick

# スキルダメージをロード
execute if score @s Level matches 1 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:1}].Damage
execute if score @s Level matches 2 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:2}].Damage
execute if score @s Level matches 3 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:3}].Damage

# 対象となる敵側でダメージ処理を実行
data modify storage skill: damage.hit set value 0b
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=Enemy] at @s run function skill:act/hunter/wild_flare/apply_enemy
