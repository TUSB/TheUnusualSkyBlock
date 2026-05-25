#> skill:act/white_mage/sol_flare/tick
#
# ソルフレア tick処理

scoreboard players add @s SolFlareCharge 1
# チャージしすぎたら失敗＋演出
execute if score @s SolFlareCharge matches 200.. run function skill:act/white_mage/sol_flare/fail

# 演出
execute if score @s SolFlareCharge matches 50 run function makeup:skill/act/white_mage/sol_flare/tick1
execute if score @s SolFlareCharge matches 100 run function makeup:skill/act/white_mage/sol_flare/tick2
