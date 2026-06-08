#> skill:act/white_mage/sol_flare/charge
#
# ソルフレア チャージ開始
scoreboard players set @s SolFlareCharge 0

execute if score _ Level matches 1 store result score @s SolFlare run data get storage skill: Data.WhiteMage[{Name:"ソルフレア",Level:1}].Damage.physical
execute if score _ Level matches 2 store result score @s SolFlare run data get storage skill: Data.WhiteMage[{Name:"ソルフレア",Level:2}].Damage.physical
execute if score _ Level matches 3 store result score @s SolFlare run data get storage skill: Data.WhiteMage[{Name:"ソルフレア",Level:3}].Damage.physical

# チャージではMPを消費しない
scoreboard players set _ MP 0

# 移動速度を半減させる UUIDはSolFlareを16進数化したもの
attribute @s minecraft:movement_speed modifier add 536f-6c4-66c-617-265 -0.5 add_multiplied_total

# 演出
function makeup:skill/act/white_mage/sol_flare/charge


