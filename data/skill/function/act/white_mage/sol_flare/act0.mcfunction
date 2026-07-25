#> skill:act/white_mage/sol_flare/act0
#
# ソルフレア分岐
execute unless score @s SolFlareCharge matches 0.. run return run function skill:act/white_mage/sol_flare/charge
execute if score @s SolFlareCharge matches 1.. run function skill:act/white_mage/sol_flare/fork
