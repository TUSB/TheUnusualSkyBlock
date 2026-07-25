#> skill:act/white_mage/sol_flare/tick
#
# ソルフレア tick処理

scoreboard players add @s SolFlareCharge 1
# 晴れていて上にブロックがなければチャージ速度2倍
data remove storage calc: SearchAbove
execute store result storage calc: SearchAbove.Pos int 1 run data get entity @s Pos[1]
execute if predicate main:weather/is_sunny run function calc:geometry/search_above/to_limit
execute if data storage calc: {SearchAbove:{NothingAbove:1b}} run scoreboard players add @s SolFlareCharge 1
# チャージしすぎたら失敗＋演出
execute if score @s SolFlareCharge matches 200.. run function skill:act/white_mage/sol_flare/fail

# 演出
execute if score @s SolFlareCharge matches 50 run function makeup:skill/act/white_mage/sol_flare/tick1
execute if score @s SolFlareCharge matches 100 run function makeup:skill/act/white_mage/sol_flare/tick2
