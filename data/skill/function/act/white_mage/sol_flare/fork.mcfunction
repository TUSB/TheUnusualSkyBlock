#> skill:act/white_mage/sol_flare/fork
#
# ソルフレア放射 分岐

# チャージ（SolFlareCharge）の値に応じて分岐
execute if score @s SolFlareCharge matches 0..49 run return run function skill:act/white_mage/sol_flare/emission0
execute if score @s SolFlareCharge matches 50..99 run return run function skill:act/white_mage/sol_flare/emission1
execute if score @s SolFlareCharge matches 100.. run function skill:act/white_mage/sol_flare/emission2
