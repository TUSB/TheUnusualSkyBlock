#> skill:act/hunter/wild_flare/tick_mob
#
# ワイルドフレア ダメージ付与
#
# @within function skill:act/hunter/wild_flare/tick

# スキルダメージロード
    execute if score @s Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:1}].Damage
    execute if score @s Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:2}].Damage
    execute if score @s Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:3}].Damage

# ダメージ計算
    function player:load_equipments
    function skill:damage/add/skill/magic

# 対象となるモブにダメージを入れる
    data modify storage skill: Damage.Hit set value 0b
    execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=Enemy] run function skill:damage/apply/