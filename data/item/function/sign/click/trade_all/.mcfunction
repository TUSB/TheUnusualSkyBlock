#> item:sign/click/trade_all/
#
# 取引の印板・改
#
# @private

# スコア初期化
    scoreboard players set _ Calc 0

# 羊毛の個数確認/ループ処理
    execute store result score _ _ run clear @s white_wool 0
    execute if score _ _ matches 32.. run scoreboard players add _ Calc 1
    execute if score _ _ matches 32.. run function item:sign/click/trade_all/loop_wool

# 砂利の個数確認/ループ処理
    execute store result score _ _ run clear @s gravel 0
    execute if score _ _ matches 32.. run scoreboard players add _ Calc 1
    execute if score _ _ matches 32.. run function item:sign/click/trade_all/loop_gravel

# 演出分岐
    execute unless score _ Calc matches 0 run function makeup:item/sign/trade/success
    execute if score _ Calc matches 0 run function makeup:item/sign/trade/fail
