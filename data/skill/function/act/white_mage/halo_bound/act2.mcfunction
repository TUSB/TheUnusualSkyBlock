#> skill:act/white_mage/halo_bound/act2
#
# ヘイローバウンド終了

# 演出
function makeup:skill/act/white_mage/halo_bound/act1

# ダメージ取得
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"ヘイローバウンド",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"ヘイローバウンド",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"ヘイローバウンド",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"ヘイローバウンド",Level:4}].Damage

#ダメージ付与
execute as @e[tag=Enemy,distance=..2] run function skill:damage/apply/

#デバフ付与
execute as @e[tag=Enemy,distance=..2] at @s run function effect:enemy_debuff/fear/apply
