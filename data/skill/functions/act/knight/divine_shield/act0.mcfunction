
### ディバインシールド発動

# スキルダメージ取得
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"ディバインシールド",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"ディバインシールド",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"ディバインシールド",Level:3}].Damage

# ダメージ計算
function skill:damage/add/skill/magic

# 防いだダメージに応じてダメージ倍率を計算、適用
function skill:act/knight/divine_shield/get_damage
function skill:damage/modify
execute anchored eyes positioned ^ ^ ^5 as @e[distance=..5,tag=Enemy] run function skill:damage/apply/

# 演出
function makeup:skill/act/knight/divine_shield/act
